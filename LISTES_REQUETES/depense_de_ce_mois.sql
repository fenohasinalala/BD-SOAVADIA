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

/*
    date    |   description   | depense 
------------+-----------------+---------
 2022-07-19 | 3349WVB         |  141600
 2022-07-12 | 3969GZU         |  321600
 2022-07-14 | 1099MIA         |  321600
 2022-07-16 | 3349WVB         |   97200
 2022-07-19 | 1727OPE         |  445600
 2022-07-14 | 9259WBO         |   97200
 2022-07-19 | 6279PSP         |   97200
 2022-07-18 | 6899JWJ         |  445600
 2022-07-17 | 1064VGZ         |  321600
 2022-07-17 | 0146CZA         |  445600
 2022-07-18 | 3969GZU         |  165200
 2022-07-14 | 8203OLN         |   97200
 2022-07-18 | 6940EGZ         |  229600
 2022-07-14 | 9274RSJ         |  141600
 2022-07-15 | 0263XWJ         |  321600
 2022-07-15 | 9823VGI         |  321600
 2022-07-15 | 6899JWJ         |  321600
 2022-07-17 | 5713IOB         |   64800
 2022-07-13 | 8538HOV         |  229600
 2022-07-17 | 7573ECA         |  229600
 2022-07-15 | 0384KUG         |   64800
 2022-07-15 | 7692RWH         |  141600
 2022-07-12 | 2014AXW         |  321600
 2022-07-11 | 8203OLN         |   97200
 2022-07-11 | 6899JWJ         |  165200
 2022-07-11 | 0146CZA         |  229600
 2022-07-18 | 7259MPI         |  445600
 2022-07-13 | 1453HJZ         |   64800
 2022-07-17 | 2099VJJ         |  165200
 2022-07-17 | 3464IVM         |  229600
 2022-07-12 | 0053KSK         |  141600
 2022-07-19 | 2014AXW         |  229600
 2022-07-17 | 9259WBO         |   97200
 2022-07-17 | 3060NMI         |   64800
 2022-07-16 | 0499SAD         |   97200
*/