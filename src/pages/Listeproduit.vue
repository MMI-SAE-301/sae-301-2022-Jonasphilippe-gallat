<script setup lang="ts">
import MontreFace from "../components/MontreFace.vue";
import type { Montre } from "../types";
const exemples: Montre[] = [{
    bracelet: "#0FFFF0",
    cadran_exterieur: "#0000FF",
    cadran_interieur: "#FFFF00",
    fond_boitier: "#000000",
    bouton: "#0FFFF00",

},
{
    bracelet: "#0FFFF0",
    cadran_exterieur: "#0000FF",
    cadran_interieur: "#FFFF00",
    fond_boitier: "#00473F",
    bouton: "#0FFFF00",

},
{
    bracelet: "#0FFFF0",
    cadran_exterieur: "#0000FF",
    cadran_interieur: "#FFFF00",
    fond_boitier: "#000341",
    bouton: "#0FFFF00",

},
];
</script>


<template>
    <section>
        <div>
            <h1 class="text-2xl">Nos modèles</h1>
            <div class="flex flex-row gap-2">
                <div class="w-64 flex flex-row gap-10">
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
        </div>
    </section>


</template>