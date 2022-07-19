-- Liste des voyages pour un trajet déterminé et une date déterminée

Select id_voyage, date_depart, horaire_depart,
villeD.nom_ville ville_depart, 
villeA.nom_ville ville_arrivee,
label_offre,
immatriculation
from voyage
left join trajet on voyage.id_trajet = trajet.id_trajet 
left join voiture on voyage.id_voiture = voiture.id_voiture 
left join ville villeD on villeD.id_ville = trajet.id_ville_depart 
left join ville villeA on villeA.id_ville = trajet.id_ville_arrivee 
left join offre on voiture.id_offre = offre.id_offre
where villeD.nom_ville = 'Antananarivo' 
and villeA.nom_ville = 'Antsirabe' 
and date_depart = '2022-07-23';
