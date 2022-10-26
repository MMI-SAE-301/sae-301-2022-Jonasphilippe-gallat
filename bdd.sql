--
-- code pour la création des tables
--
create table montre (
id uuid not null default
uuid_generate_v4() ,
ecran text,
bouton text,
cadran_interieur text,
cadran_exterieur text,
bracelet text,
Commander boolean not null default
false,
utilisateur uuid references auth.users
not null default uid(),
primary key (id) ) ;


--
-- code pour la création des vues
--




--
-- code pour la création des policies
--

BEGIN;
  ALTER POLICY "Enable insert for authenticated users only" ON "public"."montre" WITH CHECK (true);
COMMIT;

BEGIN;
  ALTER POLICY "Enable read access for all users" ON "public"."montre" USING (true);
COMMIT;

BEGIN;
  ALTER POLICY "Enable update for users based on email" ON "public"."montre" WITH CHECK ((uid() IN ( SELECT montre_1.utilisateur AS id_user FROM montre montre_1)));
COMMIT;