<script>
import axios from "axios";
export default {
  data: function () {
    return {
      results: [],
      searchText: "",
      newMovieParams: {},
    };
  },
  created: function () {},
  methods: {
    movieSearch: function () {
      axios.get("/movies/search/" + this.searchText).then((response) => {
        console.log("Search completed", response);
        this.results = response.data.results;
      });
    },
  },
  //addMovie: function () {
  //axios.post("/movies").then((response) => {
  //console.log("Saved to movie database", response);
  //this.newMovieParams = // the params of the selected movie (HELP!)
  //})
  //
}; //
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
          <button @click="addMovie">Bring it to the Island!</button>
        </p>
      </div>
    </div>
  </div>
</template>
