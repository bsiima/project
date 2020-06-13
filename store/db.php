<?php 
$conn = mysqli_connect('localhost','root','','store');
    
  if(!$conn){
      
      die( "CONNECTION FAILED!!".mysqli_error($conn));
    
  }

?>