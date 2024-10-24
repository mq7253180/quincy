<template>
  <div id="app">
    <router-view />
  </div>
</template>

<script>
// import '@/utils/cycle'

export default {
  name: 'App',
  created() {
    /* if (localStorage.getItem('vuexStore')) {
      this.$store.replaceState(
        Object.assign(
          {},
          this.$store.state,
          JSON.retrocycle(JSON.parse(localStorage.getItem('vuexStore')))
        )
      )
    }
    window.addEventListener('beforeunload', () => {
      localStorage.setItem('vuexStore', JSON.stringify(JSON.decycle(this.$store.state)))
    }) */
  }
}
</script>
