<?php
require "template_twitter/base.php";

$order = $database->prepare('SELECT * FROM home ORDER BY publish_date DESC');
$order->execute();
$allCourses = $order->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TwitTOS</title>
    <link rel="stylesheet" href="twitter.css">
</head>
<body>
<?php require "template_twitter/nav.php"; ?>
    <div>
        <main>
            <form class="form" method="POST" action="inserer.php">
                <input type="text" name="titre" placeholder="titre du message" required>
                <input type="text" name="contenu" placeholder="Ecris ton message" required>
                <input type="text" name="hashtag" placeholder="#" required>
                <button type="submit">Envoyer</button>
                <hr class="top">
            </form>
            <?php foreach($allCourses as $course) { ?>
                <div class="twitosprofil">
                    <img class="image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkbZrqHLrkNGeIWaCQyTGh9OzunLDlnheumk1XEiA-wFgeMPv8oFbow7XZkM8LVJcsQis&usqp=CAU" alt="Photo de profil">
                    <h1>@<?= $course['auteur']; ?></h1>
                </div>
                <p class="taille"><?= $course['titre']; ?></p>
                <p><?= $course['contenu']; ?></p>
                <p><?= $course['hashtag']; ?></p>
                <p><?= $course['publish_date']; ?></p>

            <form action="supp.php" method="POST">
                <input type="hidden" name="supp" value="<?= $course['id']; ?>">
                <button type="submit">Supprimer</button>
            </form>
            <hr>
            <?php } ?>
        </main>
    </div>
</body>
</html>
