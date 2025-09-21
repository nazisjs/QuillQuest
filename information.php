<?php
session_start();
$conn = new mysqli("localhost", "root", "", "book_web");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$book_id = $_GET['book_id'];

if (!is_numeric($book_id)) {
    die("Invalid book ID.");
}


$search = $conn->prepare("SELECT * FROM book_information WHERE book_id = ?");
$search->bind_param("i", $book_id);
$search->execute();
$result = $search->get_result();

if ($result->num_rows > 0) {
    $fetch = $result->fetch_assoc();
} else {
    die("No book"); 
}

$search->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="information2.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Information about book</title>
</head>
<header>
<nav>
        <div class="navbar">
        <a href="mainpage2.php"><img class="logo" src="pics/logogo.svg" alt="Logo"></a>
        <ul><li><a class="love">| A book world</a></li></ul>
        <i class="fa fa-bars"></i>
</div>
        <ul class="nav-links">
            <li><a class="line" href="">Orders</a></li>
            <li><a class="line" href="C:\Users\Murat\Desktop\web\customer_reviews\review.html">Customer Reviews</a></li>
            <li><a class="line" href="C:\Users\Murat\Desktop\web\blog\blog.html">Blog</a></li>
            <a href="operation2.php"><button class="reg">Register</button></a>
           <a href="user3.php"><i class="fa fa-user"></i></a>
          <a href="order_p.php"><i class="fa fa-shopping-cart"></i></a>
        </ul>
    </nav>
</header>

<body>
    <div class="informationn">
        <div class="containerr">
            <img class="images" src="pics/<?php echo ($fetch['book_image']); ?>" alt="Book Image" style="width: 250px; height: 350px;margin-bottom:50px;">
</div>
      <div class="containerr">      
            <div class="text"><h3>Title: <?php echo ($fetch['title']); ?></h3>
            <h3>Author: <?php echo ($fetch['author']); ?></h3>
            <h3>Genre: <?php echo ($fetch['genre']); ?></h3>
            <h3>Release date: <?php echo ($fetch['release_date']); ?></h3>
            <h3>ISBN: <?php echo ($fetch['isbn']); ?></h3>
            <h3>Description: <?php echo ($fetch['description']); ?></h3>
            <h3 class="money"><span>Price:</span> <?php echo ($fetch['price']); ?></h3>
            <a href="order_p.php?book_name=<?php echo urlencode($fetch['title']); ?>&price=<?php echo $fetch['price']; ?>">
                <button class="btnss"><i class="fa fa-shopping-cart"></i> Order Now</button>
</a>
</div>
</div>
</div>
<div class="containerr2">
<section class="content" style="background-color: #ffff;box-shadow:4px 4px 8px 4px #ccc;display:flex;">
  <div class="container my-5 py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-10">
        <div class="card text-body">
          <div class="card-body p-4">
            <h4 class="mb-0">Recent comments</h4>
            <p class="fw-light mb-4 pb-2">Latest Comments section by users</p>

            <div class="d-flex flex-start">
              <img class="rounded-circle shadow-1-strong me-3"
                src="pics/user.png" alt="avatar" width="60"
                height="60" />
              <div>
                <h6 class="fw-bold mb-1">Maggie Marsh</h6>
                <div class="d-flex align-items-center mb-3">
                  <p class="mb-0">
                    March 04, 2025
                    <span class="badge bg-primary">Approved</span>
                  </p>
                </div>
                <p class="mb-0">
                "This story truly touched me! I couldn’t put the book down and finished it in one sitting. The author’s writing is so captivating that I’m definitely going to buy more books from them. Highly recommend this one to all fans of emotional and gripping stories!"
                </p>
              </div>
            </div>
          </div>

          <hr class="my-0" />

          <div class="card-body p-4">
            <div class="d-flex flex-start">
              <img class="rounded-circle shadow-1-strong me-3"
                src="pics/user.png" alt="avatar" width="60"
                height="60" />
              <div>
                <h6 class="fw-bold mb-1">Lara Stewart</h6>
                <div class="d-flex align-items-center mb-3">
                  <p class="mb-0">
                    March 15, 2025
                    <span class="badge bg-success">Approved</span>
                  </p>
                </div>
                <p class="mb-0">
                "What a fantastic selection of books! I was able to find a rare edition I’ve been hunting for ages. I appreciate the wide range of genres offered here, and the customer service was top-notch. This is now my go-to place for hard-to-find books!"
                </p>
              </div>
            </div>
          </div>

          <hr class="my-0" style="height: 1px;" />

          <div class="card-body p-4">
            <div class="d-flex flex-start">
              <img class="rounded-circle shadow-1-strong me-3"
                src="pics/user.png" alt="avatar" width="60"
                height="60" />
              <div>
                <h6 class="fw-bold mb-1">Alexa Bennett</h6>
                <div class="d-flex align-items-center mb-3">
                  <p class="mb-0">
                    March 24, 2024
                    <span class="badge bg-danger">Approved</span>
                  </p>
                </div>
                <p class="mb-0">
                "What an incredible book! I couldn’t put it down and found myself thinking about it even after finishing it. The writing style is unique, and the characters are so well developed. I’m already planning to reread it because there’s so much depth I missed the first time. A must-read for sure!"
                </p>
              </div>
            </div>
          </div>

          <hr class="my-0" />

          <div class="card-body p-4">
            <div class="d-flex flex-start">
              <img class="rounded-circle shadow-1-strong me-3"
                src="pics/user.png" alt="avatar" width="60"
                height="60" />
              <div>
                <h6 class="fw-bold mb-1">Betty Walker</h6>
                <div class="d-flex align-items-center mb-3">
                  <p class="mb-0">
                    March 30, 2021
                    <span class="badge bg-primary">Pending</span>
                  </p>
                </div>
                <p class="mb-0">
                "I had an amazing experience with this store. What I loved most was the personalized approach – they really listened to my preferences and suggested the perfect books for me. I’m not usually someone who likes recommendations, but they nailed it! The entire process was smooth, and I’m extremely happy with my purchase."
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</div>
    <footer class="footer">
        <div class="container footer-content">
            <div class="footer-logo-section">
                <img class="logo2" src="pics/logogo2.svg" alt="Logo">
                <div class="socials">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <div class="footer-col">
                <h4>| For Customer</h4>
                <ul>
                    <li><a href="order_p.php">Orders</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>| Quick Links</h4>
                <ul>
                    <li><a href="blog.php">Blog</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>| Help & Contacts</h4>
                <ul>
                    <li><i class="fa fa-phone"></i><a href="#">87055057027</a></li>
                    <li><i class="fa fa-clock"></i><a href="#">Mo-Fri, 9AM to 11 PM</a></li>
                    <li><i class="fa fa-envelope"></i><a href="#">qqbook@mail.ru</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h5 class="question">If you have questions, you can contact us or we will do it for you.</h5>
                <button class="btns">Request a call</button>
                <div class="card-icons">
                    <a href="https://www.visa.com.kz/"><i class="fa fa-cc-visa"></i></a>
                    <a href="https://www.mastercard.kz/"><i class="fa fa-cc-mastercard"></i></a>
                </div>
            </div>
        </div>
        <hr><h6 class="rights">All Rights Reserved 2024</h6></hr>
    </footer>
</body>
<script>
      let burger = document.querySelector(".fa-bars"); // например, кнопка/иконка меню
      let navul = document.querySelector(".nav-links");

      burger.addEventListener("click", () => {
      navul.classList.toggle("active");
});
    </script>
</html>
