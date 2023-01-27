<?php
// var_dump($_POST);exit();
include('config.php');

// DSN staat voor data sourcename.
$dsn = "mysql:host=$dbHost;dbname=$dbName;charset=UTF8";

try {
    $pdo = new PDO($dsn, $dbUser, $dbPass);
    echo "Er is een verbinding met de database";
} catch(PDOException $e) {
    echo "Er is helaas geen verbinding met de database.<br>
          Neem contact op met de Administrator<br>";
    echo "Systeemmelding: " . $e->getMessage();
}
// Maak de sql query voor het inserten van een record
$sql = "INSERT INTO Persoon (Id
                            ,Voornaam
                            ,Tussenvoegsel
                            ,Achternaam
                            ,Telefoonnummer
                            ,Straatnaam
                            ,Huisnummer
                            ,Woonplaats
                            ,Postcode
                            ,Landnaam)
        VALUES              (NULL
                            ,:firstname
                            ,:infix
                            ,:lastname
                            ,:number
                            ,:straatnaam
                            ,:huisnummer
                            ,:woonplaats
                            ,:postcode
                            ,:landnaam);";
// Maak de query gereed met de prepare-method van het $pdo-object
$statement = $pdo->prepare($sql);
$statement->bindValue(':firstname', $_POST['firstname'], PDO::PARAM_STR);
$statement->bindValue(':infix', $_POST['infix'], PDO::PARAM_STR);
$statement->bindValue(':lastname', $_POST['lastname'], PDO::PARAM_STR);
$statement->bindValue(':number', $_POST['number'], PDO::PARAM_STR);
$statement->bindValue(':straatnaam', $_POST['straatnaam'], PDO::PARAM_STR);
$statement->bindValue(':huisnummer', $_POST['huisnummer'], PDO::PARAM_STR);
$statement->bindValue(':woonplaats', $_POST['woonplaats'], PDO::PARAM_STR);
$statement->bindValue(':postcode', $_POST['postcode'], PDO::PARAM_STR);
$statement->bindValue(':landnaam', $_POST['landnaam'], PDO::PARAM_STR);

// Vuur de query af op de database...
$statement->execute();

// Hiermee sturen we automatisch door naar de pagina read.php
header('Location: read.php');



