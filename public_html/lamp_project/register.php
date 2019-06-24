
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
</head>
<body style="font-family:Times New Roman;
	         border:1px solid;
	         height:350px;
	         width:350px;
	         padding-top:10px;
	         padding-left:30px;
	         margin:0 auto;">
        
<?php
    $err = "";
    $count = 0;
    if ($_SERVER["REQUEST_METHOD"] == "POST") {

    	if (empty($_POST['username']) or empty($_POST['password'])) { 
       	   // At least one of the file is empty, display an error
       	   $err =  'Please fill all the fields.';
        } 
   	else {
       	   $username = ($_POST['username']);
           $password = ($_POST['password']);

           //Connect to the database
           $conn = mysqli_connect("localhost", "lamp", "1", "lamp_final_project");
         
           if (!$conn) {
              die ("Connection failed " . $conn->errno);
           }

           //Check if the combination of username and password exists
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
                   $count = $row['id'];
             }
           }

           if ($count == 0) {
              //Store data from the database 
              $sql = "INSERT INTO `lamp_final_project`.`login` (`username`,`password`) VALUES ('$username','$password')";
           
              //Display error message if connection fails.
              if (!mysqli_query($conn, $sql)) {
                 $err =  "Failed to connect to the database :" . $sql . mysqli_error($conn);
              } 
           }
           else {
              $err = "The username and password combination already exists";
           }
        }
    }
?>
<form method = "post" action = "<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" enctype = "multipart/form-data">
    <h3 style="text-align:center;
               font-size:25px;
               font-family:Verdana Times New Roman sans-seriff;
               color:#000099;">
       Register</h3>
    <br>
    <p> Username : <input type="text" name="username"></p>
    <p> Password : <input type="text" name="password"></p>
    <p><input type="submit" value="Register"></p>
    <?php if(!empty($err)) echo $err;?> <br>
</form>
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
       if (empty($err)) {
          echo "Your registration is successful!!!";
?>
       <a href="main.php">Click here to login</a>
<?php
       }	 
    }
?>
</body>
</html>  



