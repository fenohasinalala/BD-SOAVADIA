--DESCRIPTION:
/*
Cette requête nous permettra d'Afficher les listes des voyageurs à un horaire et date précise
*/


 select client.nom, prenom, cin, telephone,
 voyage.date_depart, horaire_depart
 from client, voyage
 where date_depart = '2022-07-11' and horaire_depart = '12:00:00';

/* out put:
soavadia
-[ RECORD 1 ]--+--------------------------
nom            | Andrianasolo
prenom         | Alfred
cin            | 102-546-718-710
telephone      | 034-64-689-56
date_depart    | 2022-07-11
horaire_depart | 12:00:00
-[ RECORD 2 ]--+--------------------------
nom            | Andrianasolo
prenom         | Alfred
cin            | 102-546-718-710
telephone      | 034-64-689-56
date_depart    | 2022-07-11
horaire_depart | 12:00:00
-[ RECORD 3 ]--+--------------------------
nom            | Tojo
prenom         | Josiane
cin            | 102-850-045-514
telephone      | 032-37-548-28
date_depart    | 2022-07-11
horaire_depart | 12:00:00
-[ RECORD 4]+--------------------------
nom            | David
prenom         | Juliette
cin            | 102-935-730-907
telephone      | 032-84-368-86
date_depart    | 2022-07-11
horaire_depart | 12:00:00
-[ RECORD 5 ]+--------------------------
nom            | Nelson
prenom         | Stanislas-Maxime
cin            | 102-682-150-124
telephone      | 034-73-945-07
date_depart    | 2022-07-11
-- Suite  --
*/