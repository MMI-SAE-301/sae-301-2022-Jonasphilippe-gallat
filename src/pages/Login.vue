<script setup>
import { ref } from 'vue'
import { createClient } from '@supabase/supabase-js'
import { SupabaseAuthClient } from '@supabase/supabase-js/dist/module/lib/SupabaseAuthClient'
defineProps({
    msg: String
})
const count = ref(0)
supabase.auth.onAuthStateChange((event, session) => {
    if (session == null) {
        document.getElementById('status').innerHTML = 'You are not logged !!!';
    } else {

        document.getElementById('status').innerHTML = 'Vous êtes connecté avec le compte: ' + session.user.email;
    }
})
</script>

<template >
    <div class="bg-black h-[1000px]  ">
        <div class="">
            <div>

            </div>
            <div class="flex justify-center  ">
                <div class=" mt-24 p-3 border-neutral-50 border-2 shadow-2xl shadow-blue-700">

                    <div class="text-center m-6">
                        <h1 class="text-3xl mb-2 font-semibold text-white">S'INSCRIRE</h1>
                        <p class="font-thin text-sm text-white">Créer votre compte, afin de pouvoir
                            réaliser
                            toutes vos
                            envies en personnalisant nos montre TikTak.</p>
                    </div>

                    <div class=" m-6">
                        <form class="mb-4">
                            <div class="mb-6">
                                <label for="email" class="block mb-2 text-sm text-gray-400 ">
                                    Address mail</label>
                                <input type="email" name="email" id="email" placeholder="xxx@xxx.xxx"
                                    class="w-full px-3 py-2 placeholder-gray-600 border border-gray-300 rounded-md " />
                            </div>
                            <div class="mb-6">
                                <button type="button" class="text-white w-full px-3 py-4 text-noirfond bg-blanctext ">SE
                                    CONNECTER</button>
                            </div>

                        </form>

                        <div class="flex flex-row justify-center gap-6 mb-20">
                            <span class=" text-white absolute mt-8  bg-noirfond px-4 pb-6 text-blanctext">ou
                                connectez-vous
                                avec</span>
                            <div class="w-full bg-gray-200 mt-3 h-px"></div>
                        </div>

                        <div class="flex flex-row gap-2">
                            <button @click="loginFacebook()" class=" bg-blanctext text-noirfond  w-full p-2 flex flex-row justify-center gap-2 items-center
                        rounded-sm hover:bg-beige duration-100 ease-in-out">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="30px" height="30px">
                                    <path fill="#1A1B20" d="M24 5A19 19 0 1 0 24 43A19 19 0 1 0 24 5Z" />
                                    <path fill="#fff"
                                        d="M26.572,29.036h4.917l0.772-4.995h-5.69v-2.73c0-2.075,0.678-3.915,2.619-3.915h3.119v-4.359c-0.548-0.074-1.707-0.236-3.897-0.236c-4.573,0-7.254,2.415-7.254,7.917v3.323h-4.701v4.995h4.701v13.729C22.089,42.905,23.032,43,24,43c0.875,0,1.729-0.08,2.572-0.194V29.036z" />
                                </svg>
                                <p class="text-white">Facebook</p>
                            </button>
                            <button @click="loginGoogle()"
                                class="bg-blanctext text-noirfond  w-full p-2 flex flex-row justify-center gap-2 items-center rounded-sm hover:bg-beige duration-100 ease-in-out">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                    class="w-5" viewBox="0 0 48 48">
                                    <defs>
                                        <path id="a"
                                            d="M44.5 20H24v8.5h11.8C34.7 33.9 30.1 37 24 37c-7.2 0-13-5.8-13-13s5.8-13 13-13c3.1 0 5.9 1.1 8.1 2.9l6.4-6.4C34.6 4.1 29.6 2 24 2 11.8 2 2 11.8 2 24s9.8 22 22 22c11 0 21-8 21-22 0-1.3-.2-2.7-.5-4z" />
                                    </defs>
                                    <clipPath id="b">
                                        <use xlink:href="#a" overflow="visible" />
                                    </clipPath>
                                    <path clip-path="url(#b)" fill="#ffffff" d="M0 37V11l17 13z" />
                                    <path clip-path="url(#b)" fill="#ffffff" d="M0 11l17 13 7-6.1L48 14V0H0z" />
                                    <path clip-path="url(#b)" fill="#ffffff" d="M0 37l30-23 7.9 1L48 0v48H0z" />
                                    <path clip-path="url(#b)" fill="#ffffff" d="M48 48L17 24l-4-3 35-10z" />
                                </svg>
                                <p class="text-white">Google</p>
                            </button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</template>


<script>
const SUPABASE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9ybnlxYXNsZXBndW9jZW11dndlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjY2OTYwNTAsImV4cCI6MTk4MjI3MjA1MH0.cqYWu4dI6L6KV_i2ojRb-tH5qweqJQcPNoVPHd9tFyM'
const SUPABASE_URL = "https://ornyqaslepguocemuvwe.supabase.co"
const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);
export default {
    methods: {
        async logout() {
            try {
                const { user, session, error } = await supabase.auth.signOut();
                if (error) throw error;
                document.getElementById('status').innerHTML = 'You are disconnected !'
            } catch (error) {
                alert(error.error_description || error.message);
            }
        },

        async loginGoogle() {
            try {
                const { user, session, error } = await supabase.auth.signIn({
                    provider: 'google',
                });
                if (error) throw error;
            } catch (error) {
                alert(error.error_description || error.message);
            }
        },

        async loginFacebook() {
            try {
                const { user, session, error } = await supabase.auth.signIn({
                    provider: 'facebook'
                });
                if (error) throw error;
            } catch (error) {
                alert(error.error_description || error.message);
            }
        },

        async logoutfb() {
            try {
                const { error } = await supabase.auth.signOut()
            } catch (error) {
                alert(error.error_description || error.message);
            }
        },


    }
}  
</script>

<style>
body {
    background-color: var(--beigebgbg)
}

.connectway {
    top: 51%;
}
</style>