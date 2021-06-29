<template>
  <div v-if="user" id="app">
    <!--h3 v-if="user">Bienvenido, {{user.name}} {{user.last_name}}</h3-->

    <div class="container">
      <h3 v-if="!user" style="font-size: 50px; margin-top: 550px">
        No has iniciado sesión
      </h3>
    </div>
    <div class="container" style="margin-top: 270px">
      <v-app
        class="inspire"
        style="height: 350px; width:1020px align-items: center"
      >
        <v-container>
          <v-row style="padding-left: -5px">
            <div class="title" style="margin-left: 80px">
              <h1 style="font-size: 70px">
                <v-icon size="100px" color="#1D468B">mdi-cog</v-icon>
                Procesamiento de Orden
              </h1>
              <v-spacer>
                <router-link to="/principal">
                  <v-icon x-large>mdi-home </v-icon>
                </router-link>
              </v-spacer>
            </div>
          </v-row>
          <v-spacer></v-spacer>

          <div class="container" style="margin-top: 50px">
            <v-card class="mx-auto" style="width: 900px" elevation="18">
              <v-simple-table class="justify-center">
                <thead>
                  <tr>
                    <th class="text-center" style="font-size: 30px">Trámite</th>
                    <th class="text-center" style="font-size: 30px">Pagado</th>
                    <th class="text-center" style="font-size: 30px">Fecha</th>
                    <th class="text-center" style="font-size: 30px">Costo</th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="item in documento" :key="item.name">
                    <td style="font-size: 22px">{{ item.name }}</td>
                    <td v-if="item.pagado == 'No'" style="font-size: 22px">
                      <v-icon color="red" x-large>mdi-close-circle</v-icon>
                    </td>
                    <td v-if="item.pagado == 'Si'" style="font-size: 22px">
                      <v-icon color="success" x-large
                        >mdi-checkbox-marked-circle</v-icon
                      >
                    </td>
                    <td style="font-size: 22px">{{ item.fecha }}</td>
                    <td style="font-size: 22px">{{ item.costo }}</td>
                  </tr>
                </tbody>
              </v-simple-table>
            </v-card>
            <v-btn
              icon
              style="
                float: left;
                padding-left: 100px;
                margin-top: 50px;
                padding-bottom: 40px;
              "
            >
              <router-link to="/datos">
                <v-icon x-large> mdi-arrow-left-bold-circle</v-icon>
              </router-link>
            </v-btn>
            <v-btn
              icon
              style="
                float: right;
                padding-right: 100px;
                margin-top: 50px;
                padding-bottom: 40px;
              "
            >
              <router-link to="/principal">
                <v-icon x-large>mdi-arrow-right-bold-circle</v-icon>
              </router-link>
            </v-btn>
          </div>
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
const tiempoTranscurrido = Date.now();
const hoy = new Date(tiempoTranscurrido);
export default {
  data() {
    return {
      headers: [
        {
          text: "Trámite",
          align: "start",
          sortable: false,
          value: "name",
        },
        {
          text: "Pagado",
          align: "start",
          sortable: false,
          value: "pagado",
        },
        {
          text: "Fecha",
          align: "start",
          sortable: false,
          value: "fecha",
        },
        {
          text: "Costo",
          align: "start",
          sortable: false,
          value: "costo",
        },
      ],

      documento: [
        {
          name: "Constancia sin Calificaciones",

          fecha: hoy.toLocaleDateString(),
          pagado: "No",
          costo: "$120",
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
    getColor(pagado) {
      if (pagado == "No") return "red";
      else if (pagado == "Si") return "green";
    },
  },

  name: "Principal",
  computed: {
    ...mapGetters(["user"]),
  },
};
</script>
<style >
</style>


      
