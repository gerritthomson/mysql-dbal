<?php
namespace models;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\ORM\Mapping\Entity;
use Doctrine\ORM\Mapping\Column;
use Doctrine\ORM\Mapping\GeneratedValue;
use Doctrine\ORM\Mapping\Id;
use Doctrine\ORM\Mapping\Table;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\PersistentCollection;

#[Entity]
#[Table(name: 'videos')]
class Video
{
    #[Id]
    #[Column(type: Types::INTEGER)]
    #[GeneratedValue]
    private $id;
    #[Column(length: 255)]
    private  $title;
    #[Column(length: 255)]
    private $location;
    #[Column(name: 'created_at', type: Types::DATETIME_MUTABLE)]
    private $createdAt;
    #[Column(name: 'updated_at',type: Types::DATETIME_MUTABLE)]
    private $updatedAt;

    // related
    /** @var Collection<int, Scene> */
    #[ORM\OneToMany(targetEntity: Scene::class, mappedBy: 'video')]
    private PersistentCollection $scenes;


    public function getTitle()
    {
        return $this->title;
    }
}