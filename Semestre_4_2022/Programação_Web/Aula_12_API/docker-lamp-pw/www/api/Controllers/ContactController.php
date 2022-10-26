<?php
class ContactControllor{

    var $ContactModel;

    public function __construct(){
        require_once('Models/ContactModel.php')
        $this -> ContactModel = new ContactModel();
    }



}
?>
