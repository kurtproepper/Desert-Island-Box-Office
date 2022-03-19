<script>
import axios from "axios";
export default {
  data: function () {
    return {
      results: [],
      searchText: "",
    };
  },
  created: function () {},
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
        this.results = response.data.results;
      });
    },
  },
};
</script>

<template>
  <div class="movie-search">
    <h1>Search for Movies!</h1>
    <div>
      <label>Search:</label>
      <button @click="movieSearch">Search</button>
      <input type="text" v-model="searchText" />
      <div v-for="result in results" v-bind:key="result.id">
        <p>
          <img v-bind:src="'https://image.tmdb.org/t/p/w500/' + result.poster_path" v-bind:alt="result.title" />
          {{ result.title }}
          <button @click="userMovieCreate">Add to your Top Ten</button>
        </p>
      </div>
    </div>
  </div>
</template>
