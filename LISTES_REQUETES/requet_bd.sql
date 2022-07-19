


-- Liste des passagers qui sont partis de jour / de nuit à une date donnée 

select c.id_client, nom, prenom, telephone, cin 
from client c, reservation r, voyage v
where date_depart='2022-07-23' and v.id_voyage=r.id_voyage and c.id_client=r.id_client;



-- Afficher toutes les depenses relatives à une voiture donnée

select depense_maintenance from voiture v, maintenance m, faire_maintenance f 
where v.id_voiture=f.id_voiture and m.id_maintenance=f.id_maintenance
and v.id_voiture=1;



-- Liste des voyages pour un trajet détérminée qui partent vers une autre ville
SELECT date_depart, nom_ville FROM voyage
    INNER JOIN trajet ON voyage.id_trajet = trajet.id_trajet
    INNER JOIN ville ON ville.id_ville = trajet.id_ville_arrivee
    WHERE nom_ville = 'Mahajanga' AND date_depart = '10-06-2022';

-- Afficher les trajets les plus rentables pendant une saison (seulement les gains, pas les dépenses)
SELECT DISTINCT depense_regulier  FROM voyage
WHERE id_saison=1 ;

 

-- afficher le frais_de_base: référencie au frais_d'un_voyage:
SELECT date_depart, horaire_depart, frais_de_base  FROM voyage 
INNER JOIN trajet ON voyage.id_trajet = trajet.id_trajet; 

-- Afficher les listes des voyages à une horaire précise, à une date précise
SELECT * FROM voyage WHEN date_depart = '2022-06-13'; 