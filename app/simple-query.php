<?php

use Amp\Mysql\DBAL\MysqlDriver;
use Doctrine\DBAL\DriverManager;

require __DIR__ . '/../vendor/autoload.php';

$conn = DriverManager::getConnection([
    'driverClass' => MysqlDriver::class,
    'user' => 'gerrit',
    'password' => 'g3rr1t',
    'dbname' => 'mma',
]);

$conn->executeStatement('CREATE TABLE IF NOT EXISTS articles (id int, headline varchar(100))');

$conn->insert('articles', [
    'headline' => 'Foobar'
]);

$sql = "SELECT * FROM articles";
$stmt = $conn->executeQuery($sql); // Simple, but has several drawbacks

while (($row = $stmt->fetchAssociative()) !== false) {
    echo $row['headline'] . PHP_EOL;
}


