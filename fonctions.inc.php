<?php

/*
Description : Calcul de la distance entre 2 points en fonction de leur latitude/longitude
Auteur : Rajesh Singh (2014)
Site web : AssemblySys.com
 
Si vous trouvez ce code utile, vous pouvez montrer votre
appréciation à Rajesh en lui offrant un café ;)
PayPal: rajesh.singh@assemblysys.com
 
Du moment que cette notice (y compris le nom et détails sur l'auteur) est
inclue et N'EST PAS ALTÉRÉE, ce code est distribué selon la GNU General
Public License version 3 : http://www.gnu.org/licenses/gpl-3.0.fr.html
*/
 
function distanceCalculation($point1_lat, $point1_long, $point2_lat, $point2_long, $unit = 'km', $decimals = 2) {
	// Calcul de la distance en degrés
	$degrees = rad2deg(acos((sin(deg2rad($point1_lat))*sin(deg2rad($point2_lat))) + (cos(deg2rad($point1_lat))*cos(deg2rad($point2_lat))*cos(deg2rad($point1_long-$point2_long)))));
 
	// Conversion de la distance en degrés à l'unité choisie (kilomètres, milles ou milles nautiques)
	switch($unit) {
		case 'km':
			$distance = $degrees * 111.13384; // 1 degré = 111,13384 km, sur base du diamètre moyen de la Terre (12735 km)
			break;
		case 'mi':
			$distance = $degrees * 69.05482; // 1 degré = 69,05482 milles, sur base du diamètre moyen de la Terre (7913,1 milles)
			break;
		case 'nmi':
			$distance =  $degrees * 59.97662; // 1 degré = 59.97662 milles nautiques, sur base du diamètre moyen de la Terre (6,876.3 milles nautiques)
	}
	return round($distance, $decimals);
}

// Fonction pour executer des requêtes
function req($req){
	global $mysqli;
	$resultat = $mysqli -> query($req);
	if(!$resultat){
		die("Erreur sur la reqête SQL ! <br/> Message : " . $mysqli -> error . "<br/> Requête : " . $req);	
	}
	return $resultat;
}

?>