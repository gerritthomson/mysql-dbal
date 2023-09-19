<?php
namespace models;

//use ActiveRecord;
use ActiveRecord\Model;

class Answer extends Model
{
    static $has_many = [
        ['answer_options'],
        ['options', 'through'=>'answer_options']
    ];
}