<?php
class Database
{
    private $hostname = "localhost";
    private $username = "root";
    private $password = "";
    private $dbname;
    private $dblink;
    private $result;
    private $affected;

    function __construct($dbname)
    {
        $this->dbname = $dbname;
        $this->Connect();
    }

    function Connect()
    {
        $this->dblink= new mysqli($this->hostname,$this->username,$this->password,$this->dbname);
        if ($this->dblink->connect_errno){
            printf("Konekcija neuspesna: ", $this->dblink->connect_error);
            exit();
        }
        $this->dblink->set_charset("utf8");
    }
    
    public function getResult()
    {
        return $this->result;
    }

    function ExecuteQuery($query){
        $this->result=$this->dblink->query($query);
        if($this->result){
            return true;
        }else{
            return false;
        }
    }

    function select($table, $rows="*", $where = null, $order=null){

        $q = 'SELECT '.$rows.' FROM '.$table;
        if($where!=null){
            $q.=' WHERE '.$where; 
        }
        if($order!=null){
            $q.=' ORDER BY '.$order; 
        }
        $this->ExecuteQuery($q);
    }

    function delete($table, $id){
        $q = 'DELETE FROM '.$table.' WHERE id='.$id;
        if($this->ExecuteQuery($q)){
            return true;
        }else{
            return false;
        }
        
    }

    function insert($table, $rows, $values){
        $q = 'INSERT INTO '.$table;
        if($rows!=null){
            $q.='('.$rows.')';
        }
        $q.=" VALUES('".$values[0]."','".$values[1]."','".$values[2]."')";

        if($this->ExecuteQuery($q)){
            return true;
        }else{
            return false;
        }

    }

}
?>