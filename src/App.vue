<template>
  <weather-show/>
</template>

<script>
import weatherShow from "@/components/weather-show";
export default{
  components: {
    weatherShow
  },

  methods:{

  },
}
</script>

<style lang="scss">
#app {
  padding-top: 60px;
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  height: 100vh;
  background: rgb(51,215,250);
  background: linear-gradient(180deg, rgba(51,215,250,1) 17%, rgba(11,117,247,1) 68%);
}

nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
