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
        this.results = response.data.results;
      });
    },
  },
};
// Next need to display the raw data as just a title, then a title and a poster, then a title, poster, and button to add.
// The button will run the create userMovie function for the user
// ask peter if its worth keeping the movie database from here out (or rather the user_movie)
// If database kept as is, button could run the following functions: check if the movie exists in 'movies', if it doesn't, run the createmovie function for said movie
// Else just create user_movie
</script>

<template>
  <div class="user-movies-index">
    <h1>Your Top 10</h1>
    <div v-for="user_movie in user_movies" v-bind:key="user_movie.id">
      <p>{{ user_movie.movie.title }}</p>
    </div>
  </div>
  <div class="movie-search">
    <h1>Search for Movies!</h1>
    <div>
      <label>Search:</label>
      <button @click="movieSearch">Search</button>
      <input type="text" v-model="searchText" />
      <div v-for="result in results" v-bind:key="result.id">
        <p>
          <img v-bind:src="'https://image.tmdb.org/t/p/w500/' + result.poster_path" v-bind:alt="result.title" />
          {{ result.poster_path }}
        </p>
      </div>
    </div>
  </div>
</template>

<img v-bind:src="'/media/avatars/' + joke.avatar" />
