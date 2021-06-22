<template>
<div>
    <h3 v-if="user">Bienvenido, {{user.name}} {{user.last_name}}</h3>
    <h3 v-if="!user">No has iniciado sesión</h3>
</div>
</template>
<script>
import {mapGetters} from 'vuex'

export default {
    name: 'Home',
    computed:{
        ...mapGetters(['user'])
    }
}

 
</script>
