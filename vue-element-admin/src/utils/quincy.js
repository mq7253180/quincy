import axiosxxx from 'axios'
import qs from 'qs'

// axiosxxx.defaults.headers['x-requested-with'] = 'XMLHttpRequest';

const service = axiosxxx.create({
  baseURL: process.env.VUE_APP_BASE_API,
  withCredentials: true,
  timeout: 50000,
  headers: {
    'x-requested-with': 'XMLHttpRequest'
  }
})

export function ajax(params, thiz) {
  const success = params.success
  const after = params.after
  delete params.success
  delete params.after
  if (params.data !== null) {
    params.data = qs.stringify(params.data)
  }
  service(params).then(response => {
    if (response.status === 200) {
      switch (response.data.status) {
        case 1: success(response.data.data); break
        case 0:
          thiz.$store.commit('user/remove')
          alert(thiz.$t('message.auth.timeout'))
          thiz.$router.push(`/login?redirect=${thiz.$route.fullPath}`)
          break
        default: alert('弹层(红叉)：' + response.data.msg); break
      }
    } else { // Not 200 except 404、500、502、503 etc.
      alert(response.status + ': ' + response.statusText)
    }
  }).catch(error => {
    console.log(error)
    alert('请检查：\r\n前端：URL、传参；\r\n后端：404、500、502、503\r\n' + JSON.stringify(error))
  }).finally(() => {
    if (after != null) {
      after()
    }
  })
}
