<template>
  <nav>
    <div class="h-full flex flex-row  justify-between">
      <div class="float-left m-4 ml-10">
        <router-link class="text-black font-black " to="/">
          <p class="font-black text-lg">TikTaK</p>

        </router-link>
      </div>
      <div class="flex flex-row gap-8 m-4 justify-center">



        <span>
          <router-link class="text-black font-black " to="/index">

            <code class="font-mono">Accueil</code>
          </router-link>
        </span><span>
          <router-link class="text-black font-black " to="/Personnalisation">

            <code class="font-mono">Personnalisation</code>
          </router-link>
        </span> <span>
          <router-link class="text-black font-black " to="/Listeproduit">

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
    <router-view class="m-2 border-2 p-2" />
  </Suspense>
</template>

<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
</script>
