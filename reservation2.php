<?php

if(isset($_POST["nom"])){

    try {
        $bdd = new PDO('mysql:host=localhost;dbname=eatover', "root", "");
        $data = [
            'nom' => $_POST["nom"],
            'prenom' => $_POST["prenom"],
            'tel' => $_POST["tel"],
            'mail' => $_POST["mail"],
            'datereserv' => $_POST["datereserv"],
            'heure' => $_POST["heure"],
            'AdultNumb' => $_POST["AdultNumb"],
            'KidNumb' => $_POST["KidNumb"],
            'Borsh' => $_POST["Borsh"],
            'Shishlak' => $_POST["Shishlak"],
            'Vareniki' => $_POST["Vareniki"],
            'SpaghettiBolognaise' => $_POST["SpaghettiBolognaise"],
        ];
        $sql = "INSERT INTO reservation (`id`, `nom`, `prenom`, `tel`, `mail`, `date`, `horaire`, `adultes`, `enfants`, `Borsh`, `Shishlak`, `Vareniki`, `SpaghettiBolognaise`) VALUES (NULL, :nom, :prenom , :tel , :mail , :datereserv , :heure, :AdultNumb , :KidNumb , :Borsh , :Shishlak , :Vareniki , :SpaghettiBolognaise )";
        $stmt= $bdd->prepare($sql);
        $stmt->execute($data);
        $bdd = null;
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage() . "<br/>";
        die();
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="calendarstyle.css">
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="stylereserv2.css">
    <link rel="stylesheet" href="button.css">

    <title>Document</title>
</head>
<body>
  <header>
    <div class="navbar">
        <a href="index.html"><img class="Hlogo" src="assets/logo.png" alt="LOGO"></a>
        <a class="navLink" href="concept.html">Concept</a>
        <a class="navLink" href="dons.html">Faire un don</a>
        <a class="navLink" href="actualite.html">Actualité</a>
        <a class="navLink" href="reservation.html">Réserver</a>
        <a class="navLink" href="contact.html">Contact</a>
    </div>
</header>
      <h1 class="eventname">UkraineEvent</h1>



      <img class="illustration" src="assets/reservation1/illustrationh.svg">

    </div>


    <br>
    <br>
    <div class="illustration">
      <img class="encadré" src="assets/reservation1/encadré_orange.svg"
</div>

<div class="eventstep">
 <a href="reservation1.html">Réservation</a>
 <a class="confirm">Confirmation</a>
</div>

<div class="recap">
    <div class="name">
      <h1><?php echo $_POST["nom"] ?></h1>
      <br>
      <h1 class="prenom"><?php echo $_POST["prenom"] ?></h1>
  </div>  

    <div class="info">
      <p class="tel"><?php echo $_POST["tel"] ?></p>
      <p><?php echo $_POST["datereserv"] ?> à <?php echo $_POST["heure"] ?></p>
</div>

     <p class="mail"> <?php echo $_POST["mail"] ?></p>

  <div class="nbrpers">
    <p class="nbr">Nombre de personnes :</p>

      <div class="nbr2">
      <?php echo $_POST["AdultNumb"]?> Adulte(s) et 
      <?php echo $_POST["KidNumb"] ?> Enfant(s)
    </div>

    <div class="menu">
    <a class="b">Borsh:<?php echo $_POST["Borsh"] ?></a>
    <a class="f">Shishlak:<?php echo $_POST["Shishlak"] ?></a>
    <a class="f">Vareniki:<?php echo $_POST["Vareniki"] ?></a>
    <a>Spaghetti Bolognaise:<?php echo $_POST["SpaghettiBolognaise"] ?></a>
</div>



</div>
</div>
    
</body>
</html>