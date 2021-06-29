<template>
  <div v-if="user" id="app">
    <!--h3 v-if="user">Bienvenido, {{user.name}} {{user.last_name}}</h3-->
    <div class="container">
      <h3 v-if="!user" style="font-size: 50px; margin-top: 550px">
        No has iniciado sesión
      </h3>
    </div>
    <v-container>
      <v-row style="padding-left: -5px">
        <v-col cols="3">
          <div class="ma-12 pa-12">
            <v-card style="width: 300px">
              <v-navigation-drawer
                permanent
                style="margin-top: 150px"
                dark
                v-bind:width="325"
              >
                <v-list>
                  <v-list-item link>
                    <v-list-item-content>
                      <v-list-item-title class="text-h3">
                        Bienvenido(a) {{ user.name }}
                      </v-list-item-title>
                      <v-list-item-subtitle>{{
                        user.email
                      }}</v-list-item-subtitle>
                    </v-list-item-content>
                  </v-list-item>
                </v-list>

                <v-list nav dense style="height: 555px; text-align: justify">
                  <v-divider></v-divider>
                  <v-list-item link>
                    <v-list-item-icon>
                      <v-icon>mdi-account</v-icon>
                    </v-list-item-icon>
                    <v-list-item-title style="font-size: 19px"
                      >Mi perfil</v-list-item-title
                    >
                  </v-list-item>
                  <v-list-item link>
                    <v-list-item-icon>
                      <v-icon>mdi-clipboard-text</v-icon>
                    </v-list-item-icon>
                    <v-list-item-title style="font-size: 19px"
                      >Historial Academico</v-list-item-title
                    >
                  </v-list-item>
                  <!-- -->

                  <!--- -->
                  <v-list-item link>
                    <v-list-item-icon>
                      <v-icon>mdi-file</v-icon>
                    </v-list-item-icon>
                    <v-list-item-title style="font-size: 19px"
                      >Reticula</v-list-item-title
                    >
                  </v-list-item>
                  <!--- -->
                  <v-list-item link>
                    <v-list-item-icon>
                      <v-icon>mdi-file-export</v-icon>
                    </v-list-item-icon>
                    <v-list-item-title style="font-size: 19px"
                      ><router-link to="/solicitar">
                        Solicitar Documento</router-link
                      ></v-list-item-title
                    >
                  </v-list-item>
                  <!-- -->
                  <!--- -->
                  <v-list-item link>
                    <v-list-item-icon>
                      <v-icon>mdi-table</v-icon>
                    </v-list-item-icon>
                    <v-list-item-title style="font-size: 19px"
                      ><router-link to="/historial"
                        >Documentos Solicitados</router-link
                      ></v-list-item-title
                    >
                  </v-list-item>
                  <!-- -->
                  <!--- -->
                  <v-list-item link>
                    <v-list-item-icon>
                      <v-icon>mdi-calendar</v-icon>
                    </v-list-item-icon>
                    <v-list-item-title style="font-size: 19px"
                      >Calendario Oficial</v-list-item-title
                    >
                  </v-list-item>
                  <!-- -->
                  <v-list-item link>
                    <v-list-item-icon>
                      <v-icon>mdi-search-web</v-icon>
                    </v-list-item-icon>
                    <v-list-item-title
                      class="text-sm-left"
                      style="font-size: 19px"
                    >
                      <a href="https://www.piedad.tecnm.mx/" target="_blank"
                        >Página Oficial del Tec</a
                      ></v-list-item-title
                    >
                  </v-list-item>
                  <v-list-item link>
                    <v-list-item-icon>
                      <v-icon>mdi-exit-to-app</v-icon>
                    </v-list-item-icon>
                    <v-list-item-title style="font-size: 19px">
                      <a
                        href="javascript:void(0)"
                        @click="handleClick"
                        class="nav-link"
                      >
                        Cerrar Sesión</a
                      ></v-list-item-title
                    >
                  </v-list-item>
                </v-list>
              </v-navigation-drawer>
            </v-card>
          </div>
        </v-col>
        <v-col cols="8">
          <v-card style="width: 1000px; margin-top: 150px; height: 505px">
            <v-app>
              <v-carousel height="535" px>
                <v-carousel-item
                  v-for="(item, i) in items"
                  :key="i"
                  :src="item.src"
                ></v-carousel-item>
              </v-carousel>
              <!--
            <img
              src="https://www.piedad.tecnm.mx/Slider/NUEVO-INGRESO-2021.jpg"
              alt=""
             style="width:1000px;height:600px;"
            />-->

              <div></div>
            </v-app>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
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
</style>

<!--  <div id="principal"  class="body-background">
      <div >
        <div class="row">
          <div class="col-2 p-2 border border-dark m-2 bg-dark" style="width: 200px">
            <div>
              <p class="border-bottom">Mi Perfil</p>
              <p class="border-bottom">Historial Academico</p>
              <p class="border-bottom">Reticula</p>
              <p class="border-bottom">Solicitar Documento</p>
              <p class="border-bottom">Documentos Solicitados</p>
              <p class="border-bottom">Calendario Oficial</p>
              <p class="border-bottom">Pagina Oficial del Tec</p>
              <p class="border-bottom">Cerrar Sesion</p>
            </div>
          </div>
          <div class="col-10 justify-content-center row text-center">
            <h1 class="text-white">Bienvenido!</h1>
            <img
              src="https://www.piedad.tecnm.mx/Slider/NUEVO-INGRESO-2021.jpg"
              alt=""
            />
            <div></div>
          </div>
        </div>
      </div>
    </div>-->