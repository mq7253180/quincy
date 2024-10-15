<template>
  <div id="app">
    <router-view />
  </div>
</template>

<script>
export default {
  name: 'App',
  created() {
    if (localStorage.getItem('vuexStore')) {
      this.$store.replaceState(
        Object.assign(
          {},
          this.$store.state,
          JSON.parse(localStorage.getItem('vuexStore'))
        )
      )
    }
    window.addEventListener('beforeunload', () => {
      localStorage.setItem('vuexStore', JSON.stringify(this.$store.state))
    })
  }
}
</script>
