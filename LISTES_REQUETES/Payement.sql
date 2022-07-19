--DESCRIPTION:
/*
Cette requête va nous permettre d'afficher tous les détails sur les paiements d'un client lors de toutes les réservations qu'il a pu faire chez SOAVADIA 
*/


 SELECT client.id_client,
 client.nom, client.prenom, payement.*
 from client
 INNER JOIN reservation on reservation.id_client= client.id_client
 INNER JOIN payement on reservation.id_reservation = payement.id_reservation
 where client.id_client=1;

/*                                                               soavadia
 id_client |     nom      | prenom | id_payement | date_payement | payement_complet | montant_paye | id_type_payement | id_reservation
-----------+--------------+--------+-------------+---------------+------------------+--------------+------------------+----------------
         1 | Andrianasolo | Alfred |         522 | 2022-06-20    | t                |        58000 |                1 |            522
         1 | Andrianasolo | Alfred |         598 | 2022-06-29    | t                |       120000 |                1 |            598
(2 rows)
*/

 SELECT client.id_client,
 client.nom, client.prenom, payement.*
 from client
 INNER JOIN reservation on reservation.id_client= client.id_client
 INNER JOIN payement on reservation.id_reservation = payement.id_reservation
 where client.id_client=40;
 
/*                                                              soavadia
 id_client |     nom     | prenom  | id_payement | date_payement | payement_complet | montant_paye | id_type_payement | id_reservation
-----------+-------------+---------+-------------+---------------+------------------+--------------+------------------+----------------
        40 | Anjaratiana | Evelyne |         289 | 2022-06-27    | t                |        80000 |                3 |            289
        40 | Anjaratiana | Evelyne |         291 | 2022-06-18    | t                |        80000 |                1 |            291
*/