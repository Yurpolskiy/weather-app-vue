<template>
  <div class="day firstDay">
    <span>{{getDay(1)}}</span>
    <span class="weather__description">
      {{weather.list[weatherDayID].weather[0].main}}
    </span>
  </div>
  <div class="day secondDay">
  <span>{{getDay(2)}}</span>
  <span class="weather__description">
    {{weather.list[weatherDayID*2].weather[0].main}}
  </span>
  </div>
  <div class="day thirdDay">
    <span>{{getDay(3)}}</span>
    <span class="weather__description">
      {{weather.list[weatherDayID*3].weather[0].main}}
    </span>
  </div>
  <div class="day fourthDay">
    <span>{{getDay(4)}}</span>
    <span class="weather__description">
      {{weather.list[weatherDayID*4].weather[0].main}}
    </span>
  </div>
  <div class="day fifthDay">
    <span>{{getDay(5)}}</span>
    <span class="weather__description">
      {{weather.list[weatherDayID*4.5].weather[0].main}}
    </span>
  </div>
</template>

<script>

export default {
  name: "weeklyForecast",
  data() {
    return {
      weatherDayID: 8,
      today: new Date(),
      days: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
    }
  },
  methods:{
    getDay(day) {
        let thisDay =  this.today.getDay()
        console.log(thisDay + day)
        return thisDay + day >= 7 ? this.days[thisDay + day - 7] : this.days[thisDay + day]
    },
  },
    props: {
      weather: {type: Object}
    },
}

</script>

<style scoped lang="scss">
  .day {
    font-family: "ui-monospace",sans-serif;
    max-width: 700px;
    margin: 0 auto;
    text-align: left;
    font-weight: 600;
    letter-spacing: 0.1em;
    padding: 10px 0 0 5px;
    height: 51px;
    width: 95%;
    border: 1px solid black;
    box-sizing: border-box;
    display: flex;
    justify-content: space-around;
    span {
      display: inline-block;
      margin-left: 2%;
      color: white;
      font-family: inherit;
    }
  }
</style>
