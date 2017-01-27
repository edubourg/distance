<?php

// Exemple d'envois
// http://localhost/distance/distance.php?cp=01250&ville=Simandre-sur-Suran
// http://localhost/distance/distance.php?cp=91160&ville=longjumeau
// http://localhost/distance/distance.php?cp=91380&ville=chilly-mazarin
// http://localhost/distance/distance.php?cp=59491&ville=villeneuve-d-ascq

// Le code postal peut très bien ne pas être unique pour une commune
// Exemple : Simandre-sur-Suran et Germagnat CP 01250
// Une ville peut avoir plusieurs codes postaux : exemple Lyon
// d'où deux choix dans le $_GET

//Il faut créer un script en PHP qui reçoit un paramètre GET contenant le code postal d'un commune française et 
//retourne une valeur TRUE / FALSE si MesDépanneurs.fr intervient dans cette commune.

?>

<a href="distance.php?cp=59491&ville=villeneuve-d-ascq">Page Distance</a>

