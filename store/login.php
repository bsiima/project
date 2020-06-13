<?php include 'functions.php'?>
<?php include 'db.php'?>
<?php
    if(isset($_POST['login'])){
        login();
}?>

<!DOCTYPE html>
<html>
    <head>
        <title> login </title>
    
    </head>
    <body>
     
        
        <h3> Login </h3>
        <form action="" method="post">
            <label> username: <br/></label>
        <br>
        <input type="text" name="username"/>
        <br>
            <label> Password: <br/></label>
        <br>
        <input type="text" name="password"/>
        <br>
            
        
            <br/>
            
        <input type="submit" value="Login" name="login" />
        <br>
        
       <a href="create.php">Create user</a>
       </form> 
    </body>
</html>