<?php
define('API_HOST', 'http://diacritic.braincandy.com.ar');
define('API_RESOURCE', '/api/char/');

$char = $_GET['char'];

if( $char ){
  $response = file_get_contents(API_HOST.API_RESOURCE.$char);

  if( $response ){
    $json = json_decode($response, true);
    echo join(" ", array_map(function($c){ return utf8_decode($c['unicode']); }, $json['output']))."\n";
  }
}
else{
  echo 'Fetch a letter by passing "char" as a GET parameter.';
}

die;
