<template>

<nav class="navbar navbar-expand navbar-light fixed-top">
<div class="container">
    <div class="container-fluid fadeIn" align="center"> 
    <img  style="width:80%;  min-width: 300px; "  src="../assets/bannertec.png"> 

    </div>
  <div class="collapse navbar-collapse" >
    <ul class="navbar-nav ml-auto"  v-if="!user">
      <li class="nav-item" style="font-size:25px">
        <router-link to="/login" class="nav-link"> Iniciar Sesión</router-link>
      </li>
      <!--li class="nav-item">
        <router-link to="/register" class="nav-link"> Sign up</router-link>
      </li-->
    </ul>
  </div>
</div>
</nav>

</template>
<script>
import {mapGetters} from 'vuex' 

export default{
    name: 'Nav',
    methods:{
      handleClick(){
        localStorage.removeItem('token');
        this.$store.dispatch('user', null);
        this.$router.push('/');
      }
    },
    computed:{
      ...mapGetters(['user'])
    }
}

</script>
