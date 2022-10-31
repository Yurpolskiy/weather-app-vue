<template>
  <button class="btn-modal" type="button" @click="showmodal = true">Show forecast</button>
    <div class="modal-backdrop" v-if="showmodal">
      <div class="modal">
        <header class="modal__header">
          <button class="back"
                  type="button"
                  @click="showmodal = false">
            <i class="bi bi-box-arrow-down-left" style="font-size: 25px;"></i></button>
          <slot name="header">
            <p class="info">
              <i class="bi bi-calendar"
                 style="font-size: 20px;
                        margin-right: 15px;"></i>
              5 days
            </p>
          </slot>
        </header>
        <main class="modal__main">
          <div class="container d-flex justify-content-around align-items-center">
            <div class="weather__info order-1 align-self-baseline">
              <h1>Tomorrow</h1>
              <span class="d-temperature">
                {{Math.round(weather.list[8].main.temp)}}
              </span>
              <span class="n-temperature">
                / {{Math.round(weather.list[8].main.temp_min - 1)}}°
              </span>
              <p class="weather__description">{{weather.list[8].weather[0].main}}</p>
            </div>
            <div class="weather__img order-0">
              <weather-img-show :weather="weather" :list-id="listId"/>
            </div>
          </div>
          <next-day-weather-forecast :weather="weather"/>
        </main>
        <div class="modal__footer">
          <weekly-forecast :weather="weather"/>
        </div>
      </div>
    </div>
</template>

<script>
import weatherImgShow from "@/components/imgshow/weatherImgShow";
import nextDayWeatherForecast from "@/components/forecasts/nextDayWeatherForecast";
import weeklyForecast from "@/components/forecasts/weeklyForecast";
export default {
  name: "modalWindow",
  data(){
    return{
      showmodal: false,
      listId: 8,
    }
  },
  components:{
    weatherImgShow,
    nextDayWeatherForecast,
    weeklyForecast,
  },
  methods:{
  },
  props:{
    api_key: String,
    weather: Object,
    query: String,
  }
}
</script>

<style scoped>
.btn-modal {
  width: 200px;
  height: 50px;
  border-radius: 10px;
  border: 0.5px solid white;
  background: linear-gradient(to right, #09C6F9, #045DE9);
  font-weight: 700;
  color: white;
  letter-spacing: 0.01em;
  font-family: "Yu Gothic Medium", sans-serif;
  font-size: 22px;
}
 .modal-backdrop{
   background-color: rgba(0, 0, 0, 0.3);
   position: fixed;
   overflow: auto;
   left: 0;
   top: 0;
 }
 .modal {
   font-family: "Noto sans", sans-serif;
   display: block;
   height: 80%;
   /* From https://css.glass */
   background: rgba(255, 255, 255, 0.36);
   border-radius: 16px;
   box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
   backdrop-filter: blur(16px);
   -webkit-backdrop-filter: blur(16px);
   border: 1px solid rgba(255, 255, 255, 0.3);
   position: absolute;
   left: 50%;
   top: 50%;
   transform: translate(-50%, -50%);
   max-width: 800px;
 }
 .back {
   position: absolute;
   top: 10px;
   left: 25px;
   border: 1px solid white;
   border-radius: 50%;
   background: white;
 }
 .info {
   margin-top: 25px;
   color: white;
   font-size: 20px;
   font-weight: 700;
 }
  .modal__main > .container {
    max-width: 700px;
  }
 h1, .d-temperature, .n-temperature {
   color: white;
   font-weight: 400;
   font-family: 'Noto sans',sans-serif;
   letter-spacing: 0.1em;
   margin-top: 20px;
   font-size: 25px;
 }
 h1 {
   font-size: 30px;
 }
 .d-temperature {
   font-weight: 600;
 }
 .n-temperature {
   font-size: 20px;
 }
 .weather__img {
   width: 160px;
 }
.weather__description {
  font-weight: 400;
  font-size: 30px;
  letter-spacing: 0.1em;
  font-family: 'Arial',sans-serif;
  color: white;
}
.border{
  width: 100%;
  max-width: 640px;
}
.modal__footer {
  height: fit-content;
}
</style>
