# Installation API Test
---

## Installation

Pour récuperer l'ensemble de l'API,

```Markdown
git clone https://github.com/aletang/Apitest
```

##Configuration du fichier Config.php

Il sera nécessaire de modifier les informations de connexion vers votre  
base de données pour que l'API puissent se connecter.

```PHP
define("USER", "user_sql");
define("PASSWORD", "password_sql");
define("DNS", 'mysql:host=localhost;dbname=twitter');
```

##Affichage des données

GET /api :

/tweet/page/count Affichage de(s)tweets  
/author/name_author/page/count Affichage de(s) tweets avec un auteur spécifique    
/hashtag/#hashtags/page/count Affichage de(s) tweets avec un hashtag spécifique

##Ajout d'une entrée

Pour l'ajout d'une entrée, il sera nécessaire de passer par un logiciel  
permettant d'envoyer des requetes comme PostMan.

POST /api :

author (string)   
message (string)  
hashtags (string)  

##Fonctionnalité absente

-Gestion des erreurs  
-Optimisation du code  
-Ajout d'un type array de hashtags
-Interface d'ajout d'entrée
