--tous les voitures qui ont fait à un voyage à une date déterminée.

Select voyage.id_voiture, immatriculation, horaire_depart, 
villeD.nom_ville ville_de_depart, villeA.nom_ville ville_d_arrivee 
from voyage
left join trajet on voyage.id_trajet = trajet.id_trajet 
left join voiture on voyage.id_voiture = voiture.id_voiture
left join ville villeD on villeD.id_ville = trajet.id_ville_depart
left join ville villeA on villeA.id_ville = trajet.id_ville_arrivee
where voyage.date_depart = '2022-07-23';
