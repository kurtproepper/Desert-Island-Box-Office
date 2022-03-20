<script>
import axios from "axios";
export default {
  data: function () {
    return {
      users: [],
      movies: [],
    };
  },
  created: function () {
    this.indexMovies();
  },
  methods: {
    indexMovies: function () {
      axios.get("/users").then((response) => {
        console.log("movies index", response);
        this.users = response.data;
      });
    },
  },
};
</script>

<template>
  <div class="movies-index">
    <h1>All Movies</h1>
    <div v-for="user in users" v-bind:key="user.id">
      <h2>{{ user.name }}</h2>
      <div v-for="movie in user.movies" v-bind:key="movie.id">
        <p>{{ movie.title }}</p>
      </div>
    </div>
  </div>
</template>
