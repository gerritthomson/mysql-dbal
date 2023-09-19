<?php
namespace models;

//use ActiveRecord;
use ActiveRecord\Model;

class Option extends Model
{
     static $belongs_to = array(
         array('select')
        );
     static $has_many = [
         ['submission_options']
         ,['answer_options']
     ];
}