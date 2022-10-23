<script setup lang="ts">
import type { Montre } from "@/types";
import { ref } from "vue";
import { colors } from "@/types"
import MontreProfil from "./MontreProfil.vue";


const props = defineProps<{
    name?: string;
    label?: string;
}>();

const montre = ref<Montre>(props.data ?? {});

</script>
<template>
    <div class="flex bg-beige  ">
        <div class=" w-full h-full">
            <MontreProfil v-bind="montre" id="profil" />
        </div>

        <div class="float-right p-4 bg-white ">

            <FormKit type="form" v-model="montre" submit-label="Commander votre montre">
                <div>



                    <p>bracelet</p>
                    <FormKit name="braceletbasbg" label="Bracelet bas" value="#FFFFFF" type="radio" :options="colors"
                        :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }"
                        input-class="peer sr-only" options-class="flex gap-1 mb-3 mt-1">
                        <template #label="context">
                            <div class="h-4 w-6  border-2 peer-checked:border-black"
                                :style="{ backgroundColor: context.option.value }" />
                            <span class="sr-only">{{ context.option.label }}</span>
                        </template>
                    </FormKit>

                    <FormKit name="bracelethautbg" label="Bracelet haut" value="#FFFFFF" type="radio" :options="colors"
                        :sections-schema="{ inner: { $el: null }, decorator: { $el: null }, }"
                        input-class="peer sr-only" options-class="flex gap-1 mb-3 mt-1">
                        <template #label="context">
                            <div class="h-4 w-6  border-2 peer-checked:border-black"
                                :style="{ backgroundColor: context.option.value }" />
                            <span class="sr-only">{{ context.option.label }}</span>
                        </template>
                    </FormKit>

            </FormKit>
        </div>
    </div>
</template>