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

export function ajax(params, thiz, after) {
  const handle = params.handle
  delete params.handle
  if (params.data != null) {
    params.data = qs.stringify(params.data)
  }
  service(params).then(response => {
    if (response.status === 200) {
      const status = response.data.status
      const data = response.data.data
      switch (status) {
        case 1: handle(data); break
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
    if (after != null) {
      after()
    }
  }).catch(error => {
    console.log(error)
    alert('请检查：\r\n前端：URL、传参；\r\n后端：404、500、502、503\r\n' + JSON.stringify(error))
    if (after != null) {
      after()
    }
  })
}
