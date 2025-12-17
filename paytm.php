<?php
    session_start();
    error_reporting(0);
    $p=$_SESSION['pri'];
    if(isset($_POST["pay"]))
    {
        header('location:orders.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="css/admin_style.css">
<style>
        .add-products
        {
            margin-top: 100px;
            margin-bottom:200px;
            margin-left:50px;
            margin-right:50px;
        }
</style>
    <title>Paytm</title>
</head>
<body>
<div class="add-products">

<form action="" method="post">
  
        <h1 style="color:white;">Online Payment</th><br><br>
        <a href="op.php"><img src="images/paytm.png" alt="" height="300px" width="300px"></a><br><br>
        <p style="color:white;" align="center"><?php echo'Price : RS. '. $p .'/-';?>
</form>
</body>
</html>