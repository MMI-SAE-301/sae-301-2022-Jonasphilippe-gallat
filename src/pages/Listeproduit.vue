<script setup lang="ts">
import MontreFace from "../components/MontreFace.vue";
import type { Montre } from "../types";
const exemples: Montre[] = [{
    bracelet: "#750000",
    cadran_exterieur: "#404041",
    cadran_interieur: "#FF0000",
    fond_boitier: "#000000",
    bouton: "#000000",

},
{
    bracelet: "#31312F",
    cadran_exterieur: "#404041",
    cadran_interieur: "#00D394",
    fond_boitier: "#00473F",
    bouton: "#0FFFF00",

},
{
    bracelet: "#0081B9",
    cadran_exterieur: "#404041",
    cadran_interieur: "#FFFFff",
    fond_boitier: "#000000",
    bouton: "#31312F",

},
];
</script>


<template>
    <section>
        <div class="bg-black flex justify-center flex-col ">
            <h1 class="text-2xl ml-auto mr-auto pt-16 mb-14 font-archivo font-700 text-white">Nos inspirations</h1>

            <div class="w-full justify-center flex flex-row gap-10">
                <RouterLink v-for="Exemple, index in exemples" :to="{
                    name: 'montre-exemple-data',
                    params: { data: JSON.stringify(Exemple) },
                }">
                    <div class=" p-16 flex flex-row gap-24">
                        <MontreFace class="w-64" v-bind="Exemple" />

                    </div>
                </RouterLink>
            </div>
            <div class="w-3/4 h-1 mx-auto mt-9 bg-white"></div>

            <h1 class="text-2xl ml-auto mr-auto pt-16 mb-14 font-archivo font-700 text-white">Mes modèles</h1>

            <div class="w-full justify-center flex flex-row gap-10">
                <RouterLink v-for="Exemple, index in exemples" :to="{
                    name: 'montre-exemple-data',
                    params: { data: JSON.stringify(Exemple) },
                }">
                    <div class=" p-16 flex flex-row gap-24">
                        <MontreFace class="w-64" v-bind="Exemple" />

                    </div>
                </RouterLink>
            </div>


        </div>
    </section>


</template>