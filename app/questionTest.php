<?php
require_once 'bootstrap.php';

//$user = $entityManager->find('models\User', 1);
//var_dump($user);


$itemRepository = $entityManager->getRepository('models\Question');
$item = $itemRepository->find(4);

foreach ($item->getScenes() as $scene) {
    echo sprintf("-%s\n", $scene->getDescription());
}