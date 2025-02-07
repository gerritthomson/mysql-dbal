<?php

namespace Amp\Mysql\DBAL;

// use Amp\Mysql\Connection as SqlConnection;
use Amp\Mysql\MysqlConnectionPool;
use Amp\Mysql\MysqlResult as SqlResult;
use Doctrine\DBAL\Driver\Result;
use Doctrine\DBAL\Driver\ServerInfoAwareConnection;
use Doctrine\DBAL\Driver\Statement;
use Doctrine\DBAL\ParameterType;
use function Amp\await;
use function Amp\Pipeline\discard;

class MysqlConnection implements ServerInfoAwareConnection
{
    private MysqlConnectionPool $connection;
    private \Closure $resultListener;
    private mixed $lastInsertId;

    public function __construct(MysqlConnectionPool $connection)
    {
        $this->connection = $connection;
        $this->resultListener = fn(SqlResult $result) => $this->lastInsertId = $result->getLastInsertId();
    }

    public function prepare(string $sql): Statement
    {
        try {
            return new MysqlStatement($this->connection->prepare($sql), $this->resultListener);
        } catch (\Throwable $e) {
            throw MysqlException::new($e);
        }
    }

    public function query(string $sql): Result
    {
        try {
            $result = $this->connection->query($sql);
            ($this->resultListener)($result);

            return new MysqlResult($result);
        } catch (\Throwable $e) {
            throw MysqlException::new($e);
        }
    }

    public function quote($value, $type = ParameterType::STRING)
    {
        throw new \Error("Not implemented, use prepared statements");
    }

    public function exec(string $sql): int
    {
        try {
            $result = $this->connection->execute($sql);
            ($this->resultListener)($result);

            return $result->getRowCount();
        } catch (\Throwable $e) {
            throw MysqlException::new($e);
        }
    }

    public function lastInsertId($name = null)
    {
        return $this->lastInsertId;
    }

    public function beginTransaction(): bool
    {
        try {
            await(discard($this->connection->query("START TRANSACTION")));

            return true;
        } catch (\Throwable $e) {
            throw MysqlException::new($e);
        }
    }

    public function commit(): bool
    {
        try {
            await(discard($this->connection->query("COMMIT")));

            return true;
        } catch (\Throwable $e) {
            throw MysqlException::new($e);
        }
    }

    public function rollBack(): bool
    {
        try {
            await(discard($this->connection->query("ROLLBACK")));

            return true;
        } catch (\Throwable $e) {
            throw MysqlException::new($e);
        }
    }

    public function getServerVersion(): string
    {
        return $this->query("SELECT @@version")->fetchOne();
    }
}