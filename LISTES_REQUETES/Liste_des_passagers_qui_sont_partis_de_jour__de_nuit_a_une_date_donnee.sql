-- Liste des passagers qui sont partis de jour / de nuit à une date donnée


Select numero_place, 
nom, prenom, telephone,
date_depart, horaire_depart, 
villeD.nom_ville ville_depart, villeA.nom_ville ville_arrivee 
from reservation 
left join voyage on voyage.id_voyage = reservation.id_voyage
left join trajet on trajet.id_trajet = voyage.id_trajet
left join client on client.id_client = reservation.id_client
left join ville villeD on villeD.id_ville = trajet.id_ville_depart
left join ville villeA on villeA.id_ville = trajet.id_ville_arrivee

where voyage.date_depart = '2022-07-14' 
and voyage.horaire_depart < '12:00:00'
;


/*
numero_place |       nom        |      prenom      |   telephone   | date_depart | horaire_depart | ville_depart | ville_arrivee 
--------------+------------------+------------------+---------------+-------------+----------------+--------------+---------------
            1 | Yadav            | Gino             | 032-16-910-78 | 2022-07-14  | 07:00:00       | Mahajanga    | Antsiranana
            2 | Raz              | Stella           | 034-54-874-87 | 2022-07-14  | 07:00:00       | Mahajanga    | Antsiranana
            3 | Ali              | Marius           | 034-88-772-43 | 2022-07-14  | 07:00:00       | Mahajanga    | Antsiranana
            4 | Ibrahim          | Ludovic          | 033-39-489-08 | 2022-07-14  | 07:00:00       | Mahajanga    | Antsiranana
            5 | Li               | Dominique-Samuel | 033-68-847-38 | 2022-07-14  | 07:00:00       | Mahajanga    | Antsiranana
            6 | Rasoarimalala    | Julien           | 034-76-953-51 | 2022-07-14  | 07:00:00       | Mahajanga    | Antsiranana
            7 | Rakotondrazaka   | Edouard          | 034-45-825-51 | 2022-07-14  | 07:00:00       | Mahajanga    | Antsiranana
            1 | Rama             | Irene            | 032-87-982-29 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
            2 | Marcellin        | Florent          | 033-86-664-18 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
            3 | Andreas          | Eugenie          | 032-35-127-69 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
            4 | Andrianirina     | Nathalie         | 034-98-311-26 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
            5 | Rakotondramanana | Mireille         | 034-48-935-57 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
            6 | Raphael          | Emma             | 034-06-349-50 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
            7 | Sarl             | Bertrand         | 034-13-244-52 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
            8 | Patrick          | Brigitte         | 032-04-004-36 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
            9 | Jonah            | Anthony          | 034-64-943-14 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
           10 | Sambo            | Alexandre-Julia  | 034-08-364-52 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
           11 | Rina             | Jeannette-Nancy  | 034-18-079-85 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
           12 | Chen             | Michelle         | 033-96-225-47 | 2022-07-14  | 07:00:00       | Antsirabe    | Fianarantsoa
            1 | Zo               | Martin           | 034-52-402-81 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
            2 | Rama             | Elie             | 033-64-635-13 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
            3 | Rakotondrazaka   | Aly              | 033-37-040-91 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
            4 | Jacques          | Annick           | 034-07-358-24 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
            5 | Mohamed          | Nicole           | 034-67-267-06 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
            6 | Ismael           | Olga             | 034-09-908-36 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
            7 | Hanitra          | Guy              | 034-41-026-78 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
            8 | Robson           | Maria            | 032-82-803-16 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
            9 | James            | Harry            | 033-14-675-07 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
           10 | Jacques          | Edith            | 032-76-063-90 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
           11 | Solo             | Elie             | 034-40-979-31 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
           12 | Philippe         | Said             | 033-75-805-45 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
           13 | Monja            | Franck           | 033-89-319-69 | 2022-07-14  | 07:00:00       | Toamasina    | Antananarivo
            1 | Dina             | Andre            | 034-80-412-83 | 2022-07-14  | 07:00:00       | Fianarantsoa | Antsirabe
            2 | Abraham          | Aimee            | 034-66-914-09 | 2022-07-14  | 07:00:00       | Fianarantsoa | Antsirabe
            3 | Razafindrakoto   | Angela           | 033-09-087-61 | 2022-07-14  | 07:00:00       | Fianarantsoa | Antsirabe

*/