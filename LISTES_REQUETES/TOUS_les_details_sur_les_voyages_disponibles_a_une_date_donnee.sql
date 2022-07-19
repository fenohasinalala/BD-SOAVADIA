-- Afficher TOUS les détails sur les voyages disponibles (y a encore des places libre) à une date donnée
CREATE TEMPORARY VIEW details_voyage_date_specifique AS
Select voyage.id_voyage, voyage.date_depart, voyage.horaire_depart, 
villeD.nom_ville as ville_depart, villeA.nom_ville as ville_arrivee,
label_offre, 
coef_saison * coef_offre * frais_de_base frais_voyage_avec_coef,
nombre_place
from voyage
inner join trajet on voyage.id_trajet = trajet.id_trajet
inner join ville villeD on trajet.id_ville_depart = villeD.id_ville
inner join ville villeA on trajet.id_ville_arrivee = villeA.id_ville
inner join voiture on voyage.id_voiture = voiture.id_voiture
inner join offre on offre.id_offre = voiture.id_offre
inner join saison on voyage.id_saison = saison.id_saison
where date_depart = '2022-07-16';


CREATE TEMPORARY VIEW nombre_reservation_par_voyage_date_specifique AS
Select reservation.id_voyage, count(reservation.id_voyage)
from reservation
inner join voyage on reservation.id_voyage = voyage.id_voyage
where date_depart = '2022-07-16'
group by reservation.id_voyage;


Select details_voyage_date_specifique.* , details_voyage_date_specifique.nombre_place-nombre_reservation_par_voyage_date_specifique.count place_disponible
from details_voyage_date_specifique
inner join nombre_reservation_par_voyage_date_specifique 
on nombre_reservation_par_voyage_date_specifique.id_voyage = details_voyage_date_specifique.id_voyage
where details_voyage_date_specifique.nombre_place-nombre_reservation_par_voyage_date_specifique.count>0;