<script setup lang="ts">
import MontreFace from "../components/MontreFace.vue";
import homedesign from "../components/design/homedesign.vue"
import BatteryIcon from "../components/design/BatteryIcon.vue"
import ListIcon from "../components/design/ListIcon.vue"
import ShieldIcon from "../components/design/ShieldIcon.vue"
import Price from "../components/design/Price.vue"

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
    <div class="positionabsoluteleft m-32 flex flex-col gap-4 justify-start ">
      <h1 class="text-3xl font-archivo font-700 text-white">Tik TaK</h1>
      <h2 class="w-3/4 font-montserrat font-400 text-lg text-gray-400">Vous propose de créer une montre <span
          class="text-bleu_elec font-montserrat font-700">unique</span> et propre à <span
          class="text-bleu_elec font-bold">vos
          goûts.</span> </h2>

      <router-link class="pt-10 text-black font-black z-20" to="/Personnalisation">
        <button class=" z-20 float-left text-base font-archivo font-900 text-black bg-bleu_elec h-16 w-96 rounded-md">Je
          compose ma montre
          !</button>
      </router-link>
    </div>

    <div class="positionhomedesign ">
      <homedesign class="float-right w-11/12 mr-44" />
    </div>
    <div class="w-full h-full bg-black">

    </div>

  </div>

  <div class="flex justify-center align-middle h-28 w-full bg-bleu_fonce">
    <h3 class="m-7 font-montserrat text-xl text-white font-bold">PROFITEZ DE 25% DE PROMOTION SUR TOUS LES ARTICLES
    </h3>
  </div>
  <div class="flex flex-row ">
    <img class="absolute top-60" src="../assets/watch-separate.png" alt="">
    <div class="absolute right-80 mt-64">
      <h2 class="mb-10 text-lg font-montserrat font-900">Découvrez nos gammes
        de montres<br> et notre panel de personnalisation
      </h2>
      <p class="mb-10 font-montserrat font-500 text-base">Composez votre montre de A à Z et profitez de <br> tous les
        avantages
        de TikTak</p>
      <router-link class="text-white font-black " to="/Personnalisation">
        <button class="float-left font-archivo text-base font-bold text-white bg-bleu_elec h-16 w-96 rounded-md">Je
          compose ma montre
          !</button>
      </router-link>
    </div>
  </div>
  <div class=" w-full h-[850px]"></div>

  <div class="flex flex-row items-center gap-16 justify-center mb-32">
    <div class=" w-96 h-px bg-black" />
    <h3 class=" text-xl font-montserrat font-bold "> Les avantages TikTaK</h3>
    <div class=" w-96 h-px bg-black" />
  </div>
  <div class="flex flex-row justify-center items-center gap-80">

    <ShieldIcon class="mb-6" />
    <ListIcon />

    <BatteryIcon />
  </div>

  <div class="flex flex-row justify-center items-center gap-40">
    <div class="flex flex-col gap-2 items-center">

      <p class="text-base font-600">Résiste aux intempéries</p>
      <p class="text-base font-600">Résiste à l’eau </p>
      <p class="text-base font-600">Résiste à la chaleur</p>
    </div>

    <div class="flex flex-col gap-2 pl-16 pr-12 items-center justify-center">

      <p class="text-base font-600">Informations physiologiques</p>
      <p class="text-base font-600">Rythme cardiaque</p>
      <p class="text-base font-600">Qualité du sommeil</p>
    </div>

    <div class="flex flex-col mb-8 items-center gap-2">

      <p class="text-base font-600">Autonomie de 96h</p>
      <p class="text-base font-600">Recharge complète en 6h </p>

    </div>

  </div>
  <div class="mr-auto ml-auto w-5/6 h-px bg-black mt-48 mb-20" />

  <div class="flex flex-row w-5/6 mr-auto ml-auto mb-20">
    <img src="../assets/home_illustration_l.png" alt="photo composant electronique">
    <div class="flex flex-col ml-20 items justify-end">
      <p class="font-montserrat font-500 text-base mb-16">Profitez d’une technologie moderne mise à votre service pour
        un maximum de confort et
        d’aisance
      </p>
      <router-link class="text-white font-black " to="/Personnalisation">
        <button class="float-left font-archivo font-900 text-white bg-bleu_elec h-16 w-64 rounded-md">En savoir plus
          !</button>
      </router-link>
    </div>
  </div>
  <div class="flex flex-row w-5/6 mr-auto ml-auto mb-20">
    <div class="flex flex-col mr-20 items-end justify-end">
      <p class="font-montserrat font-500 text-base mb-16">TikTak vous propose ses produits issus de la collection la
        plus récente a prix reduit.
        Profitez dès maintenant des promotions!
      </p>
      <router-link class="text-white font-black " to="/Personnalisation">
        <Price />
      </router-link>
    </div>
    <img src="../assets/home_illustration_r.png" alt="photo composant electronique">

  </div>
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