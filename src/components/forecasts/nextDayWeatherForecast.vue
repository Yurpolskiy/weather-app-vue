<template>
  <div class="forecast">
    <div class="border border__options"></div>
    <div class="weather">
      <div class="wind">
        <img src="@/assets/weather-images/windy.svg" alt="windy">
        <span >{{weather.list[8].wind.speed}} km/h</span>
        <p>Wind</p>
      </div>
      <div class="humidity">
        <img src="@/assets/weather-images/humidity.svg" alt="humidity">
        <span class="current-humidity">{{weather.list[8].main.humidity}}%</span>
        <p>Humidity</p>
      </div>
      <div class="clouds">
        <i class="bi bi-cloud-download" style="font-size: 35px; color: white;"></i>
        <span class="current-clouds">{{weather.list[8].clouds.all}}%</span>
        <p>Cloudiness</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "nextDayWeatherForecast",
  props:{
    weather: {type: Object},
  }
}
</script>

<style scoped>
  .border__options {
    max-width: 700px;
    margin: 50px auto 0 auto;
    width: 90%;
  }
  .weather {
    max-width: 800px;
    margin: 0 auto;
  }
</style>
