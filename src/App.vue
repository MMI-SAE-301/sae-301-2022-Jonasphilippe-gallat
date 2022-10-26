


<template>
  <div>
    <nav class="z-20">
      <div class="h-full flex flex-row width bg-black justify-between z-20">
        <div class="float-left m-5 ml-10">
          <router-link class="text-black font-black " to="/">
            <p class="font-archivo font-700 text-white text-lg">TikTaK</p>

          </router-link>
        </div>
        <div class="flex flex-row gap-32 m-6 justify-center ">



          <span>
            <router-link class="text-white text-base font-black " to="/">

              <code class="font-archivo font-500">Accueil</code>
            </router-link>
          </span>
          <span class="z-20">
            <router-link class="text-white text-base font-black " to="/Personnalisation">

              <code class="font-archivo font-500">Personnalisation</code>
            </router-link>
          </span>
          <span class="z-20">
            <router-link class="text-white text-base font-black " to="/Listeproduit">

              <code class="font-archivo font-500">Nos produits</code>
            </router-link>
          </span>


        </div>
        <div class="flex flex-row gap-8 justify-center m-4 mr-10">
          <div class="z-20">
            <router-link class="text-black font-black z-20" to="/Login">
              <img class="h-12" src="../src/assets/account.png" alt="account">

            </router-link>

          </div>
          <div class="z-20">
            <router-link class="text-black font-black z-20" to="/Personnalisation">
              <button class="bg-bleu_elec h-12 w-56 rounded-full text-base font-archivo font-button">
                Personnaliser
              </button>

            </router-link>

          </div>


        </div>
      </div>
    </nav>
  </div>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view />
  </Suspense>

  <footer>
    <div class="bg-black w-full h-full flex flex-row justify-between">
      <div class="p-16">
        <router-link class="text-black font-black " to="/">
          <p class="font-archivo font-700 text-white text-lg">TikTaK</p>

        </router-link>
      </div>
      <div class="flex flex-col gap-10 justify-center">
        <div class="flex flex-row gap-40  justify-center">
          <router-link class=" " to="/Listeproduit">

            <p class="font-archivo font-700 text-white">Nos produits</p>
          </router-link>
          <router-link class=" " to="/Login">

            <p class="font-archivo font-700 text-white ml-9">Mon compte</p>
          </router-link>

          <p class="font-archivo font-700 text-white">Nous contacter</p>
        </div>
        <div class="flex flex-row gap-40  justify-center">
          <p class="font-archivo font-700 text-gray-500">Mentions légales</p>
          <p class="font-archivo font-700 text-gray-500 mr-9">Confidentialité</p>
          <p class="font-archivo font-700 text-gray-500">Cookies</p>
        </div>
      </div>
      <div class="flex flex-col p-16 gap-8">
        <instagram />
        <facebook />
        <twitter />
      </div>

    </div>

  </footer>


</template>

<script setup lang="ts">

import instagram from "./components/design/instagram.vue"
import twitter from "./components/design/twitter.vue"
import facebook from "./components/design/facebook.vue"
import { Bars3Icon } from "@heroicons/vue/20/solid";
</script>

<style>
.width {
  width: 1920px;
}
</style>