-- Liste des voyages pour un intervale de temps détérminé trié par la date du voyage décroissant

Select id_voyage, date_depart, horaire_depart, frais_de_base, 
 coef_saison * coef_offre * frais_de_base frais_voyage,
 villeD.nom_ville ville_depart, villeA.nom_ville ville_arrivee 
from voyage
left join saison on voyage.id_saison = saison.id_saison 
left join trajet on voyage.id_trajet = trajet.id_trajet 
left join voiture on voyage.id_voiture = voiture.id_voiture
left join offre on offre.id_offre = voiture.id_offre
left join ville villeD on villeD.id_ville = trajet.id_ville_depart
left join ville villeA on villeA.id_ville = trajet.id_ville_arrivee
where EXTRACT(DAY FROM date_depart) BETWEEN EXTRACT(DAY FROM current_date - INTERVAL '7 DAY') AND EXTRACT(DAY FROM current_date)
order by date_depart DESC;

/*
id_voyage | date_depart | horaire_depart | frais_de_base | frais_voyage | ville_depart | ville_arrivee 
-----------+-------------+----------------+---------------+--------------+--------------+---------------
        97 | 2022-07-19  | 07:00:00       |         17000 |        17000 | Antsirabe    | Antananarivo
       108 | 2022-07-19  | 18:00:00       |         17000 |        34000 | Antananarivo | Antsirabe
       107 | 2022-07-19  | 12:00:00       |         58000 |        58000 | Mahajanga    | Antananarivo
       106 | 2022-07-19  | 07:00:00       |         42000 |        63000 | Antananarivo | Fianarantsoa
       105 | 2022-07-19  | 18:00:00       |         36000 |        54000 | Toamasina    | Antananarivo
       104 | 2022-07-19  | 12:00:00       |         58000 |        58000 | Antananarivo | Mahajanga
       103 | 2022-07-19  | 07:00:00       |        115000 |       172500 | Antsiranana  | Antananarivo
       102 | 2022-07-19  | 18:00:00       |         58000 |       116000 | Mahajanga    | Antananarivo
       101 | 2022-07-19  | 12:00:00       |        115000 |       115000 | Antananarivo | Antsiranana
       100 | 2022-07-19  | 07:00:00       |         42000 |        84000 | Fianarantsoa | Antananarivo
        99 | 2022-07-19  | 18:00:00       |         58000 |        58000 | Antananarivo | Mahajanga
        98 | 2022-07-19  | 12:00:00       |         25000 |        37500 | Antsirabe    | Fianarantsoa
        86 | 2022-07-18  | 12:00:00       |         42000 |        42000 | Fianarantsoa | Antananarivo
        96 | 2022-07-18  | 18:00:00       |         42000 |        42000 | Antananarivo | Fianarantsoa
        95 | 2022-07-18  | 12:00:00       |         25000 |        37500 | Fianarantsoa | Antsirabe
        94 | 2022-07-18  | 07:00:00       |         17000 |        17000 | Antananarivo | Antsirabe
        93 | 2022-07-18  | 18:00:00       |         80000 |        80000 | Antsiranana  | Mahajanga
        92 | 2022-07-18  | 12:00:00       |        115000 |       230000 | Antananarivo | Antsiranana
        91 | 2022-07-18  | 07:00:00       |         80000 |       120000 | Mahajanga    | Antsiranana
        90 | 2022-07-18  | 18:00:00       |         80000 |       120000 | Mahajanga    | Antsiranana
        89 | 2022-07-18  | 12:00:00       |        115000 |       115000 | Antananarivo | Antsiranana
        88 | 2022-07-18  | 07:00:00       |         58000 |        58000 | Mahajanga    | Antananarivo
        87 | 2022-07-18  | 18:00:00       |         36000 |        36000 | Antananarivo | Toamasina
        85 | 2022-07-18  | 07:00:00       |        115000 |       115000 | Antsiranana  | Antananarivo
        74 | 2022-07-17  | 12:00:00       |         42000 |        42000 | Antananarivo | Fianarantsoa
        84 | 2022-07-17  | 18:00:00       |         25000 |        50000 | Antsirabe    | Fianarantsoa
        83 | 2022-07-17  | 12:00:00       |        115000 |       115000 | Antananarivo | Antsiranana
        82 | 2022-07-17  | 07:00:00       |         25000 |        25000 | Fianarantsoa | Antsirabe
        81 | 2022-07-17  | 18:00:00       |        115000 |       115000 | Antsiranana  | Antananarivo
        80 | 2022-07-17  | 12:00:00       |         36000 |        54000 | Toamasina    | Antananarivo
        79 | 2022-07-17  | 07:00:00       |         58000 |        58000 | Antananarivo | Mahajanga
        78 | 2022-07-17  | 18:00:00       |         17000 |        25500 | Antananarivo | Antsirabe
        77 | 2022-07-17  | 12:00:00       |         58000 |       116000 | Mahajanga    | Antananarivo
        76 | 2022-07-17  | 07:00:00       |         42000 |        42000 | Antananarivo | Fianarantsoa
        75 | 2022-07-17  | 18:00:00       |         17000 |        17000 | Antananarivo | Antsirabe
*/