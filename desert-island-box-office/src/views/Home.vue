<script>
export default {
  data: function () {
    return {
      message: "Desert Island Box Office",
    };
  },
  created: function () {},
  methods: {},
};
</script>

<template>
  <div class="home">
    <a href="/profile" class="button1">Your Desert Island Movies</a>
    <a href="/movies" class="button1">See the other Islands</a>
    <a href="/search" class="button1">Search and Add New Movies</a>
    <a href="/ranking" class="button1">Change your Rankings</a>
  </div>
</template>

<style>
a.button1 {
  display: inline-block;
  padding: 0.5em 3em;
  border: 0.16em solid #3422d3;
  margin: 0 0.3em 0.3em 0;
  box-sizing: border-box;
  text-decoration: none;
  text-transform: uppercase;
  font-family: "Roboto", sans-serif;
  font-weight: 500;
  color: #aeacb8;
  text-align: center;
  transition: all 0.15s;
}
a.button2:hover {
  color: #07096d;
  border-color: #dddddd;
}
a.button2:active {
  color: #3720b8;
  border-color: #bbbbbb;
}
@media all and (max-width: 30em) {
  a.button2 {
    display: block;
    margin: 0.4em auto;
  }
}
</style>
