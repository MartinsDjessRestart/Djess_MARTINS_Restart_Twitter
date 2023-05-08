<?php 
require "template_twitter/base.php";

$requete = $database->prepare("SELECT * FROM utilisateur");

$requete->execute();

$allCourses = $requete->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
    <link rel="stylesheet" href="twitter.css">
</head>
<body>
<?php require "template_twitter/nav.php"; ?>
    <main>
        <form class="form" method="POST" action="utilisateur.php">
            <input type="number" name="user" id="utilisateur" placeholder="id" min="0" required>
            <input type="text" name="nom" id="nom" placeholder="pseudo" required>
            <input type="text" name="email" id="email" placeholder="email" required>
            <input type="password" name="mdp" id="mdp" placeholder="mot de passe" required>
            <button type="submit">Inscription</button>
        </form>
        <hr>
    </main>
</body>
</html>