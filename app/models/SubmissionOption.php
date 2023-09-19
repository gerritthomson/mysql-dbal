<?php
namespace models;

//use ActiveRecord;
use ActiveRecord\Model;

class SubmissionOption extends Model
{
    static $belongs_to = array(
            array('submission'),
            array('option')
    );
}