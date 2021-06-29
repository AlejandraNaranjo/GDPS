<template>
  <div
    v-if="user"
    class="container"
    style="margin-top: 250px; text-align: center"
  >
    <v-row style="padding-left: 0px">
      <v-col cols="12" class="justify-center">
        <div>
          <router-link to="/principal">
            <v-btn
              style="float: right"
              elevation="11"
              x-large
              icon
              class="btn btn-primary"
            >
              <v-icon x-large>mdi-home </v-icon>
            </v-btn>
          </router-link>
        </div>
        <h1 style="color: yellow">Documentos por Solicitar</h1>
        <br />
        <v-card width="700px" class="mx-auto">
          <v-simple-table>
            <thead>
              <tr>
                <th style="font-size: 30px">Trámite</th>
                <th style="font-size: 30px">Costo</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td style="text-align: left; font-size: 25px">
                  <b>
                    <v-icon>mdi-card-account-details</v-icon>Constancia con
                    calificaciones
                  </b>
                </td>

                <td style="font-size: 25px">$ 120.00</td>
              </tr>
              <tr>
                <td style="text-align: left; font-size: 25px">
                  <b
                    ><v-icon>mdi-card-account-details-outline</v-icon>
                    <router-link to="/datos"
                      >Constancia sin calificaciones</router-link
                    >
                  </b>
                </td>

                <td style="font-size: 25px">$ 100.00</td>
              </tr>
              <tr>
                <td style="text-align: left; font-size: 25px">
                  <b><v-icon>mdi-library</v-icon> Boleta </b>
                </td>

                <td style="font-size: 25px">$ 300.00</td>
              </tr>
              <tr>
                <td style="text-align: left; font-size: 25px">
                  <b
                    ><v-icon>mdi-badge-account</v-icon> Credencial
                    Estudiantil</b
                  >
                </td>

                <td style="font-size: 25px">$ 250.00</td>
              </tr>
            </tbody>
          </v-simple-table>
        </v-card>
      </v-col>
    </v-row>
  </div>
  <div v-else>
    <h3 style="font-size: 50px; margin-top: 550px">No has iniciado sesión</h3>
  </div>
</template>
<script>
import { mapGetters } from "vuex";
export default {
  name: "Solicitar",
  data() {
    return {
      page: 1,
      pageCount: 0,
      itemsPerPage: 10,
      headers: [
        {
          text: "Trámite",
          align: "start",
          sortable: false,
          value: "name",
        },
        {
          text: "Costo",
          align: "start",
          sortable: false,
          value: "costo",
        },
      ],
      documents: [
        {
          icon: "mdi-card-account-details",
          name: "CONSTANCIA CON CALIFICACIONES",
          costo: "$ " + 120,
        },
        {
          name: "CONSTANCIA SIN CALIFICACIONES",
          costo: "$ " + 100,
        },
        {
          name: "BOLETA",
          costo: "$ " + 300,
        },
        {
          name: "CREDENCIAL ESTUDIANTIL",
          costo: "$ " + 250,
        },
      ],
    };
  },
  computed: {
    ...mapGetters(["user"]),
  },
};
</script>
