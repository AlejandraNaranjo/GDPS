<template>
  <div>
    <h3 v-if="user" style="margin-top: 450px">
      Bienvenido, {{ user.name }} {{ user.last_name }}
    </h3>
    <v-btn icon class="primary">
      <router-link exact to="/principal">
        <v-icon class="icon" x-large>mdi-home</v-icon>
      </router-link>
    </v-btn>
    <v-btn icon class="primary">
      <a href="javascript:void(0)" @click="handleClick" class="nav-link">
        <v-icon class="icon" x-large>mdi-exit-to-app</v-icon>
      </a>
    </v-btn>
    <h3 v-if="!user" style="font-size: 50px; margin-top: 450px">
      No has iniciado sesión
    </h3>
  </div>
</template>
<script>
import { mapGetters } from "vuex";

export default {
  name: "Home",
  computed: {
    ...mapGetters(["user"]),
  },
  methods: {
    handleClick() {
      localStorage.removeItem("token");
      this.$store.dispatch("user", null);
      this.$router.push("/principal");
    },
  },
};
</script>
