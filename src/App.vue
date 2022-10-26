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
    <div class="bg-black w-full h-full">
      <div></div>

    </div>

  </footer>


</template>

<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
</script>

<style>
.width {
  width: 1920px;
}
</style>