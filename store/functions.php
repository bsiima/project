<?php session_start(); ?>
<?php

function create_user(){
   
 global $conn;
    $firstname= $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email= $_POST['email'];
    $username= $_POST['username'];
    $password = $_POST['password'];
   
    $firstname = mysqli_real_escape_string($conn,$firstname);
    $lastname = mysqli_real_escape_string($conn,$lastname);
    $email = mysqli_real_escape_string($conn,$email);
    $username = mysqli_real_escape_string($conn,$username);
    $password = mysqli_real_escape_string($conn,$password);
    
     $password = password_hash($password, PASSWORD_BCRYPT, array('cost' => 10));
    
   $query = "INSERT INTO users(firstname, lastname, email,username,password,role,created_at) ";
   $query .="VALUES('$firstname','$lastname','$email','$username','$password','user',now())";
      
      $result= mysqli_query($conn,$query);
      if(!$result){
          
          die("insertion failed".mysqli_error($conn));
      }else {
          
          echo "User created";
      }

}



/****************************************user login*********************/

function login(){
global $conn;
    
$username= $_POST['username'];
$password = $_POST['password'];

$username = mysqli_real_escape_string($conn,$username);
$password = mysqli_real_escape_string($conn,$password);
    

    $query = "SELECT * FROM users WHERE username = '{$username}'";
    $result= mysqli_query($conn,$query);
      
      
if(!$result){
          
          die("insertion failed".mysqli_error($conn));
}else{
          
while($row = mysqli_fetch_array($result)){
    $user_id = $row['user_id'];
    $db_username= $row['username'];
    $db_password = $row['password'];
    $db_firstname = $row['firstname'];
    $db_lastname = $row['lastname'];
    $db_role = $row['role'];
          

if(password_verify($password, $db_password ) ){
$_SESSION['username'] =$db_username;
$_SESSION['firstname'] =$db_firstname;
$_SESSION['lastname'] =$db_lastname;
$_SESSION['role'] =$db_role;
    
              
              if($db_role == 'admin'){
                  
                  
                  echo "Welcome Admin ".$_SESSION['username'];
              }else{
                  
                  echo "Welcome User  ".$_SESSION['username'];
                  
              }
          }
              
          else{
              
              echo "You arent authorised to use this page";
          }

    
}
}

    
}


?>