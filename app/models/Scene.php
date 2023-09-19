<?php
namespace models;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\ORM\Mapping\Entity;
use Doctrine\ORM\Mapping\Column;
use Doctrine\ORM\Mapping\GeneratedValue;
use Doctrine\ORM\Mapping\Id;
use Doctrine\ORM\Mapping\Table;
use Doctrine\DBAL\Types\Types;
#[Entity]
#[Table(name: 'scenes')]
class Scene
{
//    static $belongs_to = [['video'],['question']];
    #[Id]
    #[Column(type: Types::INTEGER)]
    #[GeneratedValue]
    private $id;
    #[Column(length: 255)]
    private  $description;
    #[Column(name: 'video_id',type: Types::INTEGER)]
    private $videoId;
    #[Column(name: 'question_id',type: Types::INTEGER)]
    private $questionId;
    #[Column(name: 'created_at', type: Types::DATETIME_MUTABLE)]
    private $createdAt;
    #[Column(name: 'updated_at',type: Types::DATETIME_MUTABLE)]
    private $updatedAt;

    public function getDescription()
    {
        return $this->description;
    }
    // related
    #[ORM\ManyToOne(targetEntity: Question::class, inversedBy: 'scenes')]
    private Question|null $question = null;
    #[ORM\ManyToOne(targetEntity: Video::class, inversedBy: 'scenes')]
    private Video|null $video = null;
    public function getVideo()
    {
        return $this->video;
    }
    public function getQuestion()
    {
        return $this->question;
    }
}