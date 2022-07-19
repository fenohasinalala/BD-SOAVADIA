-- Totalisation du nombre de reservation par offre (combien on a eu de reservation premium, lite, vip)
-- durant les 3 derniers mois

Select COUNT(id_reservation)  nombre_de_reservation_par_offre, 'LITE' nom_offre
from reservation
left join voyage on voyage.id_voyage = reservation.id_voyage
left join voiture on voyage.id_voiture = voiture.id_voiture
left join offre on offre.id_offre = voiture.id_offre
where offre.id_offre = 1 
and date_depart > current_date - INTERVAL '3 month'
and date_depart <= current_date

UNION

Select COUNT(id_reservation)  nombre_de_reservation_par_offre, 'PREMIUM' nom_offre
from reservation
left join voyage on voyage.id_voyage = reservation.id_voyage
left join voiture on voyage.id_voiture = voiture.id_voiture
left join offre on offre.id_offre = voiture.id_offre
where offre.id_offre = 2 
and date_depart > current_date - INTERVAL '3 month'
and date_depart <= current_date

UNION

Select COUNT(id_reservation)  nombre_de_reservation_par_offre, 'VIP' nom_offre
from reservation
left join voyage on voyage.id_voyage = reservation.id_voyage
left join voiture on voyage.id_voiture = voiture.id_voiture
left join offre on offre.id_offre = voiture.id_offre
where offre.id_offre = 3 
and date_depart >= current_date - INTERVAL '3 month'
and date_depart <= current_date;
