--DESCRIPTION:
/*
Cette requête va nous permettre d'afficher tous les voitures qui sont fonctionnelles et qui sont en état d'être utilisé
*/

select * from voiture
where fonctionnel = 't';

/* out put:
                       soavadia
 id_voiture | immatriculation | fonctionnel | id_offre
------------+-----------------+-------------+----------
          1 | 0146CZA         | t           |        1
          2 | 9259WBO         | t           |        1
          3 | 9274RSJ         | t           |        1
          4 | 4548KSV         | t           |        3
          5 | 7419YOC         | t           |        1
          6 | 8203OLN         | t           |        1
          7 | 1099MIA         | t           |        1
          8 | 6940EGZ         | t           |        1
         10 | 9823VGI         | t           |        2
         12 | 7259MPI         | t           |        3
         13 | 7533QGL         | t           |        1
         14 | 8116IRV         | t           |        1
         16 | 3969GZU         | t           |        1
         17 | 2161AUR         | t           |        1
         18 | 6279PSP         | t           |        2
         19 | 2014AXW         | t           |        1
         20 | 0384KUG         | t           |        3
         21 | 1727OPE         | t           |        1
         22 | 0053KSK         | t           |        3
         23 | 0499SAD         | t           |        2
         24 | 3638CUM         | t           |        1
         25 | 3349WVB         | t           |        2
         26 | 1453HJZ         | t           |        2
         27 | 9586DEF         | t           |        1
         28 | 5189SUB         | t           |        3
         29 | 8538HOV         | t           |        2
         30 | 3760IXB         | t           |        3
         31 | 6001NCM         | t           |        1
         32 | 8371HGX         | t           |        2
         33 | 1064VGZ         | t           |        1
         34 | 9059EGU         | t           |        1
         35 | 3060NMI         | t           |        1
         36 | 2099VJJ         | t           |        1
         37 | 7573ECA         | t           |        3
         38 | 5713IOB         | t           |        2
         39 | 3464IVM         | t           |        1
         40 | 9360SIK         | t           |        2
*/