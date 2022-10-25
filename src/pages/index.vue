<script setup lang="ts">
import MontreFace from "../components/MontreFace.vue";
import type { Montre } from "../types";
const exemples: Montre[] = [{
  bracelet: "#0FFFF0",
  cadran_exterieur: "#0000FF",
  cadran_interieur: "#FFFF00",
  fond_boitier: "#000000",
  bouton: "#0FFFF00",

}];
</script>


<template>

  <div class="w-full homeheader">
    <div class="positionabsoluteleft m-32 flex flex-col gap-20 justify-start ">
      <h1 class="text-9xl font-black text-white">Tik TaK</h1>
      <h2 class="w-3/4 text-4xl text-gray-400">Vous propose de créer une montre <span
          class="text-blue-700 font-bold">unique</span> et propre à <span class="text-blue-700 font-bold">vos
          goûts.</span> </h2>

      <router-link class="text-black font-black " to="/Personnalisation">
        <button class="float-left text-xl font-bold text-black bg-blue-700 h-16 w-96 rounded-md">Je compose ma montre
          !</button>
      </router-link>
    </div>

    <div class="positionabsoluteright ">
      <img class="positionabsolute2  w-4/6 z-10" src="../assets/WATCH.png" alt="">
      <img class="float-right w-full mr-44" src="../assets/homedesign.png" alt="design">
    </div>
    <div class="w-full h-full bg-black">

    </div>

  </div>

</template>

<style>
.positionabsoluteright {
  position: absolute;
  left: 50%;

}

.positionabsoluteleft {
  position: absolute;



}

.positionabsolute2 {
  position: absolute;
  right: 45%;
  bottom: 10%;


}

.homeheader {
  height: 850px;
}
</style>