<script>
import axios from "axios";
export default {
  data: function () {
    return {
      user_movies: [],
      results: [],
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
      axios.get("/movies/search/star").then((response) => {
        console.log("Search for Star completed", response);
        this.results = response.data;
      });
    },
  },
};
</script>

<template>
  <div class="user-movies-index">
    <h1>Your Top 10</h1>
    <div v-for="user_movie in user_movies" v-bind:key="user_movie.id">
      <h2>{{ user_movie.title }}</h2>
      <img v-bind:src="user_movie.poster_path" v-bind:alt="user_movie.title" />
      <p>Rank: {{ user_movie.rank }}</p>
      <p>Title: {{ user_movie.title }}</p>
      <p>Year: {{ user_movie.release_date }}</p>
      <p>Director: {{ user_movie.director }}</p>
      <p>Summary: {{ user_movie.overview }}</p>
    </div>
  </div>
  <div class="movie-search">
    <h1>Search for Movies!</h1>
    <div>
      <label>Search:</label>
      <form v-on:submit.prevent="submit()"></form>
      <button @click="movieSearch">Search</button>
      <input type="text" v-model="results.title" />
    </div>
  </div>
</template>
