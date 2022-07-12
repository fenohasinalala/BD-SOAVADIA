--DESCRIPTION:
/*
Cette requête permet d'afficher le nombre de place libre pour un voyage:
La capacité de la voiture en terme de place et le nombre de place déjà prise sur un voyage sera presenté.
Le nombre de place libre étant la différence entre la capacité de la voiture soustait aux nombres de place occupés
*/

-- Comme exemple nous allons realisé la requête sur le voyage dont l'id_voyage est 24:

--les numeros de place occupés:
Select numero_place  from reservation 
where id_voyage=24;
-- La capacité de la voiture
Select voiture.immatriculation, offre.nombre_place 
from offre,voiture,voyage  
where voyage.id_voiture=voiture.id_voiture 
and voyage.id_voyage = 24 and 
offre.id_offre = voiture.id_offre;