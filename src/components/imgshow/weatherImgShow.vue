<template>
    <div v-if="weather.list[listId].weather[0].main === 'Thunderstorm'">
      <img src="@/assets/weather-images/thunderstorm-showers.svg" alt="thunderstorm">
    </div>
    <div v-else-if="weather.list[listId].weather[0].main === 'Drizzle'">
      <img src="@/assets/weather-images/drizzle.svg" alt="drizzle">
    </div>
    <div v-else-if="weather.list[listId].weather[0].main === 'Rain'">
      <img src="@/assets/weather-images/heavy-showers.svg" alt="rain">
    </div>
    <div v-else-if="weather.list[listId].weather[0].main === 'Snow'">
      <img src="@/assets/weather-images/snow.svg" alt="snow">
    </div>
    <div v-else-if="weather.list[listId].weather[0].main === 'Clear'">
      <img src="@/assets/weather-images/Sun.svg" alt="sun">
    </div>
    <div v-else-if="weather.list[listId].weather[0].id === 800 && weather.list[listId].sys.pod === 'n'">
      <img src="@/assets/weather-images/clear-night.svg" alt="clear-night">
    </div>
    <div v-else-if="weather.list[listId].sys.pod === 'n' && weather.list[listId].weather[0].main === 'Clouds'">
      <img src="@/assets/weather-images/cloudy-night.svg" alt="clouds">
    </div>
    <div v-else-if="weather.list[listId].sys.pod === 'd' && weather.list[listId].weather[0].main === 'Clouds'">
      <img src="@/assets/weather-images/cloudy.svg" alt="clouds">
    </div>
    <div v-else>
      <img src="@/assets/weather-images/fog.svg" alt="fog">
    </div>
</template>

<script>
export default {
  name: "weatherImgShow",
  data(){
    return{
    }
  },
  props: {
    weather:{
      type: Object,
    },
    listId:{
      type: Number
    }
  },
}
</script>

<style scoped>
  img {
    height: 11rem;
  }
</style>
