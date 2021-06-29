import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../components/Home.vue'
import Login from '../components/Login.vue'
import Register from '../components/Register.vue'
import Forgot from '../components/Forgot.vue'
import Reset from '../components/Reset.vue'
import Principal from '../components/Principal.vue'
import Historial from '../components/Historial.vue'
import Solicitar from '../components/Solicitar.vue'
import Datos from '../components/Datos.vue'
import Procesamiento from '../components/Procesamiento.vue'



Vue.use(VueRouter)


const routes = [
  {
    path: '/',
    component: Home
  },
  {
    path: '/login', component: Login
  },
  { path: '/register', component: Register },
  { path: '/forgot', component: Forgot },
  { path: '/reset/:token', component: Reset },
  { path: '/principal', component: Principal },
  { path: '/historial', component: Historial },
  { path: '/solicitar', component: Solicitar },
  { path: '/datos', component: Datos },
  { path: '/procesamiento', component: Procesamiento },
]

const router = new VueRouter({
  routes,
  mode: 'history'
})

export default router
