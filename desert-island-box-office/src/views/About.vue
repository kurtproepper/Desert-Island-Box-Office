<template>
  <div id="nav">
    <router-link to="/">Home</router-link>
    |
    <router-link to="/login">Login</router-link>
    |
    <router-link to="/signup">Signup</router-link>
    |
    <router-link to="/logout">Logout</router-link>
    |
    <router-link to="/movies">Movies</router-link>
    |
    <router-link to="/profile">Profile</router-link>
    |
    <router-link to="/search">Search/Add Movies</router-link>
  </div>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Pages</a>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/profile">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/movies">Friends</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/search">Search/Add Movies</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/ranking">Ranking Test</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <router-view />
</template>
