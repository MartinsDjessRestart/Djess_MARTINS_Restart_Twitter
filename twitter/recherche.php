<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rechercher</title>
    <link rel="stylesheet" href="twitter.css">
</head>
<body>
<?php require "template_twitter/nav.php"; ?>
    <main>
        <form action="" method="GET">
            <input type="search" name="search" placeholder="Rechercher un #">
            <button type="submit">Envoyer</button>
        </form>
        <hr>
        <?php

        require 'template_twitter/base.php';

        $requete = $database->prepare('SELECT * FROM home WHERE hashtag LIKE :search');

        if (isset($_GET['search']) && $_GET['search'] != '') {
            $searchTerm = '%' . $_GET['search'] . '%';
            $searchTweet = $requete->execute(
                [
                    "search" => $searchTerm
                ]
            );
            $results = $requete->fetchAll(PDO::FETCH_ASSOC);
        
            if (($results) > 0) {
                echo "<p>Voici les résultats :</p>";
                foreach ($results as $course) { 
                    echo "<h1>" . $course['titre'] . "</h1>";
                    echo "<p>" . $course['contenu'] . "</p>";
                    echo "<p>" . $course['auteur'] . "</p>";
                    echo "<p>" . $course['publish_date'] . "</p>";
                    echo "<hr/>";
                }
            } else {
                echo "<p>Aucun résultat trouvé</p>";
            }
        } else {
            echo "<p>Effectuez une recherche :</p>";
        }?>
    </main>
</body>
</html>