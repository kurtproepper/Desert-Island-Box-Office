<script>
import axios from "axios";
export default {
  data: function () {
    return {
      movies: [],
      results: [],
      searchText: "",
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
    movieSearch: function () {
      axios.get("/movies/search/" + this.searchText).then((response) => {
        console.log("Search completed", response);
        this.results = response.data.results;
      });
    },
  },
};
</script>

<template>
  <div class="user-show">
    <h1>Your Top 10</h1>
    <div v-for="movie in movies" v-bind:key="movie.id">
      <img v-bind:src="movie.poster_path" />
      <p>{{ movie.title }}</p>
    </div>
  </div>
</template>
