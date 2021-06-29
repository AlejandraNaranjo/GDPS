<template>
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
      <div v-if="message" class="alert alert-success" role="alert">
        {{ message }}
      </div>
      <Error v-if="error" :error="error" />
      <br />
      <h4>¿Olvidaste la contraseña?</h4>

      <div class="form-group">
        <label style="font-size: 25px">Email</label>
        <input
          type="email"
          v-model="email"
          class="form-control"
          placeholder="Email"
        />
      </div>
      <br />
      <button class="btn btn-primary btn-block">Restablecer Contraseña</button>
    </form>
  </v-card>
</template>
<script>
import axios from "axios";
import Error from "./Error.vue";

export default {
  name: "forgot",
  components: {
    Error,
  },
  data() {
    return {
      email: "",
      message: "",
      error: "",
    };
  },
  methods: {
    async handleSubmit() {
      try {
        await axios.post("/api/forgot", {
          email: this.email,
        });
        this.message = "El correo ha sido enviado";
        this.error = "";
      } catch (e) {
        this.error = "Error";
        this.message = "";
      }
    },
  },
};
</script>
