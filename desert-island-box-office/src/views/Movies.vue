<script>
import axios from "axios";
export default {
  data: function () {
    return {
      movies: [],
    };
  },
  created: function () {
    this.indexMovies();
  },
  methods: {
    indexMovies: function () {
      axios.get("/movies").then((response) => {
        console.log("movies index", response);
        this.movies = response.data;
      });
    },
  },
};
</script>

<template>
  <div class="movies-index">
    <h1>All Movies</h1>
    <div v-for="movie in movies" v-bind:key="movie.id">
      <h2>{{ movie.title }}</h2>
      <img v-bind:src="movie.poster_path" v-bind:alt="movie.title" />
      <p>Title: {{ movie.title }}</p>
      <p>Year: {{ movie.release_date }}</p>
      <p>Director: {{ movie.director }}</p>
      <p>Summary: {{ movie.overview }}</p>
    </div>
  </div>
</template>
