<?php include 'functions.php' ;?>
<?php include 'db.php' ;?>
<?php

if(isset($_POST['submit'])){
create_user();
}
?>
<!DOCTYPE html>
<html>
    <head>
        <title> Liqour Shop </title>
    
    </head>
    <body>
        <form action="create.php" method="post">
        
         <h3> Create User </h3>
        <label> Firstname: <br/></label>
        <br>
        <input type="text" name="firstname"/>
        <br/>
        <label> Lastname: <br/></label>
        <br>
        <input type="text" name="lastname"/>
        <br/>
        <label> Email: <br/></label>
        <br>
        <input type="text" name="email"/>
        <br>
            <label> username: <br/></label>
        <br>
        <input type="text" name="username"/>
        <br>
            <label> Password: <br/></label>
        <br>
        <input type="text" name="password"/>
        <br>
            
        
            <br/>
            
        <input type="submit" value="submit" name="submit"/>
        <br>
            <p>Already have an account<a href="login.php"> Login</a></p>
        
        </form>
        
       
            
        
    </body>
</html>