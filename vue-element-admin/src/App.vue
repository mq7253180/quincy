<template>
  <div id="app">
    <router-view />
  </div>
</template>

<script>
export default {
  name: 'App',
  created() {
    if (sessionStorage.getItem('vuexStore')) {
      this.$store.replaceState(
        Object.assign(
          {},
          this.$store.state,
          JSON.parse(sessionStorage.getItem('vuexStore'))
        )
      )
    }
    window.addEventListener('beforeunload', () => {
      sessionStorage.setItem('vuexStore', JSON.stringify(this.$store.state))
    })
  }
}
</script>
