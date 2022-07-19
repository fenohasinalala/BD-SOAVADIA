--Liste des clients et leur place dans un voyage

Select nom, prenom, 
numero_place, date_depart, horaire_depart, 
villeD.nom_ville ville_depart, villeA.nom_ville ville_arrivee 
from voyage 
left join reservation on voyage.id_voyage = reservation.id_voyage
left join trajet on trajet.id_trajet = voyage.id_trajet
left join client on client.id_client = reservation.id_client
left join ville villeD on villeD.id_ville = trajet.id_ville_depart
left join ville villeA on villeA.id_ville = trajet.id_ville_arrivee
where reservation.id_voyage = 24;
