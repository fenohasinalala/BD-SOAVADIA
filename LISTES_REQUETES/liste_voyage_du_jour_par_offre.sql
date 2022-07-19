--Liste des voyages du jour par offre
Select voyage.id_voyage, voyage.date_depart, voyage.horaire_depart,
 coef_saison * coef_offre * frais_de_base frais_voyage,
 villeD.nom_ville ville_de_depart, villeA.nom_ville ville_d_arrivee ,
 offre.label_offre
from voyage
inner join saison on voyage.id_saison = saison.id_saison 
inner join trajet on voyage.id_trajet = trajet.id_trajet 
inner join voiture on voyage.id_voiture = voiture.id_voiture
inner join offre on offre.id_offre = voiture.id_offre
inner join ville villeD on villeD.id_ville = trajet.id_ville_depart
inner join ville villeA on villeA.id_ville = trajet.id_ville_arrivee
where voyage.date_depart = current_date
and offre.id_offre = 1
order by date_depart DESC;
