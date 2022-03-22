<script>
import axios from "axios";
export default {
  data: function () {
    return {
      movies: [],
      results: [],
      searchText: "",
      common: [],
    };
  },
  created: function () {
    this.showUser();
  },
  methods: {
    showUser: function () {
      axios.get("/user/1").then((response) => {
        console.log("Here are your movies", response);
        this.movies = response.data.movies;
      });
    },
    moviesInCommon: function () {
      axios.get("/users/compare").then((response) => {
        console.log(response);
        this.common = response.data;
      });
    },
  },
};
</script>

<template>
  <div class="user-show">
    <h1>Your Top Movies</h1>
    <button @click="moviesInCommon">See Which Favorites You Have in Common!</button>
    <div v-for="movie in movies" v-bind:key="movie.id">
      <img v-bind:src="movie.poster_path" />
      <p>{{ movie.title }}</p>
    </div>
  </div>
</template>
