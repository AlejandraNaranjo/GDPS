<template>
    <form @submit.prevent="handleSubmit">
         <div v-if="message" class="alert alert-succes" role="alert">
            {{message}}
        </div>
        <Error  v-if="error" :error="error"/>
        <h3> ¿Olvidaste la contraseña? </h3>
        <br>
        <div class="form-group">
            <label>Email</label>
            <input type="email" v-model="email" class="form-control" placeholder="Email"/>
        </div>
        <br>
        <button class="btn btn-primary btn-block">Submit</button>
    </form>
</template>
<script>
import axios from 'axios'
import Error from './Error.vue'

export default {
    name: 'forgot',
     components:{
        Error
    },
    data(){
       return{
        email: '',
        message:'',
        error:''
       } 
    },
    methods:{
         async handleSubmit(){
             try{
              await axios.post('/api/forgot', {
                 email: this.email
             });
             this.message="El correo ha sido enviado";
            this.error='';
             }catch (e){
                 this.error='Error';
                 this.message='';
             }
        }
    }
}
</script>
