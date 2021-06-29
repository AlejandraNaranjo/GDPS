<template>
  <div class="container" style="margin-top: 250px">
    <v-card
      class="mx-auto"
      style="opacity: 1 !important; background-color: #121d4d"
      max-width="500"
    >
      <br />
      <form class="form-sigin" @submit.prevent="handleSubmit">
        <Error v-if="error" :error="error" />
        <h3>Registro</h3>
        <div class="form-group">
          <label> Nombre </label>
          <input
            type="text"
            class="form-control"
            v-model="name"
            placeholder="Nombre"
          />
        </div>
        <div class="form-group">
          <label> Apellido </label>
          <input
            type="text"
            class="form-control"
            v-model="last_name"
            placeholder="Apellido"
          />
        </div>
        <div class="form-group">
          <label> Correo Institucional</label>
          <input
            type="email"
            class="form-control"
            v-model="email"
            placeholder="Correo Institucional"
          />
        </div>
        <div class="form-group">
          <label> Contraseña</label>
          <input
            type="password"
            class="form-control"
            v-model="password"
            placeholder="Contraseña"
          />
        </div>
        <div class="form-group">
          <label> Confirmar contraseña</label>
          <input
            type="password"
            class="form-control"
            v-model="password_confirm"
            placeholder="Confirmar Constraseña"
          />
        </div>
        <br />
        <button class="btn btn-primary btn-block">Registro</button>
      </form>
    </v-card>
  </div>
</template>
<script>
import axios from "axios";
import Error from "./Error.vue";
export default {
  name: "Registrer",
  components: {
    Error,
  },
  data() {
    return {
      name: "",
      last_name: "",
      email: "",
      career: "",
      password: "",
      password_confirm: "",
      error: "",
    };
  },
  methods: {
    async handleSubmit() {
      try {
        await axios.post("/api/register", {
          name: this.name,
          last_name: this.last_name,
          email: this.email,
          caree: this.career,
          password: this.password,
          password_confirm: this.password_confirm,
        });

        this.$router.push("/login");
      } catch (e) {
        this.error = "Error";
      }
    },
  },
};
</script>
