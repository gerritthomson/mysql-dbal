<?php
namespace models;

use Doctrine\ORM\Mapping\Entity;
use Doctrine\ORM\Mapping\Column;
use Doctrine\ORM\Mapping\GeneratedValue;
use Doctrine\ORM\Mapping\Id;
use Doctrine\ORM\Mapping\Table;
use Doctrine\DBAL\Types\Types;
#[Entity]
#[Table(name: 'users')]
class User
{
    #[Id]
    #[Column(type: Types::INTEGER)]
    #[GeneratedValue]
    private $id;
    #[Column(length: 255)]
    private  $name;
    #[Column(length: 255)]
    private $email;
    #[Column(name: 'email_verified_at',type: Types::DATETIME_MUTABLE)]
    private $emailVerifiedAt;
    #[Column(length: 255)]
    private $password;
    #[Column(length: 100)]
    private $remember_token;
    #[Column(name: 'created_at', type: Types::DATETIME_MUTABLE)]
    private $createdAt;
    #[Column(name: 'updated_at',type: Types::DATETIME_MUTABLE)]
    private $updatedAt;

    public function getName()
    {
        return $this->name;
    }

}