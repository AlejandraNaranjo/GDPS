<template>
  <div>
    <v-card
      class="mx-auto"
      style="opacity: 1 !important; background-color: #121d4d"
      max-width="500"
    >
      <form
        class="form-signin"
        style="margin-top: 350px"
        @submit.prevent="handleSubmit"
      >
        <h3>Restablece tu contraseña</h3>
        <div class="form-group">
          <label> Password</label>
          <input
            type="password"
            class="form-control"
            v-model="password"
            placeholder="Contraseña"
          />
        </div>
        <div class="form-group">
          <label>Confirmación de Contraseña</label>
          <input
            type="password"
            class="form-control"
            v-model="password_confirm"
            placeholder=" Confirmación deContraseña"
          />
        </div>
        <br />
        <button class="btn btn-primary btn-block">Restablecer</button>
      </form>
    </v-card>
  </div>
</template>
<script>
import axios from "axios";
export default {
  name: "Reset",
  data() {
    return {
      password: "",
      password_confirm: "",
    };
  },
  methods: {
    async handleSubmit() {
      const response = await axios.post("/api/reset", {
        password: this.password,
        password_confirm: this.password_confirm,
        token: this.$route.params.token,
      });
      console.log(response);
      this.$router.push("/login");
    },
  },
};
</script>
