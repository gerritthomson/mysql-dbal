<?php
namespace models;

//use ActiveRecord;
use ActiveRecord\Model;

class Submission extends Model
{
    static $has_many = array(
        [ 'submission_options'],
        array('options',
            'through' => 'submission_options')
    );
}