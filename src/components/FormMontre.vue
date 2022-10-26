<script setup lang="ts">
import type { Montre } from "@/types";
import { ref } from "vue";
import { colors } from "@/types";
import { shadowcolors } from "@/types";
import MontreFace from "./MontreFace.vue";
import { useRouter } from "vue-router";

const router = useRouter();
const props = defineProps(["id", "montre"]);

const montre = ref({});

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
    <div class="bg-black">
        <div class="flex justify-center items-center ml-48 gap-36   ">


            <div class="float-right p-10 border-2 border-white rounded-xl ">

                <FormKit type="form" v-model="montre" @submit="upsertmontre">




                    <p class="text-white absolute font-montserrat">Bracelet</p>
                    <FormKit class="text-white" name="bracelet" label="Bracelet" value="#FFFFFF" type="radio"
                        :options="colors" :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }"
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
                        type="radio" :options="colors"
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
                            <div class="h-9 w-9 rounded-full mb-2 border border-gray-600 peer-checked:border-white peer-checked:border-2 "
                                :style="{ backgroundColor: context.option.value }" />
                            <span class="sr-only">{{ context.option.label }}</span>
                        </template>
                    </FormKit>



                </FormKit>
            </div>
            <div class=" w-full h-full">
                <MontreFace class="w-1/2 ml-24 m-10" v-bind="montre" id="profil" />
            </div>


        </div>
    </div>
</template>

<style>

</style>