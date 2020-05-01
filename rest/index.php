<?php
require 'vendor/autoload.php';
require 'jsonindent.php';
require '../backend/sqlconnection.php';

Flight::register('db','Database', array('fonis'));
$json_podaci = file_get_contents("php://input");

Flight::set('json_podaci', $json_podaci);

Flight::route('/', function(){
    echo "Ovo je API za FONIS";
    echo "<br>";
    echo "Mozete ici na rute:";
    echo "<br>";
    echo "GET: /clanovi, /clanovi/:id";
    echo "<br>";
    echo "POST: /clanovi/:id";
    echo "<br>";
    echo "DEL: /clanovi/:id";

});

Flight::route('GET /clanovi', function(){
    header("Content-Type: application/json; charset=utf-8");
    Flight::db()->select("clanovi");
    $niz = array();
    while($red=Flight::db()->getResult()->fetch_object()){
        $niz[]=$red;
    }
    $json_niz=json_encode($niz, JSON_UNESCAPED_UNICODE);
    echo($json_niz);
    return false;
});

Flight::route('GET /clanovi/@id', function($id){
    header("Content-Type: application/json; charset=utf-8");
    $db = Flight::db();
    $where_upit = 'id='.$id;
    $db->select("clanovi","*", $where_upit);
    $red=$db->getResult()->fetch_object();
    $json_niz=json_encode($red, JSON_UNESCAPED_UNICODE);
    echo($json_niz);
    return false;
});

Flight::route('DELETE /clanovi/@id', function($id){
    header("Content-Type: application/json; charset=utf-8");
    $db = Flight::db();
    if($db->delete('clanovi',$id)){
        $odgovor['poruka']="Član je uspešno obrisan";
        $json_niz=json_encode($odgovor, JSON_UNESCAPED_UNICODE);
        echo $json_niz;
        return false;
    }else{
        $odgovor['poruka']="Došlo je do greške prilikom brisanja";
        $json_niz=json_encode($odgovor, JSON_UNESCAPED_UNICODE);
        echo $json_niz;
        return false;
    }
});

Flight::start();
?>