<script setup lang="ts">
import MontreProfil from "../components/MontreProfil.vue";
import type { Montre } from "../types";
const exemples: Montre[] = [{
  bracelet_milieu: "#000000",
  bracelet_haut: "#000000",
  bracelet_bas: "#000000",
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
        </RouterLink>
      </div>
    </div>
  </section>
</template>