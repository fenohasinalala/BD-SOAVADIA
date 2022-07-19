-- Liste des voyages pour un trajet détérminée (tout temps confondu) trié par la date du voyage décroissant

Select id_voyage, date_depart, horaire_depart,
 coef_saison * coef_offre * frais_de_base frais_voyage,
 villeD.nom_ville ville_depart, villeA.nom_ville ville_arrivee 
from voyage
left join saison on voyage.id_saison = saison.id_saison 
left join trajet on voyage.id_trajet = trajet.id_trajet 
left join voiture on voyage.id_voiture = voiture.id_voiture
left join offre on offre.id_offre = voiture.id_offre
left join ville villeD on villeD.id_ville = trajet.id_ville_depart
left join ville villeA on villeA.id_ville = trajet.id_ville_arrivee
where trajet.id_trajet = 3
order by date_depart DESC;

/*
id_voyage | date_depart | horaire_depart | frais_voyage | ville_depart | ville_arrivee 
-----------+-------------+----------------+--------------+--------------+---------------
       186 | 2022-07-26  | 18:00:00       |        87000 | Antananarivo | Mahajanga
       181 | 2022-07-26  | 07:00:00       |        58000 | Antananarivo | Mahajanga
       176 | 2022-07-25  | 12:00:00       |        58000 | Antananarivo | Mahajanga
       174 | 2022-07-25  | 18:00:00       |        58000 | Antananarivo | Mahajanga
       160 | 2022-07-24  | 07:00:00       |        87000 | Antananarivo | Mahajanga
       165 | 2022-07-24  | 18:00:00       |        58000 | Antananarivo | Mahajanga
       159 | 2022-07-24  | 18:00:00       |        58000 | Antananarivo | Mahajanga
       147 | 2022-07-23  | 18:00:00       |        58000 | Antananarivo | Mahajanga
       133 | 2022-07-22  | 07:00:00       |        58000 | Antananarivo | Mahajanga
       110 | 2022-07-20  | 12:00:00       |       116000 | Antananarivo | Mahajanga
       118 | 2022-07-20  | 07:00:00       |        87000 | Antananarivo | Mahajanga
       115 | 2022-07-20  | 07:00:00       |        58000 | Antananarivo | Mahajanga
       104 | 2022-07-19  | 12:00:00       |        58000 | Antananarivo | Mahajanga
        99 | 2022-07-19  | 18:00:00       |        58000 | Antananarivo | Mahajanga
        79 | 2022-07-17  | 07:00:00       |        58000 | Antananarivo | Mahajanga
        59 | 2022-07-15  | 12:00:00       |        58000 | Antananarivo | Mahajanga
        57 | 2022-07-15  | 18:00:00       |        58000 | Antananarivo | Mahajanga
        29 | 2022-07-13  | 12:00:00       |        87000 | Antananarivo | Mahajanga
        20 | 2022-07-12  | 12:00:00       |       116000 | Antananarivo | Mahajanga
         3 | 2022-07-11  | 18:00:00       |        58000 | Antananarivo | Mahajanga
         8 | 2022-07-11  | 12:00:00       |        58000 | Antananarivo | Mahajanga
         1 | 2022-07-11  | 07:00:00       |        58000 | Antananarivo | Mahajanga

*/