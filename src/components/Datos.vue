<template>
  <div v-if="user" id="app">
    <!--h3 v-if="user">Bienvenido, {{user.name}} {{user.last_name}}</h3-->

    <div class="container">
      <h3 v-if="!user" style="font-size: 50px; margin-top: 550px">
        No has iniciado sesión
      </h3>
    </div>
    <div class="container" style="margin-top: 170px">
      <v-app class="inspire">
        <v-container>
          <v-row style="padding-left: -5px">
            <div class="title" style="margin-left: 80px">
              <h1>Documento por solicitar: Constancia sin Calificaciones</h1>
              <v-spacer>
                <router-link to="/principal">
                  <v-icon x-large>mdi-home </v-icon>
                </router-link>
              </v-spacer>
            </div>
            <v-col cols="4">
              <div class="ma-2 pa-1">
                <h2 style="margin-top: 5px; margin-left: 30px; color: black">
                  <v-icon size="100px" color="#1D468B">
                    mdi-checkbox-marked-outline</v-icon
                  >
                  Verificar Datos
                </h2>
              </div>
            </v-col>
            <v-col cols="7">
              <v-alert
                dense
                elevation="8"
                icon="mdi-information"
                prominent
                type="warning"
                style="float: right; margin-top: 35px"
              >
                Nota: En caso de que sus datos sean incorrectos, favor de acudir
                a Servicios Escolares para la corrección de los mismos</v-alert
              >
            </v-col>
          </v-row>
          <v-row style="padding-left: 10px">
            <v-col cols="12">
              <div class="container">
                <p v-if="user.name == 'Zenaida Nataly'">
                  <iframe
                    src="https://drive.google.com/file/d/11SAyZ56thpemgeZCkUwi6Q6ID6hDMquC/preview"
                    width="800"
                    height="790"
                    allow="autoplay"
                  ></iframe>
                </p>
                <p v-else-if="user.name == 'Alejandra Daniela'">
                  <iframe
                    src="https://drive.google.com/file/d/1ZISeVk-salz4YxsQx2mrJbrdvRbFH0Rj/preview"
                    width="800"
                    height="790"
                    allow="autoplay"
                  ></iframe>
                </p>
                <p v-else-if="user.name == 'Jocelyn'">
                  <iframe
                    src="https://drive.google.com/file/d/1OmMGdvMwx4TqcB_2c_-Imk2k5ybpjhF9/preview"
                    width="800"
                    height="790"
                    allow="autoplay"
                  ></iframe>
                </p>
                <p v-else-if="user.name == 'Luis David'">
                  <iframe
                    src="https://drive.google.com/file/d/1Pu6NErrutL_CHWLsPUk3R8jpl0BY7DWU/preview"
                    width="800"
                    height="790"
                    allow="autoplay"
                  ></iframe>
                </p>
                <v-btn
                  icon
                  style="
                    float: left;
                    padding-left: 15px;
                    margin-top: 5px;
                    padding-bottom: 40px;
                  "
                >
                  <router-link to="/solicitar">
                    <v-icon x-large> mdi-arrow-left-bold-circle</v-icon>
                  </router-link>
                </v-btn>
                <v-btn
                  icon
                  style="
                    float: right;
                    padding-right: 15px;
                    margin-top: 5px;
                    padding-bottom: 40px;
                  "
                >
                  <router-link to="/procesamiento">
                    <v-icon x-large>mdi-arrow-right-bold-circle</v-icon>
                  </router-link>
                </v-btn>
              </div>
            </v-col>
          </v-row>
        </v-container>
      </v-app>
    </div>
  </div>
  <div v-else>
    <h3 style="font-size: 50px; margin-top: 550px">No has iniciado sesión</h3>
  </div>
</template>
<script>
import { mapGetters } from "vuex";

export default {
  data() {
    return {
      items: [
        {
          src: "https://www.piedad.tecnm.mx/Slider/NUEVO-INGRESO-2021.jpg",
        },
        {
          src: "https://www.piedad.tecnm.mx/Slider/LICENCIA-BECA-COMISION.jpg",
        },
      ],
    };
  },
  methods: {
    handleClick() {
      localStorage.removeItem("token");
      this.$store.dispatch("user", null);
      this.$router.push("/");
    },
  },
  name: "Principal",
  computed: {
    ...mapGetters(["user"]),
  },
};
</script>
<style >
.body-background {
  margin-top: 150px;
}
.doc {
  width: 100%;
  height: 6000px;
}
</style>


      