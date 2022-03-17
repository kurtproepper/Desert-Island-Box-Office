<script>
import axios from "axios";
export default {
  data: function () {
    return {
      user_movies: [],
      results: [],
      searchText: "",
    };
  },
  created: function () {
    this.indexUserMovies();
  },
  methods: {
    indexUserMovies: function () {
      axios.get("/user_movies").then((response) => {
        console.log("Here are your movies", response);
        this.user_movies = response.data;
      });
    },
    movieSearch: function () {
      axios.get("/movies/search/" + this.searchText).then((response) => {
        console.log("Search completed", response);
        this.results = response.data;
      });
    },
  },
};
</script>

<template>
  <div class="user-movies-index">
    <h1>Your Top 10</h1>
    <p>Your Favorite Movies: {{ this.user_movies }}</p>
  </div>
  <div class="movie-search">
    <h1>Search for Movies!</h1>
    <div>
      <label>Search:</label>
      <form v-on:submit="movieSearch()"></form>
      <button @click="movieSearch">Search</button>
      <input type="text" v-model="searchText" />
      <p>{{ this.results }}</p>
    </div>
  </div>
</template>
