-- Afficher les listes des voyages à une horaire précise, à une date précise

Select id_voyage, date_depart, horaire_depart,
 coef_saison * coef_offre * frais_de_base frais_voyage,
 villeD.nom_ville ville_de_depart, villeA.nom_ville ville_d_arrivee 
from voyage
left join saison on voyage.id_saison = saison.id_saison 
left join trajet on voyage.id_trajet = trajet.id_trajet 
left join voiture on voyage.id_voiture = voiture.id_voiture
left join offre on offre.id_offre = voiture.id_offre
left join ville villeD on villeD.id_ville = trajet.id_ville_depart
left join ville villeA on villeA.id_ville = trajet.id_ville_arrivee
where voyage.date_depart = '2022-07-19' 
and voyage.horaire_depart = '07:00:00'
order by date_depart DESC;


/*
id_voyage | date_depart | horaire_depart | frais_voyage | ville_de_depart | ville_d_arrivee 
-----------+-------------+----------------+--------------+-----------------+-----------------
        97 | 2022-07-19  | 07:00:00       |        17000 | Antsirabe       | Antananarivo
       100 | 2022-07-19  | 07:00:00       |        84000 | Fianarantsoa    | Antananarivo
       103 | 2022-07-19  | 07:00:00       |       172500 | Antsiranana     | Antananarivo
       106 | 2022-07-19  | 07:00:00       |        63000 | Antananarivo    | Fianarantsoa
(4 rows)

*/