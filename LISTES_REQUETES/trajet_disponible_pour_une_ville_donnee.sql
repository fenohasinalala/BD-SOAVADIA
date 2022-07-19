--Liste trajet disponible pour une ville donnee

Select id_trajet,
villeD.nom_ville ville_depart, 
villeA.nom_ville ville_arrivee
from trajet
left join ville villeD on villeD.id_ville = trajet.id_ville_depart 
left join ville villeA on villeA.id_ville = trajet.id_ville_arrivee 
where villeD.nom_ville = 'Mahajanga' 
or villeA.nom_ville = 'Mahajanga';

