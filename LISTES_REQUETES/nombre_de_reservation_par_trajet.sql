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

