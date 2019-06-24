<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
</head>
<body style="font-family:Times New Roman;
	         border:1px solid;
	         height:350px;
	         width:450px;
	         padding-top:10px;
	         padding-left:30px;
	         margin:0 auto;">
<?php

    $loginerr = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST")  {

       //Check if the user has filled in all the details
       
       if (empty($_POST['username']) or empty($_POST['password'])) {
         $loginerr = 'Please fill in all the required fields';
       } 
       else {
         // Save username and password 
	 $username = ($_POST['username']);
	 $password = ($_POST['password']);

         //Connect to the database
         $conn = mysqli_connect("localhost", "lamp", "1", "lamp_final_project");
         
         if (!$conn) {
            die ("Connection failed " . $conn->errno);
         }

	 //Retrieve data from the database 
	 $sql = "SELECT id FROM `lamp_final_project`.`login`  WHERE `username` = '$username' AND `password` = '$password'";
        
         //Display error message if connection fails.
         if (!mysqli_query($conn, $sql)) {
             echo "Failed to connect to the database :" . $sql . mysqli_error($conn);
         }  
       
         //Save the result
         $result = mysqli_query($conn, $sql);

         // Display the output for each row retrived
         if (mysqli_num_rows($result) > 0) {
             while($row = mysqli_fetch_assoc($result)) {
                   $_SESSION['user_id'] = $row['id'];
   	           $_SESSION['username'] = $username;
                   header("Location:home.html");
             }
         }
         else {
              $loginerr =  "The username and password do not match";
         }

       }		
   }
?>
<form method = "post" action = "<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" enctype = "multipart/form-data">
    <h3 style="text-align:center;
               font-size:25px;
               font-family:Verdana Times New Roman sans-seriff;
               color:#000099;">
        Welcome to Mini - Craiglist!!!</h3>
    <br>
    <h3> Login </h3>
    <p> Username : <input type="text" name="username"></p>
    <p> Password : <input type="text" name="password"></p> 
    <p><input type="submit" value="Login">&nbsp &nbsp<?php if(!empty($loginerr)) echo $loginerr;?> <br>
    <p>New User ? <a href="register.php">Register!!!</a></p>
</form>
</body>
</html>  
