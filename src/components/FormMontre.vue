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
    <div class="flex justify-between gap-36 bg-beige  ">
        <div class="float-right p-4 bg-white ">

            <FormKit type="form" v-model="montre" @submit="upsertmontre">





                <FormKit name="bracelet" label="Bracelet" value="#FFFFFF" type="radio" :options="colors"
                    :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }" input-class="peer sr-only"
                    options-class="flex gap-1 mb-3 mt-1">
                    <template #label="context">
                        <div class="h-4 w-6  border-2 peer-checked:border-black"
                            :style="{ backgroundColor: context.option.value }" />
                        <span class="sr-only">{{ context.option.label }}</span>
                    </template>
                </FormKit>

                <FormKit name="cadran_exterieur" label="Cadran exterieur" value="#FFFFFF" type="radio" :options="colors"
                    :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }" input-class="peer sr-only"
                    options-class="flex gap-1 mb-3 mt-1">
                    <template #label="context">
                        <div class="h-4 w-6  border-2 peer-checked:border-black"
                            :style="{ backgroundColor: context.option.value }" />
                        <span class="sr-only">{{ context.option.label }}</span>
                    </template>
                </FormKit>

                <FormKit name="cadran_interieur" label="Cadran interieur" value="#FFFFFF" type="radio" :options="colors"
                    :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }" input-class="peer sr-only"
                    options-class="flex gap-1 mb-3 mt-1">
                    <template #label="context">
                        <div class="h-4 w-6  border-2 peer-checked:border-black"
                            :style="{ backgroundColor: context.option.value }" />
                        <span class="sr-only">{{ context.option.label }}</span>
                    </template>
                </FormKit>

                <FormKit name="bouton" label="Boutons" value="#FFFFFF" type="radio" :options="colors"
                    :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }" input-class="peer sr-only"
                    options-class="flex gap-1 mb-3 mt-1">
                    <template #label="context">
                        <div class="h-4 w-6  border-2 peer-checked:border-black"
                            :style="{ backgroundColor: context.option.value }" />
                        <span class="sr-only">{{ context.option.label }}</span>
                    </template>
                </FormKit>

                <FormKit name="fond_boitier" label="Fond d'écran" value="#FFFFFF" type="radio" :options="shadowcolors"
                    :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }" input-class="peer sr-only"
                    options-class="flex gap-1 mb-3 mt-1">
                    <template #label="context">
                        <div class="h-4 w-6  border-2 peer-checked:border-black"
                            :style="{ backgroundColor: context.option.value }" />
                        <span class="sr-only">{{ context.option.label }}</span>
                    </template>
                </FormKit>



            </FormKit>
        </div>
        <div class=" w-full h-full">
            <MontreFace class="w-52" v-bind="montre" id="profil" />
        </div>


    </div>
</template>