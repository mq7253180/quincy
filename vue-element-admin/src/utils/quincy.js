import axiosxxx from 'axios'
import qs from 'qs'
import { removeToken } from '@/utils/auth'
import { resetRouter } from '@/router'

// axiosxxx.defaults.headers['x-requested-with'] = 'XMLHttpRequest';

const service = axiosxxx.create({
  baseURL: process.env.VUE_APP_BASE_API,
  timeout: 50000,
  withCredentials: true,
  headers: {
    'x-requested-with': 'XMLHttpRequest'
  }
})

export function ajax(params, t, after) {
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
          t.$store.commit('user/SET_TOKEN', '')
          t.$store.commit('user/SET_ROLES', [])
          removeToken()
          resetRouter()
          alert('会话超时，请重新登录！')
          t.$router.push(`/login?redirect=${t.$route.fullPath}`)
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
