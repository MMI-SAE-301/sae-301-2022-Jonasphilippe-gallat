<template>
  <nav>
    <div class="h-full flex flex-row width bg-black justify-between">
      <div class="float-left m-5 ml-10">
        <router-link class="text-black font-black " to="/">
          <p class="font-black text-white text-2xl">TikTaK</p>

        </router-link>
      </div>
      <div class="flex flex-row gap-20 m-6 justify-center ">



        <span>
          <router-link class="text-white font-black " to="/">

            <code class="font-mono">Accueil</code>
          </router-link>
        </span><span>
          <router-link class="text-white font-black " to="/Personnalisation">

            <code class="font-mono">Personnalisation</code>
          </router-link>
        </span> <span>
          <router-link class="text-white font-black " to="/Listeproduit">

            <code class="font-mono">Nos produits</code>
          </router-link>
        </span>


      </div>
      <div class="flex flex-row gap-4 justify-center m-4 mr-10">
        <div>
          <router-link class="text-black font-black " to="/Login">
            <img class="h-9" src="../src/assets/account.png" alt="account">

          </router-link>

        </div>
        <div>
          <router-link class="text-black font-black " to="/Personnalisation">
            <button class="bg-blue-700 h-9 w-48 rounded-full text-lg font-semibold">
              Personnaliser
            </button>

          </router-link>

        </div>


      </div>
    </div>
  </nav>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view />
  </Suspense>
</template>

<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
</script>

<style>
.width {
  width: 1920px;
}
</style>