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


id_reservation |       nom       |          prenom           | label_offre 
----------------+-----------------+---------------------------+-------------
             45 | Marius          | Rosette                   | vip
             46 | Ismael          | Olga                      | vip
             47 | Nelson          | Stanislas-Maxime          | vip
             48 | Fano            | Yolande                   | vip
             49 | Luc             | Odon                      | vip
            146 | Bezara          | Lydia                     | vip
            147 | Soja            | Anja                      | vip
            148 | Roland          | Fabien                    | vip
            149 | James           | Jimmy                     | vip
            150 | Johnson         | Stella                    | vip
            244 | Be              | Benjamin                  | vip
            245 | Charles         | Frederic                  | vip
            246 | Randrianasolo   | Sarah                     | vip
            247 | Andrianjanaka   | Annick                    | vip
            262 | Zo              | Noel                      | vip
            263 | Andrian         | Gerard                    | vip
            264 | Rajaobelina     | Lila                      | vip
            265 | Rasoanirina     | Ferdinand-Laurence        | vip
            266 | Rakotondrazaka  | Julienne                  | vip
            267 | Rand            | Lucie                     | vip
            332 | Jonah           | Celestin                  | vip
