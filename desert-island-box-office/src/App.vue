<template>
  <div id="app">
    <!-- HEADER -->
    <header id="header" class="fixed-top d-flex align-items-center">
      <div class="container d-flex align-items-center">
        <h1 class="logo me-auto"><a href="/">Desert Island Box Office</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar">
          <ul>
            <li><a href="/" class="active">Home</a></li>
            <li><a href="/profile">Your Island</a></li>
            <li><a href="/movies">The Other Islands</a></li>
            <li><a href="/search">Search/Add New Movies</a></li>
            <li><a href="/ranking">Change Your Rankings!</a></li>
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- .navbar -->
      </div>
    </header>

    <main id="main">
      <!-- ======= Breadcrumbs ======= -->
      <section id="breadcrumbs" class="breadcrumbs">
        <div class="container">
          <div class="d-flex justify-content-between align-items-center">
            <h2></h2>
            <ol>
              <li><a href="/">Home</a></li>
              <li><a href="/login">Login</a></li>
            </ol>
          </div>
        </div>
      </section>
      <!-- End Breadcrumbs -->
      <!-- ROUTER VIEW -->
      <router-view />
    </main>

    <!-- FOOTER -->
    <footer id="footer">
      <div class="container">
        <div class="copyright">
          &copy; Copyright
          <strong><span>Sailor</span></strong>
          . All Rights Reserved
        </div>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/sailor-free-bootstrap-theme/ -->
          Designed by
          <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
    </footer>
  </div>
</template>

<style>
#main {
  min-height: 100vh;
}
</style>
