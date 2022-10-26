<script setup lang="ts">
import MontreFace from "../components/MontreFace.vue";
import homedesign from "../components/design/homedesign.vue"
import BatteryIcon from "../components/design/BatteryIcon.vue"
import ListIcon from "../components/design/ListIcon.vue"
import ShieldIcon from "../components/design/ShieldIcon.vue"

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

    <div class="positionhomedesign ">
      <homedesign class="float-right w-11/12 mr-44" />
    </div>
    <div class="w-full h-full bg-black">

    </div>

  </div>

  <div class="flex justify-center align-middle h-28 w-full bg-cyan-900">
    <h3 class="m-10 text-3xl text-white font-bold">PROFITEZ DE 25% DE PROMOTION SUR TOUS LES ARTICLES</h3>
  </div>
  <div class="flex flex-row ">
    <img class="absolute top-60" src="../assets/watch-separate.png" alt="">
    <div class="absolute right-80 mt-64">
      <h2 class="mb-10 text-4xl font-bold">Découvrez nos gammes
        de montres<br> et notre panel de personnalisation
      </h2>
      <p class="mb-10 text-xl">Composez votre montre de A à Z et profitez de <br> tous les avantages de TikTak</p>
      <router-link class="text-white font-black " to="/Personnalisation">
        <button class="float-left text-xl font-bold text-white bg-blue-700 h-16 w-96 rounded-md">Je compose ma montre
          !</button>
      </router-link>
    </div>
  </div>
  <div class=" w-full h-[850px]"></div>

  <div class="flex flex-row items-center gap-16 justify-center mb-32">
    <div class=" w-96 h-px bg-black" />
    <h3 class=" text-4xl font-bold "> Les avantages TikTaK</h3>
    <div class=" w-96 h-px bg-black" />
  </div>
  <div class="flex flex-row justify-center items-center gap-80">

    <ShieldIcon class="mb-6" />
    <ListIcon />

    <BatteryIcon />
  </div>

  <div class="flex flex-row justify-center items-center gap-40">
    <div class="flex flex-col gap-2 items-center">

      <p class="text-xl">Résiste aux intempéries</p>
      <p class="text-xl">Résiste à l’eau </p>
      <p class="text-xl">Résiste à la chaleur</p>
    </div>

    <div class="flex flex-col gap-2 pl-16 pr-12 items-center justify-center">

      <p class="text-xl">Informations physiologiques</p>
      <p class="text-xl">Rythme cardiaque</p>
      <p class="text-xl">Qualité du sommeil</p>
    </div>

    <div class="flex flex-col mb-8 items-center gap-2">

      <p class="text-xl">Autonomie de 96h</p>
      <p class="text-xl">Recharge complète en 6h </p>

    </div>

  </div>
  <div class="mr-auto ml-auto w-5/6 h-px bg-black mt-48 mb-10" />
  <img src="" alt="">
</template>

<style>
.positionabsoluteright {
  position: absolute;
  left: 50%;
  bottom: 5%;

}

.positionhomedesign {
  position: absolute;
  left: 50%;
  top: -10%;
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