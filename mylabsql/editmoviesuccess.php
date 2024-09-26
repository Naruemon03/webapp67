<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="stylemovie.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Movie Data</title>
</head>
<body>
<?php
require 'conn.php';

// Update the movie data
$sql_update = "UPDATE movid SET movname='$_POST[movname]', movinformation='$_POST[movinformation]', mtime='$_POST[mtime]', mdate='$_POST[mdate]' WHERE movid='$_POST[movid]'";
$result = $conn->query($sql_update);

// Check if the update was successful
if (!$result) {
    die("Error: " . $conn->error);
} else {
    echo "Edit Success <br>";
    
    // Display current date and time
    date_default_timezone_set('Your/Timezone'); // Set your timezone
    echo "Current Date and Time: " . date("Y-m-d H:i:s") . "<br>";
    
    // Redirect after a short delay
    header("refresh: 1; url=moviemainmenu.php");
}

// Close the connection
$conn->close();
?>

</body>
</html>
