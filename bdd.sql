--
-- code pour la création des tables
--
create table Montre (
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