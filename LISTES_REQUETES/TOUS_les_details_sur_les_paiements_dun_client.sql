-- Afficher TOUS les détails sur les paiements d'un client
select client.id_client, client.nom, client.prenom, payement.*
from client 
INNER JOIN reservation on reservation.id_client= client.id_client 
INNER JOIN payement on reservation.id_reservation = payement.id_reservation
where client.id_client=1;
