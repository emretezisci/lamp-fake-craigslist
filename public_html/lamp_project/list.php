
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
</head>
<body style="font-family:Times New Roman;
             border:1px solid;	         
	     width:650px;
	     margin:0 auto;">

    <h3><u><center>List of entries</center></u></h3>
    <p><a href="home.html" style="    position: absolute; top: 0; padding: 24px;" >Home</a></p>
    <?php
  
         $subcategory = $location = $sql = $title = $price = $email = $description = "";
         
         //Connect to the database
         $conn = mysqli_connect("localhost", "lamp", "1", "lamp_final_project");
         
         if (!$conn) {
            die ("Connection failed " . $conn->errno);
         }

         //Fetch the subcategory ID of the subcategory selected by the user
         if (isset($_GET['link'])){
            switch ($_GET['link']) {
                case "antiques":
                    $subcategory='11';
                    break;
                case "boats":
                    $subcategory='12';
                    break;
                case "computer":
                    $subcategory='13';
                    break;
                case "automotive":
                    $subcategory='21';
                    break;
                case "lesson":
                    $subcategory='22';
                    break;
                case "garden":
                    $subcategory='23';
                    break;
                case "business":
                    $subcategory='31';
                    break;
                case "marketing":
                    $subcategory='32';
                    break;
                case "engineering":
                    $subcategory='33';
                    break;
                case "usa":
                    $location='11';
                    break;
                case "india":
                    $location='21';
                    break;
                case "sweden":
                    $location='31';
                    break;
                case "cupertino":
                    $location='11';
                    break;
                case "mumbai":
                    $location='21';
                    break;
                case "stockholm":
                    $location='31';
                    break;
             }
         }

         //Retrieve the data from the database - Fetch query
         if (!empty($subcategory)) {
            $sql = "SELECT * FROM `Posts` WHERE `SubCategory_ID` = '$subcategory'";
         }
         if (!empty($location)) {
            $sql = "SELECT * FROM `Posts` WHERE `Location_ID` = '$location'";
         }   

         //Display error message if connection fails.
         if (!mysqli_query($conn, $sql)) {
             echo "Failed to connect to the database :" . $sql . mysqli_error($conn);
         }  
          
         $result = mysqli_query($conn, $sql);

         // Display the output for each row retrived
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


