--nombre de reservation par trajet

create TEMPORARY VIEW voyage_trajet as
select voyage.id_voyage, 
voyage.id_trajet,
villeD.nom_ville as ville_depart, villeA.nom_ville as ville_arrivee
from voyage
inner join trajet on voyage.id_trajet = trajet.id_trajet
inner join ville villeD on trajet.id_ville_depart = villeD.id_ville
inner join ville villeA on trajet.id_ville_arrivee = villeA.id_ville;

create TEMPORARY VIEW reservation_par_trajet as
select voyage_trajet.*
from reservation
inner join voyage_trajet on voyage_trajet.id_voyage = reservation.id_voyage;

create TEMPORARY VIEW nombre_reservation_par_trajet as
select reservation_par_trajet.id_trajet, count(reservation_par_trajet.id_trajet)
from reservation_par_trajet
group by reservation_par_trajet.id_trajet;

select 
villeD.nom_ville as ville_depart, villeA.nom_ville as ville_arrivee,
nombre_reservation_par_trajet.count nombre_reservation
from nombre_reservation_par_trajet 
inner join trajet on nombre_reservation_par_trajet.id_trajet = trajet.id_trajet
inner join ville villeD on trajet.id_ville_depart = villeD.id_ville
inner join ville villeA on trajet.id_ville_arrivee = villeA.id_ville;

/*

ville_depart | ville_arrivee | nombre_reservation 
--------------+---------------+--------------------
 Antananarivo | Antsirabe     |                 88
 Antananarivo | Toamasina     |                 66
 Antananarivo | Mahajanga     |                103
 Antananarivo | Fianarantsoa  |                 85
 Antananarivo | Antsiranana   |                 52
 Antsirabe    | Antananarivo  |                 28
 Toamasina    | Antananarivo  |                 41
 Mahajanga    | Antananarivo  |                 75
 Fianarantsoa | Antananarivo  |                  6
 Antsiranana  | Antananarivo  |                 69
 Mahajanga    | Antsiranana   |                 92
 Antsiranana  | Mahajanga     |                 93
 Antsirabe    | Fianarantsoa  |                116
 Fianarantsoa | Antsirabe     |                 86
(14 rows)

*/