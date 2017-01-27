<?php

//-------- BDD
// en local
$mysqli = new Mysqli('localhost', 'root', '', 'mesdepanneurs') or die('Un probl�me est survenu lors de la connexion � la base de donn�e : ' . $mysqli -> connect_error); 

// sur le serveur
//$mysqli = new mysqli('cl1-sql21', 'hce74041', 'jkzX8lf4rEWI', 'hce74041') or die('Un probl�me est survenu lors de la connexion � la base de donn�e : ' . $mysqli -> connect_error); 

//mysqli_connect('localhost', 'my_user', 'my_password', 'my_db');

//* H�te de connexion MySQL (HOST) : cl1-sql21
//* Nom de la BASE MySQL : hce74041
//* Nom d'utilisateur (LOGIN) : hce74041

// connect-error  nous renvoie l'erreur de connexion � la BDD
// En mettant la connexion � la BDD ici, nous aurons acc�s � la BDD sur l'ensemble du site. 
$mysqli -> set_charset("utf8");

//-------- SESSION
session_start(); 
// En effectuant la cr�ation de la session ici, on aura acc�s aux fichiers de session sur l'ensemble du site.

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
//On inclue ici le fichier avec toutes fonctions utilisateurs pour y avoir acc�s sur l'ensemble du site. 
