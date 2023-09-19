<?php
namespace models;

//use ActiveRecord;
use ActiveRecord\Model;

class AnswerOption extends Model
{
    static $belongs_to = array(
            array('answer'),
            array('option')
    );
}