-- Afficher les détails des reservations qui ne sont pas encore payées 
select reservation.id_reservation, reservation.date_reservation, reservation.numero_place, 
client.nom, client.prenom, 
voyage.date_depart, voyage.horaire_depart,
villeD.nom_ville as ville_depart, villeA.nom_ville as ville_arrivee,
receptionniste.id_receptionniste, 
payement.payement_complet

from reservation

inner join payement on payement.id_reservation=reservation.id_reservation
inner join client on client.id_client= reservation.id_client
inner join  receptionniste on  receptionniste.id_receptionniste=reservation.id_receptionniste
inner join voyage on voyage.id_voyage = reservation.id_voyage
inner join trajet on voyage.id_trajet = trajet.id_trajet
inner join ville villeD on trajet.id_ville_depart = villeD.id_ville
inner join ville villeA on trajet.id_ville_arrivee = villeA.id_ville

where payement.payement_complet = false;
