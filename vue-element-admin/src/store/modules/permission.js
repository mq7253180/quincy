import { asyncRoutes, constantRoutes } from '@/router'
import store from '@/store'

/**
 * Use meta.role to determine if the current user has permission
 * @param roles
 * @param route
 */
function hasPermission(permissions, route) {
  /* if (route.meta && route.meta.roles) {
    return roles.some(role => route.meta.roles.includes(role)) */
  if (route.name) {
    return permissions.includes(route.name)
  } else {
    return true
  }
}

/**
 * Filter asynchronous routing tables by recursion
 * @param routes asyncRoutes
 * @param roles
 */
export function filterAsyncRoutes(routes, roles) {
  const res = []

  routes.forEach(route => {
    const tmp = { ...route }
    if (hasPermission(roles, tmp)) {
      if (tmp.children) {
        tmp.children = filterAsyncRoutes(tmp.children, roles)
      }
      res.push(tmp)
    }
  })

  return res
}

const state = {
  routes: [],
  addRoutes: [],
  permissions: []
}

const mutations = {
  SET_ROUTES: (state, routes) => {
    state.addRoutes = routes
    state.routes = constantRoutes.concat(routes)
  },
  SET_PERMISSIONS: (state, permissions) => {
    state.permissions = permissions
  }
}

const actions = {
  generateRoutes({ commit, state }, roles) {
    return new Promise(resolve => {
      /* let accessedRoutes
      if (roles.includes('admin')) {
        accessedRoutes = asyncRoutes || []
      } else {
        accessedRoutes = filterAsyncRoutes(asyncRoutes, roles)
      } */
      var userJson = localStorage.getItem('quincyUser')
      if (userJson !== null && userJson !== '') {
        store.commit('user/set', JSON.parse(localStorage.getItem('quincyUser')))
      }
      const accessedRoutes = filterAsyncRoutes(asyncRoutes, state.permissions)
      commit('SET_ROUTES', accessedRoutes)
      resolve(accessedRoutes)
    })
  }
}

export default {
  namespaced: true,
  state,
  mutations,
  actions
}
