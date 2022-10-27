<script setup lang="ts">
import type { Montre } from "@/types";
import { ref } from "vue";
import { colors } from "@/types";
import { shadowcolors } from "@/types";
import { colorscadran } from "@/types";
import { colorsbracelet } from "@/types";

import MontreFace from "./MontreFace.vue";
import { useRouter } from "vue-router";

const router = useRouter();
const props = defineProps(["id", "data"]);

const montre = ref<Montre>(props.data ?? {});

if (props.id) {
    let { data, error } = await supabase
        .from("montre")
        .select("*")
        .eq("id", props.id);
    if (error || !data)
        console.log("n'a pas pu charger la table Montre :", error);
    else montre.value = data[0];
}

async function upsertmontre(dataForm, node) {
    const { data, error } = await supabase.from("montre").upsert(dataForm);
    if (error) node.setErrors([error.message]);
    else {
        node.setErrors([]);
        router.push({ name: "montre-edit-id", params: { id: data[0].id } });
    }
}



</script>
<template>
    <div class="bg-black flex flex-row w-full  ">
        <div class="flex justify-center items-center ml-48 gap-36   ">


            <div class="float-right p-10  border-2 border-white rounded-xl ">

                <FormKit class="" type="form" v-model="montre" @submit="upsertmontre">




                    <p class="text-white absolute font-montserrat">Bracelet</p>
                    <FormKit class="text-white" name="bracelet" label="Bracelet" value="#FFFFFF" type="radio"
                        :options="colorsbracelet" :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }"
                        input-class="peer sr-only" options-class="flex gap-1 mb-3 mt-1">
                        <template class="text-white" #label="context">
                            <div class=" text-white h-9 w-9 rounded-full mb-2 border border-gray-600 peer-checked:border-white peer-checked:border-2"
                                :style="{ backgroundColor: context.option.value }" />

                        </template>
                    </FormKit>
                    <p class="text-white mb-2 absolute font-montserrat">Cadran extérieur</p>
                    <FormKit class="mt-2" name="cadran_exterieur" label="Cadran exterieur" value="#FFFFFF" type="radio"
                        :options="colors" :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }"
                        input-class="peer sr-only" options-class="flex gap-1 mb-3 mt-1">
                        <template class="mt-2" #label="context">
                            <div class="h-9 w-9 rounded-full mb-2 border border-gray-600 peer-checked:border-white peer-checked:border-2"
                                :style="{ backgroundColor: context.option.value }" />
                            <span class="sr-only">{{ context.option.label }}</span>
                        </template>
                    </FormKit>
                    <p class="text-white mb-2 absolute font-montserrat">Cadran_intérieur</p>
                    <FormKit class="text_white" name="cadran_interieur" label="Cadran interieur" value="#FFFFFF"
                        type="radio" :options="colorscadran"
                        :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }"
                        input-class="peer sr-only" options-class="flex gap-1 mb-3 mt-1">
                        <template #label="context">
                            <div class="h-9 w-9 rounded-full mb-2 border border-gray-600 peer-checked:border-white peer-checked:border-2"
                                :style="{ backgroundColor: context.option.value }" />
                            <span class="sr-only">{{ context.option.label }}</span>
                        </template>
                    </FormKit>
                    <p class="text-white mb-2 absolute font-montserrat">Boutons</p>
                    <FormKit class="text-white" name="bouton" label="Boutons" value="#FFFFFF" type="radio"
                        :options="colors" :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }"
                        input-class="peer sr-only" options-class="flex gap-1 mb-3 mt-1">
                        <template class="text-white" #label="context">
                            <div class="h-9 w-9 rounded-full mb-2 border border-gray-600 peer-checked:border-white text-white peer-checked:border-2"
                                :style="{ backgroundColor: context.option.value }" />
                            <span class="sr-only text-white">{{ context.option.label }}</span>
                        </template>
                    </FormKit>
                    <p class="text-white mb-2 absolute font-montserrat">Fond d'écran</p>
                    <FormKit name="fond_boitier" label="Fond d'écran" value="#FFFFFF" type="radio"
                        :options="shadowcolors" :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }"
                        input-class="peer sr-only" options-class="flex gap-1 mb-3 mt-1">
                        <template #label="context">
                            <div class="h-9 w-9 rounded-full mb-6 border border-gray-600 peer-checked:border-white peer-checked:border-2 "
                                :style="{ backgroundColor: context.option.value }" />
                            <span class="sr-only">{{ context.option.label }}</span>
                        </template>
                    </FormKit>
                    <div class="flex flex-row gap-5">
                        <FormKit type="submit"
                            input-class="text-white font-button h-12 w-60 font-montserrat px-3 border-2 border-white bg-black rounded-md ">
                            Enregistrer </FormKit>


                        <button type="button"
                            class="text-black font-button h-12 w-60 font-montserrat px-3  bg-bleu_elec rounded-md">Commander</button>

                    </div>



                </FormKit>
            </div>


        </div>

        <div class="flex justify-center w-5/12 h-full bg-gradient-radial from-blue-900 via-black to-black">
            <MontreFace class="w-1/3 h-1/2 ml-16 m-10 shadow-lg " v-bind="montre" id="profil" />

        </div>
    </div>

</template>

<style>

</style>