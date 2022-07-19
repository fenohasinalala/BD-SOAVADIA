--Liste client selon l'offre qu'ils ont choisi.
select reservation.id_reservation, 
client.nom, client.prenom, 
label_offre
from reservation
inner join client on client.id_client= reservation.id_client
inner join  receptionniste on  receptionniste.id_receptionniste=reservation.id_receptionniste
inner join voyage on voyage.id_voyage = reservation.id_voyage
inner join voiture on voyage.id_voiture = voiture.id_voiture
inner join offre on voiture.id_offre = offre.id_offre
where offre.id_offre = 3;
