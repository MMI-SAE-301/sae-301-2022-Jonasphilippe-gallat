<script setup lang="ts">
import Montreface from "../components/MontreProfil.vue";
import type { Montre } from "../types";
const exemples: Montre[] = [{
  semelle: "#00FFFF",
  empeigne: "#FFFFFF",
  pointe: "#FFFFFF",
  oeillet: "#FFFFFF",
  bande: "#FFFFFF",
  languette: "#F0efFF",
  lacet: "#000000",
  trimestre: "#f63f96",
},
</script>


<template>
  <section>
    <h1 class="text-2xl">Exemples de Montres</h1>
    <div class="flex flex-col gap-2">
      <div class="w-64 flex flex-row gap-10">
        <RouterLink v-for="Exemple, index in exemples" :to="{
          name: 'basket-exemple-data',
          params: { data: JSON.stringify(Exemple) },
        }">
          <BasketProfil class="w-64" v-bind="Exemple" />
        </RouterLink>
      </div>
    </div>
  </section>
</template>