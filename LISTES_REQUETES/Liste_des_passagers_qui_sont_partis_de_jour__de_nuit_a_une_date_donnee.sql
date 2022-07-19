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
