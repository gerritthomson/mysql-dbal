<?php
namespace models;

//use ActiveRecord;
use ActiveRecord\Model;

class Select extends Model
{
     static $has_many = [array('options')];
}