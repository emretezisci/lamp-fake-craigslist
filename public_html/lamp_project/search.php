
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
</head>
<body style="font-family:Times New Roman;
             border:1px solid;	         
	     width:650px;
	     margin:0 auto;">

    <h3><u><center>Search Results</center></u></h3>
    <?php  
         $title = $price = $email = $description = "";
         
         //Connect to the database
         $conn = mysqli_connect("localhost", "lamp", "1", "lamp_final_project");
         if (!$conn) {
            die ("Connection failed " . $conn->errno);
         }

         $search = $_POST['search'];

         //Retrieve the data from the database - Fetch query
         $sql = "SELECT * FROM `Posts` WHERE `Title` LIKE '$search%'";
         
         //Display error message if connection fails.       
         if (!mysqli_query($conn, $sql)) {
             echo "Failed to connect to the database :" . $sql . mysqli_error($conn);
         }  
          
         $result = mysqli_query($conn, $sql);

         // Display the output 
         if (mysqli_num_rows($result) > 0) {
              while($row = mysqli_fetch_assoc($result)) {
               echo "<hr>".
               "<ul><p><li><strong>Title: </strong>".$row['Title']."</li></p>".
               '<img src="images/'.$row['Image_1'].'" width="48%" "float:left" height="auto" />'.
                "<p><strong>Price/Salary: </strong>".$row['Price']."</p>".
                "<p><strong>Description: </strong>".$row['Description']."</p>".
                "<p><strong>Email: </strong>".$row['Email']."</p></ul>";
           echo "<br>";
              }
         }
         else {
              echo "<ul>No results found";
              echo "<br></ul>";
         }
         
        //Close the database connection
        mysqli_close($conn);          
     ?>  
</body>
</html>
