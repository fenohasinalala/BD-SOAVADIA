--Liste 

Select id_voyage, date_depart, horaire_depart,
coef_saison * coef_offre * frais_de_base frais_voyage,
 villeD.nom_ville ville_de_depart, villeA.nom_ville ville_d_arrivee 
from voyage
left join saison on voyage.id_saison = saison.id_saison 
left join trajet on voyage.id_trajet = trajet.id_trajet 
left join voiture on voyage.id_voiture = voiture.id_voiture
left join offre on offre.id_offre = voiture.id_offre
left join ville villeD on villeD.id_ville = trajet.id_ville_depart
left join ville villeA on villeA.id_ville = trajet.id_ville_arrivee
order by date_depart DESC;
