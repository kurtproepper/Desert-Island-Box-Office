import { createRouter, createWebHistory } from "vue-router";
import Home from "../views/Home.vue";
import Signup from "../views/Signup.vue";
import Login from "../views/Login.vue";
import Logout from "../views/Logout.vue";
import MoviesIndex from "../views/Movies.vue";
import Profile from "../views/Profile.vue";
import Search from "../views/Search.vue";
import Ranking from "../views/Ranking.vue";

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/about",
    name: "About",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ "../views/About.vue"),
  },
  {
    path: "/Signup",
    name: "Signup",
    component: Signup,
  },
  {
    path: "/login",
    name: "login",
    component: Login,
  },
  {
    path: "/logout",
    name: "logout",
    component: Logout,
  },
  { path: "/movies", name: "movies-index", component: MoviesIndex },

  {
    path: "/profile",
    name: "Profile",
    component: Profile,
  },

  {
    path: "/search",
    name: "Search",
    component: Search,
  },
  {
    path: "/ranking",
    name: "Ranking",
    component: Ranking,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
