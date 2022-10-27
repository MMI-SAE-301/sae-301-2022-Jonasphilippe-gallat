<script setup lang="ts">
import { ref } from 'vue'
import MontreFace from "../components/MontreFace.vue";
import type { Montre } from "../types";

const listeMontre = ref()

async function Montreuser() {
    const { error, data } = await supabase
        .from('montre')
        .select('*')
        .eq('utilisateur', supabase.auth.user().id)
    listeMontre.value = data
}

Montreuser()

const montre = defineProps(["id", "Montre"]);

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

            <div class="w-full justify-center flex flex-row gap-44">
                <RouterLink v-for="Exemple in exemples" :key="Exemple.id" :to="{
                    name: 'montre-exemple-data',
                    params: { data: JSON.stringify(Exemple) },
                }">
                    <MontreFace class="w-64" v-bind="Exemple" />
                </RouterLink>
            </div>


            <div class="w-3/4 h-1 mx-auto mt-28 bg-white"></div>

            <h1 class="text-2xl ml-auto mr-auto pt-16 mb-14 font-archivo font-700 text-white">Mes modèles</h1>
            <div class="w-full flex justify-center">


                <div class=" w-7/12 pb-20 m- grid grid-cols-3 pt-16 gap-44
        ">
                    <div v-for="Liste_Montre in listeMontre" :key="Liste_Montre.id"
                        class="grid grid-cols-3 justify-center">
                        <MontreFace class="w-64" v-bind="Liste_Montre" />
                    </div>
                </div>
            </div>
        </div>
    </section>


</template>