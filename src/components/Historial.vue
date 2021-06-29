<template>
  <div>
    <v-app id="inspire">
      <router-link exact to="/principal">
        <v-icon class="icon" x-large>mdi-home</v-icon>
      </router-link>
      <div class="title">
        <h1>Historial de documentos solicitados</h1>
      </div>
      <v-data-table
        :headers="headers"
        :items="documentos"
        :server-items-length="documentos.length"
        hide-action
        footer-props.items-per-page-options="5"
        item-key="folio"
        class="tabla"
      >
        <template slot="items" slot-scope="props">
          <tr @click="props.expanded = !props.expanded">
            <td>{{ props.item.folio }}</td>
            <td>{{ props.item.tramite }}</td>
            <td>{{ props.item.estado }}</td>
            <td>{{ props.item.fecha }}</td>
            <td>${{ props.item.costo }}</td>
          </tr>
        </template>
      </v-data-table>
      <!-- Aqui va la ruta a solicitar nuevo tramite -->
      <!--                         👇 -->
      <router-link exact to="/solicitar">
        <v-btn color="primary" elevation="3" large class="btn">
          Solicitar nuevo trámite
        </v-btn>
      </router-link>
    </v-app>
  </div>
</template>

<script>
export default {
  data() {
    return {
      headers: [
        { text: "Folio", value: "folio" },
        { text: "Tramite", value: "tramite" },
        { text: "Estado", value: "estado" },
        { text: "Fecha", value: "fecha" },
        { text: "Costo", value: "costo" },
      ],
      documentos: [
        {
          folio: "01",
          tramite: "Constancia con calificaciones",
          estado: "Pagado",
          fecha: `01/07/2021`,
          costo: 120,
        },
        {
          folio: "02",
          tramite: "Constancia",
          estado: "Pagado",
          fecha: `03/07/2021`,
          costo: 100,
        },
      ],
    };
  },
};
</script>

<style>
#inspire {
  color: #000;
  margin-top: 180px;
}
h1,
span {
  color: black;
}
.title {
  display: flex;
  justify-content: center;
  width: 100%;
}

.icon {
  float: right;
  margin-right: 100px;
}

.btn {
  max-width: 400px;
}

.tabla {
  margin: 0 auto;
  width: 80%;
}
</style>