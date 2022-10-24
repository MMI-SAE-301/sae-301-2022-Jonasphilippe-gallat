<script setup lang="ts">
import MontreProfil from "../components/MontreProfil.vue";
import type { Montre } from "../types";
const exemples: Montre[] = [{
  bracelet: "#0FFFF0",
  contour_exterieur: "#0000FF",
  contour_interieur: "#FFFF00",
  fond_boitier: "#000000",
  contour_exterieur_2: "#0000FF",
  contour_interieur_2: "#000000",
  fond_boitier_2: "#0000FF",
}];
</script>


<template>
  <section>
    <h1 class="text-2xl">Exemples de Montres</h1>
    <div class="flex flex-col gap-2">
      <div class="w-64 flex flex-row gap-10">
        <RouterLink v-for="Exemple, index in exemples" :to="{
          name: 'montre-exemple-data',
          params: { data: JSON.stringify(Exemple) },
        }">
          <MontreProfil class="w-64" v-bind="Exemple" />
          <MontreProfil />

        </RouterLink>
      </div>
    </div>
  </section>


</template>