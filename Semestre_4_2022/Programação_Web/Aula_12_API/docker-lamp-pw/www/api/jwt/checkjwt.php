<?php

$header = apache_request_headers();
$token = $header['Authorization'];

$token = str_replace("Bearer ", "", $token); //se tiver o prefixo "Bearer" remover

var_dump($token);

$part = explode(".",$token);
$header = $part[0];
$payload = $part[1];
$signature = $part[2];

$valid = hash_hmac('sha256',"$header.$payload",'minha-senha',true);
$valid = base64_encode($valid);
$valid = str_replace(['+', '/', '='], ['-', '_', ''], $valid); //base64url

if($signature == $valid){
   echo "valid";
   $payload = str_replace(['-', '_', ''], ['+', '/', '='],  $payload); //base64urldecode
   $payload = base64_decode($payload);
   $payload = json_decode($payload);
   var_dump($payload);
}else{
   echo 'invalid';
}
