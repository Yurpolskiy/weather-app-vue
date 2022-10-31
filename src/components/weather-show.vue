<template>
  <div class="show d-flex justify-content-center flex-column align-items-center">
    <input class="input-group-text col-10 col-sm-8 col-lg-4 "
           type="text"
           placeholder="enter the location"
            v-model="query"
            @keypress="fetchWeather"
              >
    <div class="weather-inside" v-if="typeof weather.city != 'undefined'">
      <p  class="location">
        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="black" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
          <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
        </svg>
        {{weather.city.name}}, {{weather.city.country}}</p>
      <weather-img-show :weather="weather" :list-id="listId"/>
      <current-weather :weather="weather"/>
      <modal-window :api_key="api_key" :weather="weather" :query="query"/>
    </div>
  </div>
</template>

<script>
import weatherImgShow from "@/components/imgshow/weatherImgShow";
import currentWeather from "@/components/currentWeather";
import modalWindow from "@/components/modalWindow";
export default {
  name: "weather-show",
  data(){
    return{
      query: '',
      api_key: '21a9d3cad1e00651a9404516e5923f61',
      weather: {},
      listId: 0,
    }
  },
  components: {
    weatherImgShow,
    currentWeather,
    modalWindow,
  },
  methods: {
    fetchWeather(e){
      if(e.key == 'Enter'){
        fetch(`https://api.openweathermap.org/data/2.5/forecast?q=${this.query}&cnt=40&units=metric&appid=${this.api_key}`)
            .then(res => res.json())
            .then(this.setResult);
        this.query = ''
      }
    },
    setResult(results){
      this.weather = results
    },
  },
}

</script>

<style scoped lang="scss">
@font-face {
  font-family: 'Noto sans';
  src: url("@/assets/fonts/NotoSerif.woff2") format("woff2");
}
input {
  font-family: 'Noto sans', sans-serif;
  font-weight: 700;
  border-radius: 30px;
  outline: none;
  text-align: left;
}
.location {
  display: block;
  font-family: 'Noto sans',sans-serif;
  font-weight: 700;
  margin-top: 40px;
  font-size: 30px;
  color: white;
  letter-spacing: 0.1em;
}

</style>
