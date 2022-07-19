-- Afficher les détails des reservations qui ne sont pas encore payées 
select reservation.id_reservation, reservation.date_reservation, reservation.numero_place, 
client.nom, client.prenom, 
voyage.date_depart, voyage.horaire_depart,
villeD.nom_ville as ville_depart, villeA.nom_ville as ville_arrivee,
receptionniste.id_receptionniste, 
payement.payement_complet

from reservation

inner join payement on payement.id_reservation=reservation.id_reservation
inner join client on client.id_client= reservation.id_client
inner join  receptionniste on  receptionniste.id_receptionniste=reservation.id_receptionniste
inner join voyage on voyage.id_voyage = reservation.id_voyage
inner join trajet on voyage.id_trajet = trajet.id_trajet
inner join ville villeD on trajet.id_ville_depart = villeD.id_ville
inner join ville villeA on trajet.id_ville_arrivee = villeA.id_ville

where payement.payement_complet = false;
/*
id_reservation | date_reservation | numero_place |       nom       |          prenom           | date_depart | horaire_depart | ville_depart | ville_arrivee | id_recep
tionniste | payement_complet 
----------------+------------------+--------------+-----------------+---------------------------+-------------+----------------+--------------+---------------+---------
----------+------------------
             23 | 2022-07-02       |            7 | Raharison       | Marcel                    | 2022-07-11  | 12:00:00       | Mahajanga    | Antsiranana   |         
       14 | f
             49 | 2022-07-04       |            5 | Luc             | Odon                      | 2022-07-11  | 07:00:00       | Mahajanga    | Antananarivo  |         
       10 | f
             52 | 2022-07-06       |            3 | Haja            | Anja                      | 2022-07-11  | 12:00:00       | Antsirabe    | Fianarantsoa  |         
       12 | f
             97 | 2022-06-23       |            6 | Frederic        | Henri                     | 2022-07-11  | 12:00:00       | Antananarivo | Mahajanga     |         
        8 | f
            117 | 2022-06-28       |           11 | Rajaonarivelo   | Alphonse                  | 2022-07-11  | 18:00:00       | Antananarivo | Fianarantsoa  |         
       32 | f
            136 | 2022-07-01       |            3 | Gilbert         | Sandra                    | 2022-07-11  | 12:00:00       | Antsirabe    | Antananarivo  |         
       14 | f
            163 | 2022-06-14       |           13 | Andrianirina    | Eddy                      | 2022-07-12  | 07:00:00       | Antsiranana  | Mahajanga     |         
       13 | f
            185 | 2022-07-07       |            6 | William         | Julie                     | 2022-07-12  | 18:00:00       | Antananarivo | Antsirabe     |         
       32 | f
            234 | 2022-06-11       |            5 | Salava          | Harry                     | 2022-07-12  | 07:00:00       | Antsiranana  | Mahajanga     |         
       27 | f
            295 | 2022-07-02       |            2 | Leon            | Laurent                   | 2022-07-13  | 07:00:00       | Mahajanga    | Antananarivo  |         
       14 | f
            308 | 2022-07-08       |            4 | Rajonson        | William                   | 2022-07-13  | 12:00:00       | Antananarivo | Antsirabe     |         
       21 | f
            328 | 2022-06-17       |           11 | Rakotoarisoa    | Francine                  | 2022-07-13  | 18:00:00       | Mahajanga    | Antananarivo  |         
       26 | f
            334 | 2022-06-16       |            3 | Fock            | Bertrand                  | 2022-07-13  | 07:00:00       | Antananarivo | Antsirabe     |         
        3 | f
            338 | 2022-06-11       |            2 | Ra              | Yves                      | 2022-07-13  | 12:00:00       | Antananarivo | Mahajanga     |         
       12 | f
            375 | 2022-07-01       |           10 | Rasoanirina     | Ferdinand-Laurence        | 2022-07-13  | 12:00:00       | Antananarivo | Toamasina     |         
       11 | f
            366 | 2022-07-04       |            1 | Zo              | Eliane                    | 2022-07-13  | 12:00:00       | Antananarivo | Toamasina     |         
       28 | f
            429 | 2022-07-06       |            9 | James           | Estelle                   | 2022-07-13  | 18:00:00       | Antananarivo | Fianarantsoa  |  

            */