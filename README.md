# BASE DE DONNEES - COOPERATIVE SOAVADIA




=======
## 1. Introduction sur le projet
Ce projet consiste à concevoir une base de données sur une coopérative terrestre sous le nom de " SOAVADIA " qui est situé à Madagascar en ce moment.

 **"Objectif de la base"** : 
 
Cette base a été créée pour mieux gérer toutes les informations essentielles relatives à l'organisation interne de la coopérative c’est-à-dire liste personnelle, listes vehicule, organisation des voyages, etc.; mais aussi les informations liées aux clients pour faciliter leur réservation et leur payement pour un voyage.


## 1. Introduction

Ce projet consiste à concevoir une base de données sur une coopérative de transport de voyageurs sous le nom de " SOAVADIA " qui se situe à Madagascar.
=======
### 1.1. *Description du projet*
Ce projet de base de données a pour but d'aider l'agence SOAVADIA pour mieux gérer son agence et a pour principe de faire en sorte que toutes les données soient automatiques pour mieux s'organiser et ne pas se perdre dans les divers dossiers.


Cette base a été créée pour mieux gérer toutes les informations essentielles relatives à l'organisation interne de la coopérative c’est-à-dire liste personnelle, listes vehicule, organisation des voyages, etc.; mais aussi les informations liées aux clients, pour leur faciliter la réservation et le payement d'un voyage. Ce qui sera réalisé de façon automatique pour éviter les pertes de temps ainsi que les éventuels erreurs.


Voici le schéma de la base de données modélisé suivant la méthode merise pour celui-ci : 

![schéma BD Soavadia](D:/chemin/Soavadia.png)
(Schéma + titre)
=======
### 1.2. *Schéma*
Voici la merise ( schéma de la base) conçue pour celui-ci : 



## 2. Contenu du repository
Ce repository contient toute la liste des requêtes possibles et qu'on a trouvée intéressantes dans la base de données SOAVADIA qui est une agence de voyages qui nous a demandé de leur faire un BD pour gérer leurs entreprises.

Il comprend trois dossiers principaux, qui sont les suivants:
* Le dossier **"BD_SOAVADIA"** : 

Il contient le fichier Sql **"soavadia.sql"** exécutable sur Postgresql, permettant de créer la structure de la base de données de la coopérative soavadia. c'est-à-dire les tables avec leurs attributs respectifs, ainsi que leurs relations.
* Le dossier **"DONNEES_FICTIFS"** : 

le fichier Sql **"donnees_fictifs.sql"** exécutable sur Postgresql, présent dans de dossier permet d'insérer des données fictives, ayant pour objectif de tester et simuler les requetés possibles et réalisables sur la base de données. Les données fictives ont ete generés sur [Mockaroo](https://www.mockaroo.com/).
* Le dossier **"LISTES_REQUETES"** : 

Dans ce dossier nous pouvons trouver plusieurs fichiers Sql, un fichier Sql correspondant à une requête intéressant à effectuer sur la base de données. l'objectif étant de récupérer les informations utiles à afficher aux clients mais aussi aux membres du personnel.

Vous pourriez trouver les listes des requetes temporaires ici : [Listes des requetes](https://docs.google.com/document/d/1lIa7BZmPssiG-z6KJMA9Y-lNBaj48Uv4j33pd0EYt34/edit?usp=sharing).

## 3. Utilisation du repository

La conception de la base de données sur la coopérative Soavadia ainsi que tous les éléments y afferent ont etes conçu sur Postgresql.
Par conséquent, il est nécessaire d'avoir Postgresql sur votre machine pour pouvoir exécuter les fichiers de ce repository.
pour plus d'informations sur Postgresql, veuillez consulter le site officiel avec le lien ci-après \([Postgresql](https://www.postgresql.org/)\).

Tout l'abord il faut se connecter sur le terminale Postgresql, puis saisir les commandes présentes à chaque étape selon l'ordre ci-dessous.
Remarque: les fichiers doivent être mis dans un emplacement facile d'accès, en effet, leurs chemins absolus sont requis à chaque exécution de fichier.

### 3.1. *Création de la base de données*
Pour creer la base de données, nous avons la commande suivante:
```
\i /var/lib/pgsql/data/projet/soavadia.sql
```
Ici, 

`\i` représente la commande pour exécuter un fichier sql; 

`/var/lib/pgsql/data/projet/` représente le chemin absolu;

`soavadia.sql` représente le fichier à excuter.

### 3.2. *Insertion des données*
Pour insérer les données fictives dans la base de données, nous avons la commande suivante:
```
\i /var/lib/pgsql/data/projet/donnees_fictifs.sql
```
Ici,

`/var/lib/pgsql/data/projet/` représente le chemin absolu;

`donnees_fictifs.sql` représente le fichier à excuter.

### 3.3. *Exécution des requêtes Sql*
Pour exécuter une requête Sql, prenons la requête permettant d'afficher les places disponibles pour un trajet comme exemple, nous avons la commande suivante:
```
\i /var/lib/pgsql/data/projet/LISTES_REQUETES/client_places_disponibles_pour_un_trajet.sql
```
Ici,

`/var/lib/pgsql/data/projet/LISTES_REQUETES` représente le chemin absolu;

`client_places_disponibles_pour_un_trajet.sql` représente le fichier à exécuter.
