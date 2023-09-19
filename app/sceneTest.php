<?php
require_once 'bootstrap.php';

//$user = $entityManager->find('models\User', 1);
//var_dump($user);


$userRepository = $entityManager->getRepository('models\Scene');
$items = $userRepository->findAll();

foreach ($items as $item) {
//    var_dump($item);
    var_dump($item->getVideo()->getTitle());
    var_dump($item->getQuestion()->getDescription());
}