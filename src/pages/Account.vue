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



<template >

    <div class="bg-black border-2 border-white h-[500px] w-1/2 mx-auto mt-24 ">
        <p class="font-montserrat text-white text-lg mx-auto text-center w-full mt-7 mb-16">Mon compte</p>
        <div class="flex flex-col justify-center">
            <div class="w-full flex flex-col px-56">
                <input type="text" name="prénom" id="prénom" placeholder="Jonathan"
                    class="w-full bg-black  px-3 py-2 font-montserrat text-sm placeholder-gray-600 border-black " />
                <div class="bg-white h-[1px] mt-2 mb-4 w-full" />
            </div>
        </div>

        <div class="flex flex-col justify-center">
            <div class="w-full flex flex-col px-56">
                <input type="text" name="nom" id="nom" placeholder="Doe"
                    class="w-full bg-black  px-3 py-2 font-montserrat text-sm placeholder-gray-600 border-black " />
                <div class="bg-white h-[1px] mt-2 mb-4 w-full" />
            </div>
        </div>
        <div class="flex flex-col justify-center">
            <div class="w-full flex flex-col px-56">
                <input type="email" name="email" id="nom" placeholder="exemple@email.com"
                    class="w-full bg-black  px-3 py-2 font-montserrat text-sm placeholder-gray-600 border-black " />
                <div class="bg-white h-[1px] mt-2 mb-4 w-full" />
            </div>
        </div>
        <div class="mb-6 mt-16 flex justify-center">
            <button @click="logout()" type="button"
                class="text-white  h-12 w-64  font-montserrat px-3   bg-bleu_elec rounded-md">SE
                DECONNECTER</button>

        </div>
    </div>


</template>

