<?php
   include 'config.php';
   session_start();
   error_reporting(0);
   $user_id=$_SESSION['user_id'];
    $t_price=$_SESSION['pri'];
    $address=$_SESSION['address'];
    $name=$_SESSION['name'];
    $email=$_SESSION['email'];
    $number=$_SESSION['number'];
    $method=$_SESSION['method'];
    $placed_on=$_SESSION['placed_on'];
    $total_products=$_SESSION['total_product'];
    if(isset($_POST['sub']))
    {

        mysqli_query($conn, "INSERT INTO `orders`(user_id, name, number, email, address, product_name, total_price, placed_on) VALUES('$user_id', '$name', '$number', '$email',  '$address', '$total_products', '$t_price', '$placed_on')") or die('query failed');
         mysqli_query($conn,"INSERT INTO `payment_status`( `user_id` , `name`, `product_name`, `price`, `payment_status`, `method`) VALUES ('$user_id','$name','$total_products','$t_price','padding','$method')");
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
            margin-top: 250px;
            margin-bottom:150px;
            margin-left:50px;
            margin-right:50px;
        }
    </style>

    <title>OP</title>
</head>
<body >
<div class="add-products">

    <form action="" method="post">
                  <h3 style="color:white;">Payment</h3>
                  <p style="color:white; font-size:25px;"> Price: <?php  echo 'RS.'. $t_price;   ?></p><br>
                 <input type="submit" name="sub" value="Pay Now" class="btn">&nbsp &nbsp &nbsp<a href="home.php" style="text-decoration:underline; color:white; font-size:20px;">Back</a></td>
    </form>
</body>
</html>