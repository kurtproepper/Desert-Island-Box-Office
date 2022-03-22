<template>
  <div id="app">
    <!-- HEADER -->
    <header id="header">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">DIBO Pages</a>
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
    </header>

    <!-- ROUTER VIEW -->
    <router-view />

    <!-- FOOTER -->
    <footer id="footer" class="midnight-blue">
      <!-- ... -->
    </footer>
  </div>
</template>

<style>
h1 {
  font-family: Convergence;
  font-size: 23px;
  font-style: normal;
  font-variant: normal;
  font-weight: 700;
  line-height: 23px;
}
h3 {
  font-family: Convergence;
  font-size: 17px;
  font-style: normal;
  font-variant: normal;
  font-weight: 700;
  line-height: 23px;
}
p {
  font-family: Convergence;
  font-size: 14px;
  font-style: normal;
  font-variant: normal;
  font-weight: 700;
  line-height: 23px;
}
blockquote {
  font-family: Convergence;
  font-size: 17px;
  font-style: normal;
  font-variant: normal;
  font-weight: 400;
  line-height: 23px;
}
pre {
  font-family: Convergence;
  font-size: 11px;
  font-style: normal;
  font-variant: normal;
  font-weight: 400;
  line-height: 23px;
}
</style>
