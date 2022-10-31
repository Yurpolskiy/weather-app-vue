<template>
  <div class="current-weather">
    <h1>{{weather.list[0].main.temp}} ℃</h1>
    <div class="other-weather">
        <div class="border w-100"></div>
        <div class="weather">
          <div class="wind">
            <img src="@/assets/weather-images/windy.svg" alt="windy">
            <span >{{weather.list[0].wind.speed}} km/h</span>
            <p>Wind</p>
          </div>
          <div class="humidity">
            <img src="@/assets/weather-images/humidity.svg" alt="humidity">
            <span class="current-humidity">{{weather.list[0].main.humidity}}%</span>
            <p>Humidity</p>
          </div>
          <div class="clouds">
            <i class="bi bi-cloud-download" style="font-size: 35px; color: white;"></i>
            <span class="current-clouds">{{weather.list[0].clouds.all}}%</span>
            <p>Cloudiness</p>
          </div>
        </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "currentWeather",
  data(){
    return{
    }
  },
  props:{
    weather: {
      type: Object,
      }
    },
}
</script>

<style  lang="scss">
  .border {
    width: 60vw;
    margin-top: 80px;
  }
  .weather{
    display: flex;
    justify-content: space-around;
    align-items: center;
    width: 100%;
  }
  .wind, .humidity, .clouds {
    display: flex;
    align-items: center;
    flex-direction: column;
  }
  .wind {
    margin-bottom: 20px;
  }
  .humidity {
    margin-bottom: 15px;
  }
  .clouds {
    margin-bottom: 18px;
  }
  .wind > span, .humidity > span, .clouds > span {
    font-weight: 400;
    margin-top: 5px;
    font-size: 20px;
    color: white;
    letter-spacing: 0.1em;
  }
  .wind > p, .humidity > p, .clouds > p {
      font-weight: 400;
      font-size: 15px;
      letter-spacing: 0.1em;
      color: #d9d9d9;
      font-family: 'Arial',sans-serif;
  }
</style>
<style scoped lang="scss">
h1 {
  font-family: 'Noto sans',sans-serif;
  font-weight: 700;
  margin-top: 40px;
  font-size: 50px;
  color: white;
  letter-spacing: 0.1em;
}
.current-weather {
  width: 90vw;
  max-width: 550px;
  margin: 0 auto;
}
</style>
