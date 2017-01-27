<?php

//-------- BDD
// en local
$mysqli = new Mysqli('localhost', 'root', '', 'mesdepanneurs') or die('Un problème est survenu lors de la connexion à la base de donnée : ' . $mysqli -> connect_error); 

// sur le serveur
//$mysqli = new mysqli('cl1-sql21', 'hce74041', 'jkzX8lf4rEWI', 'hce74041') or die('Un problème est survenu lors de la connexion à la base de donnée : ' . $mysqli -> connect_error); 

//mysqli_connect('localhost', 'my_user', 'my_password', 'my_db');

//* Hôte de connexion MySQL (HOST) : cl1-sql21
//* Nom de la BASE MySQL : hce74041
//* Nom d'utilisateur (LOGIN) : hce74041

// connect-error  nous renvoie l'erreur de connexion à la BDD
// En mettant la connexion à la BDD ici, nous aurons accès à la BDD sur l'ensemble du site. 
$mysqli -> set_charset("utf8");

//-------- SESSION
session_start(); 
// En effectuant la création de la session ici, on aura accès aux fichiers de session sur l'ensemble du site.

//-------- CHEMIN DU SITE
// en local

// sur le serveur
define("RACINE_SITE", "/distance/");

//-------- VARIABLES
$msg = '';
$title = '';
$erreur = '';
$contenu = '';

//-------- D'AUTRES INCLUSIONS
require_once("fonctions.inc.php");
//On inclue ici le fichier avec toutes fonctions utilisateurs pour y avoir accès sur l'ensemble du site. 
