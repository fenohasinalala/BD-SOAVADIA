--Liste 
select date_maintenance as date, description , depense_maintenance as depense
from maintenance
where date_maintenance >= current_date - INTERVAL '1 month'
and date_maintenance <= current_date

union

select date_depart as date, description_incident as description , depense_incident as depense
from incident
inner join voyage on incident.id_incident = voyage.id_incident
where date_depart >= current_date - INTERVAL '1 month'
and date_depart <= current_date

union

select date_depart as date, immatriculation  as description , depense_regulier as depense
from voyage
inner join voiture on voiture.id_voiture = voyage.id_voiture
where date_depart >= current_date - INTERVAL '1 month'
and date_depart <= current_date;
