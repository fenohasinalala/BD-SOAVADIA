-- Détails d'un voyage donné

-- exemple: le voyage dont l'id est 24
Select coef_saison, coef_offre, frais_de_base, date_depart, horaire_depart,
coef_saison * coef_offre * frais_de_base frais_voyage,
villeD.nom_ville ville_de_depart, villeA.nom_ville ville_d_arrivee 
from voyage
left join saison on voyage.id_saison = saison.id_saison 
left join trajet on voyage.id_trajet = trajet.id_trajet 
left join voiture on voyage.id_voiture = voiture.id_voiture
left join offre on offre.id_offre = voiture.id_offre
left join ville villeD on villeD.id_ville = trajet.id_ville_depart
left join ville villeA on villeA.id_ville = trajet.id_ville_arrivee
where voyage.id_voyage = 24;

/*
soavadia-# \i /var/lib/pgsql/data/projet/soavadia/details_dun_voyage.sql 
 coef_saison | coef_offre | frais_de_base | date_depart | horaire_depart | frais_voyage | ville_de_depart | ville_d_arrivee 
-------------+------------+---------------+-------------+----------------+--------------+-----------------+-----------------
           1 |          1 |         80000 | 2022-07-12  | 18:00:00       |        80000 | Mahajanga       | Antsiranana
(1 row)

*/