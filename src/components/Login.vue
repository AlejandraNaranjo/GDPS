<template>
<div class="container">
<v-card  
 class="mx-auto "
 style="opacity: 1 !important; background-color:#121D4D  "
max-width="500"
>
    <form  class="form-signin" style="margin-top: 350px" @submit.prevent="handleSubmit" >
       <Error  v-if="error" :error="error"/>
       <br>
        <h3> ¡Bienvenido! </h3>
        <div  class="container">
            <label> Correo Institucional</label>
            <input type="email" class="form-control" v-model="email" placeholder="Email"/>
        </div>
         <div class="container">
            <label> Contraseña</label>
            <input type="password" class="form-control" v-model="password" placeholder="Contraseña"/>
        </div>
        <br>
<button class="btn btn-primary btn-block">Iniciar Sesión </button>
<br>
<p class="forgot-password text-right">
    <router-link to="Forgot">¿Olvidaste la contraseña? </router-link>
</p>
    </form>
</v-card>
</div>
</template>
<script>
import axios from 'axios'
import Error from './Error.vue'
    export default{
    name: 'Login',
    components:{
        Error
    },
    data(){
    return{
        email: '',
        password: '',
        error:''
    }
    },
    methods:{
         async handleSubmit(){
             try{
             const response =await axios.post('/api/login',{
                 email: this.email,
                 password: this.password
             });
             
             localStorage.setItem('token', response.data.token);
             this.$store.dispatch('user', response.data.user);
             this.$router.push('/principal');
             
             }catch(e){
                 this.error='Correo/contraseña inválidos'
             }

        }
    }
}
</script>
<style >

</style>
