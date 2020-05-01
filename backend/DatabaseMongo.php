<?php
require 'vendor/autoload.php';
class Database
{
    private $dbhost = 'mongodbinterni-3y4zz.gcp.mongodb.net';
    private $dbname = 'fonis';
    private $client = "";
    private $db = "";
    private $result = "";
    private $username = "";
    private $password ="";
    private $writeResult = "";

    function __construct($dbname, $username,$password)
    {
        $this->username=$username;
        $this->password=$password;
        $this->client = new MongoDB\Client("mongodb+srv://$this->username:$this->password@$this->dbhost");
        $this->dbname = $dbname;  
        $this->db = $this->client->$dbname;
    } 
    
    function formatResult($results){
        $formRes = [];
        foreach ($results as $item) {
            $bson = MongoDB\BSON\fromPHP($item);
            $obj = json_decode(MongoDB\BSON\toJSON($bson));
            $formRes[]= $obj;
        }
        $this->result = $formRes;
    }

    public function getResult()
    {
        return $this->result;
    }

    function select($collection){
        $this->result = $this->db->$collection->find();
        $this->formatResult($this->result);
    }

    function insert($collection,$obj){
        $last = $this->db->$collection->findOne([],['limit'=>1, 'sort'=>['_id'=>-1]]);
        $id_val = json_decode(json_encode($last), true)["_id"];
        $obj["_id"]=$id_val+1;
        $this->result = $this->db->$collection->insertOne($obj);
    }

    function delete($collection, $id){
        $this->result = $this->db->$collection->deleteOne(["_id"=>$id]);
    }
    function update($collection, $id,$values){
        $this->result = $this->db->$collection->updateOne(array("_id"=>$id), array('$set'=>$values));
    }

}
// $db = new Database("fonis");
// $db->select("clanovi");
// $niz = $db->getResult();
// foreach ($niz as $doc) {
//     // $obj = $db->formatResult($doc) ;
//     echo $doc->first_name;
//     echo "<br>";
// }

// $obj = [
//     "_id" => 413, 
//     "first_name" => "Aleksandra", 
//     "last_name" => "Labus", 
//     "email" => "aleksandra@elab.rs", 
//     "ip_address" => "210.145.83.8"
// ];

// foreach($obj as $key => $value)
// {
//     echo $key;
//     echo "<br>";
// }

// $db->delete("clanovi",413);
// print_r($db->getResult());

// printf("Inserted %d document(s)\n", $insertOneResult->getInsertedCount());

// var_dump($insertOneResult->getInsertedId());

// $id = 1;
// $values = ['first_name'=>"Tamara","email"=>"tamara@google.com"];
// $db->update("clanovi",$id,$values);
// print_r($db->getResult());
?>