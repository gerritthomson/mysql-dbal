<?php
// bootstrap.php
require __DIR__ . '/../vendor/autoload.php';

use Amp\Mysql\DBAL\MysqlDriver;
use Doctrine\DBAL\DriverManager;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\ORMSetup;

$paths = [__DIR__.'/models'];
$isDevMode = true;

// the connection configuration
$dbParams = [
    'driver'   => MysqlDriver::class,
    'user'     => 'gerrit',
    'password' => 'g3rr1t',
    'dbname'   => 'mma',
];

$config = ORMSetup::createAttributeMetadataConfiguration($paths, $isDevMode);
//$connection = DriverManager::getConnection($dbParams, $config);
$connection = DriverManager::getConnection([
    'driverClass' => MysqlDriver::class,
    'user' => 'gerrit',
    'password' => 'g3rr1t',
    'dbname' => 'mma',
]);

$entityManager = new EntityManager($connection, $config);

