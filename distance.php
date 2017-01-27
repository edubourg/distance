<?php
require_once("init.inc.php");

if ($_GET) {
	
	extract($_GET); // cp & ville

	// Récupération dans la base de données de la latitude et de longitude
	$resultat = req("SELECT ville_slug, ville_longitude_deg, ville_latitude_deg 
			 FROM villes_france_free 
			 WHERE ville_code_postal LIKE '%" . $cp . "%'
			 AND ville_slug='" . strtolower($ville) . "'");

	// Tester si la requête renvoie un résultat
	if($resultat->num_rows != 0){
		$ligne = $resultat -> fetch_assoc();

		// Pour la ville donnée par le client
		$point1 = array("lat" => $ligne['ville_latitude_deg'], "long" => $ligne['ville_longitude_deg']);
		
		// Initialisation paramètres boucle
		$compteur = req("select count(*) from villes_mesdepanneurs");
		$nbLignes = $compteur -> fetch_assoc();
		$km = 100;
		$i = 1;
		
		// Boucle de calcul 
		while (($km > 25) && ($i < $nbLignes['count(*)']))
			{
				// Récupération dans la base de données de la latitude et de longitude
				$resultat = req("SELECT ville_slug, ville_longitude_deg, ville_latitude_deg 
					FROM villes_mesdepanneurs
					WHERE ville_id =" . $i); 

				$ligne2 = $resultat -> fetch_assoc();

				$point2 = array("lat" => $ligne2['ville_latitude_deg'], "long" => $ligne2['ville_longitude_deg']);
				$km = distanceCalculation($point1['lat'], $point1['long'], $point2['lat'], $point2['long']); // Calculer la distance en kilomètres (par défaut)
				//echo 'La distance entre '. $ville . ' et ' . $ligne2['ville_slug'] . ' est de ' . $km . '<br />';
			
				$i++;
			}

		if ($km <= 25 ) {
			$villeTestee = TRUE;
			echo $villeTestee;
			echo '<br>cette ville est bonne pour mesdepanneurs' . '<br/>'; 
			}
		else
			{
			$villeTestee = FALSE;
			echo $villeTestee;
			echo '<br>cette ville est fausse pour mesdepanneurs' . '<br/>'; 
			}
		
	}
	else
		{
			echo 'Erreur dans les arguments passés !';
		}
		
}
?>


