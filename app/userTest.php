<?php
require_once 'bootstrap.php';

//$user = $entityManager->find('models\User', 1);
//var_dump($user);


$userRepository = $entityManager->getRepository('models\User');
$users = $userRepository->findAll();

foreach ($users as $user) {
    echo sprintf("-%s\n", $user->getName());
    var_dump($user);
}