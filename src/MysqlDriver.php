<?php

namespace Amp\Mysql\DBAL;

use Amp\Mysql\CancellableConnector;
use Amp\Mysql\ConnectionConfig;
use Amp\Socket\StaticConnector;
use Amp\Mysql\MysqlConfig;
use Amp\Mysql\MysqlConnectionPool;

use Doctrine\DBAL\Driver;
use Doctrine\DBAL\Driver\Connection;
use function Amp\Socket\mysqlConnector;

final class MysqlDriver extends Driver\AbstractMySQLDriver
{
    public function connect(array $params): Connection
    {
        $config = new MysqlConfig($params['host'] ?? 'localhost',
            $params['port'] ?? MysqlConfig::DEFAULT_PORT,
            $params['user'] ?? '', $params['password'] ?? '', $params['dbname'] ?? null, null,
            $params['charset'] ?? MysqlConfig::DEFAULT_CHARSET);

//        $connector = mysqlConnector();
//        if (isset($params['unix_socket'])) {
//            $connector = new StaticConnector('unix:' . $params['unix_socket'], $connector);
//        }

        try {
//            return new MysqlConnectionPool($config);
            return new MysqlConnection(new MysqlConnectionPool($config));
        } catch (\Throwable $e) {
            throw MysqlException::new($e);
        }
    }
}