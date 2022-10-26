
<script setup lang="ts">
import FormMontre from "../components/FormMontre.vue";
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
        <div class="bg-black h-full">
            <div class="flex flex-row gap-2">
                <div class="w-full">
                    <h1 class="text-2xl ml-48 mt-14 mb-14 font-archivo font-700 text-white">Espace de composition</h1>

                    <FormMontre />
                </div>
            </div>
        </div>
    </section>
    <div class="bg-black h-32"></div>
    <div class="bg-white flex justify-center flex-col ">
        <h1 class="text-2xl w-[800px] text-center ml-auto mr-auto pt-16 mb-14 font-archivo font-700 text-black">Vous
            avez
            besoin
            d’inspirations ? Découvrez nos exemples déja crées pour vous !</h1>

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
        <router-link class="text-white font-black mx-auto mt-5 mb-20" to="/Listeproduit">
            <button
                class="float-left font-archivo text-base mx-auto font-bold text-white bg-bleu_elec h-16 w-96 rounded-md">Découvrir
                nos produits

                !</button>
        </router-link>
    </div>


</template>