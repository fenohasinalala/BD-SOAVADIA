--DESCRIPTION:
/*
Cette requête va afficher tous les clients qui ont fait leurs paiements en ligne
*/
 

select * from client
 INNER JOIN reservation on en_ligne = 't';
            
/*
                                                                               soavadia
 id_client |        nom        |          prenom           |   telephone   |       cin       | id_reservation | date_reservation | en_ligne | numero_place | id_client | id_voyage | id_receptionniste
-----------+-------------------+---------------------------+---------------+-----------------+----------------+------------------+----------+--------------+-----------+-----------+-------------------
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |              2 | 2022-07-01       | t        |            2 |       670 |         1 |                 1
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |              3 | 2022-06-13       | t        |            3 |       644 |         1 |                 3
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |              4 | 2022-06-29       | t        |            4 |       452 |         1 |                10
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |              6 | 2022-06-11       | t        |            6 |       673 |         1 |                25
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             41 | 2022-07-01       | t        |           11 |       348 |         3 |                 9
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             44 | 2022-06-20       | t        |           14 |       349 |         3 |                13
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             49 | 2022-07-04       | t        |            5 |       550 |         4 |                10
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             54 | 2022-07-06       | t        |            5 |       523 |         5 |                 9
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             56 | 2022-06-12       | t        |            7 |       796 |         5 |                15
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             64 | 2022-06-21       | t        |            1 |       361 |         6 |                28
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             69 | 2022-06-22       | t        |            6 |         8 |         6 |                 4
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             72 | 2022-06-13       | t        |            9 |       513 |         6 |                18
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             74 | 2022-07-09       | t        |           11 |       588 |         6 |                18
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             75 | 2022-06-24       | t        |           12 |       748 |         6 |                14
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             76 | 2022-07-02       | t        |           13 |       598 |         6 |                 5
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             79 | 2022-06-24       | t        |            2 |       644 |         7 |                16
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             91 | 2022-06-18       | t        |           14 |       586 |         7 |                24
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             95 | 2022-06-18       | t        |            4 |       323 |         8 |                17
         1 | Andrianasolo      | Alfred                    | 034-64-689-56 | 102-546-718-710 |             98 | 2022-07-05       | t        |            7 |       191 |         8 |                26
-- Suite  --
*/