<?php
namespace myapp;
set_include_path(
        dirname(__FILE__).
        PATH_SEPARATOR.
        get_include_path()
    );
var_dump(get_include_path());
echo "Pre autoload\n";
spl_autoload_register(function ($className) {
    $file = str_replace('\\', DIRECTORY_SEPARATOR, $className) . ' . php';

        if(!file_exists($file))
        {
                return false;
        }
        else 
        {
                require_once $file;
        }
    }
);
spl_autoload_register(function ($class_name) {
    include str_replace('\\', DIRECTORY_SEPARATOR, $class_name) . '.php';
});
require_once '../vendor/autoload.php';
//require_once ' ../vendor / zamzar / php - activerecord / ActiveRecord . php';
use ActiveRecord;
use models\User;
use models\Submission;
use models\SubmissionOption;
use models\Answer;
use models\AnswerOption;
use models\Option;
use models\Select;
use models\Scene;
use models\Video;
use models\Question;


echo "About to configure\n";
 ActiveRecord\Config::initialize(function($cfg)
 {
     print_r($cfg);
     //$cfg->set_model_directory('models');
     $cfg->set_connections(array(
        'development' => 'Amphpmysql://gerrit:g3rr1t@localhost/mma'));
 });
//
$allUsers = User::all();
print_r($allUsers);

$allSubmission = Select::all();
print_r($allSubmission);
foreach($allSubmission as $sub){
    $options = $sub->options;
    print_r($options);
}
echo "Connected\n";
$ascene = Scene::first();
echo "got first scene\n";
$thevid = $ascene->video;
//var_export($thevid->to_json());
$theQuestion = $ascene->question;
//var_export($theQuestion->to_json());

$sub = Submission::first();
$options = $sub->options;
array_map(function($item){
    var_export($item->to_json());
}, $options);

$sub = Answer::first();
$options = $sub->options;
//array_map(function($item){
//    var_export($item->to_json());
//}, $options);


//echo json_encode($options);

echo $sub->to_json(['include'=>['options']]);