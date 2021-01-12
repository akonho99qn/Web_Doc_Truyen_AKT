<?php

    session_start();

    if(isset($_SESSION['role']) && isset($_SESSION['email'])){
        $dangnhap = "<a class='nav-link' >".$_SESSION['email']."</a>";
        $dangky = "<a class='nav-link' href='./process/logout.php'>Đăng Xuất</a>";
    }else{
        $dangnhap = "<a class='nav-link' href='login.php'>Đăng Nhập</a>";
        $dangky = "<a class='nav-link' href='signup.php'>Đăng Ký</a>";
    }
    $id_truyen = $_GET['id_truyen'];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AKT-Truyện</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <header>
        <div class="container div_header">
            <nav class="navbar navbar-expand-lg navbar-light ">
                <a class="navbar-brand" href="index.php" style="color: white;">AKT</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.php">Trang chủ <span class="sr-only">(current)</span></a>
                        </li>

                         <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle menu-style" href="#" id="navbarDropdown" role="button"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Thể Loại
                  </a>
                </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Thể Loại
                            </a>
                            <div class="dropdown-menu" style="width: 600px;" aria-labelledby="navbarDropdown">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <a class="dropdown-item" href="category.html">Action</a>
                                            <a class="dropdown-item" href="category.html">Another action</a>
                                            <a class="dropdown-item" href="category.html">Something else here</a>
                                        </div>
                                        <div class="col-md-4">
                                            <a class="dropdown-item" href="category.html">Action</a>
                                            <a class="dropdown-item" href="category.html">Another action</a>
                                            <a class="dropdown-item" href="category.html">Something else here</a>
                                        </div>
                                        <div class="col-md-4">
                                            <a class="dropdown-item" href="category.html">Action</a>
                                            <a class="dropdown-item" href="category.html">Another action</a>
                                            <a class="dropdown-item" href="category.html">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Danh mục
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="danhmuc.html">Truyện Đã Hoàn Thành</a>
                                <a class="dropdown-item" href="danhmuc.html">Truyện Mới</a>
                                <a class="dropdown-item" href="danhmuc.html">Truyện Mới Cập Nhật</a>

                            </div>
                        </li>

                    </ul>

                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-5" type="search" placeholder="Tên truyện hoặc tên tác giả"
                            aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>

                    <ul class="navbar-nav ml-auto">


            <li class="nav-item">
              <!-- <a class="nav-link" href="login.php">Đăng Nhập</a> -->
              <?php echo $dangnhap; ?>
            </li>
            <li class="nav-item ">
              <!-- <a class="nav-link" href="signup.php">Đăng Ký</a> -->
              <?php echo $dangky; ?>
            </li>
          </ul>
                </div>

            </nav>
        </div>
    </header> 

    <!-- ========================================================= -->

    <div class="container" style="margin-top: 20px;">
        <div class="row">
            <div class="col-md-8 col-lg-8 col-xs-8 col-sm-12 truyen-main">
                <div class="row" id="showtruyen">
                    <!-- <div class="col-md-4 col-lg-4 col-sm-12 col-12" style="padding: 0; margin-bottom: 20px;">
                        <img src="../public/img/img_truyen.jpg" width="100%" alt="">
                    </div> -->
                   <!--  <div class="col-md-8 col-lg-8 col-sm-12 col-12">
                        <div style="display: block; margin: auto; line-height: 2;">
                            <div style="line-height: 2.5;">
                                <h3 style="text-transform: uppercase; font-weight: bold;">trọng sinh đô thị tu tiên</h3>
                                <p class="str-name">Tác giả: <a href="author.html"
                                        style="text-transform: capitalize;">Tên tác giả</a>
                                </p>
                                <p class="str-name">Thể loại: <a href="category.html"
                                        style="text-transform: capitalize;">Tên thể
                                        loại</a></p>
                                <p>Trạng thái: <span style="text-transform: capitalize;">Trạng thái</span></p>
                                <p>Độ dài: <span>999</span></p>
                            </div>
                            <div style="margin-top: 35px; margin-bottom: 10px;">
                                <ul class="btn_gt">
                                    <li class="">
                                        <a class="" href="#gioithieu">Giới Thiệu</a>
                                    </li>
                                    <li style="border: 1px solid #5cabb8;
                                    background: #5cabb8;">
                                        <a href="#danhsach">Danh Sách Chương</a>
                                    </li>
                                </ul>
                                <a href="detail.php" class="btn_story">Đọc Truyện</a>
                            </div>
                        </div>
                    </div> -->
                </div>
                <div id="gioithieu">
                    <!-- <h5 class="title-name">Giới thiệu truyện <span
                            style="text-transform: capitalize; font-weight: bold; ">asdasd
                            asdasd </span></h5>
                    <hr style="margin-top: 0;">

                    <p style="line-height: 2;">Hai con người hai tính cách hoàn toàn trái ngược nhau.

                        Nữ chính là Hồ Kiều tính tình bưu hãn lại mạnh mẽ,

                        Còn nam chính là Hứa Thanh Gia tính cách lại văn nhã.

                        Cuộc sống sau khi cưới của họ là như vậy:

                        Hồ Kiều: ”Tướng công chàng nói cái gì?”

                        Hứa Thanh Gia: ”… Nàng thân là phụ nhân, phải tuân thủ nghiêm ngặt phụ đức…”

                        Hồ Kiều: ”Tướng công ta nghễnh ngãng, chàng tới gần đây mà nói…” Chậm rãi giơ đao trong tay lên…

                        Hứa Thanh Gia… Hứa Thanh Gia nặn ra một nụ cười cho qua, “Nương tử… Nương tử nói có lý!”

                        Nguyên bản là thuần phụ ký, cuối cùng lại biến thành thuần phu ký.

                        Hồ Kiều: ”…” Ta cái gì cũng chưa làm!

                        Hứa Thanh Gia: “… Nương tử nói có lý!” Nội tâm lại yên lặng rơi lệ: Người nào có thể cho ta
                        biết, có ai làm đại quan mà vẫn sợ vợ không? Đây không phải là sự thật đâu!</p> -->
                </div>
                <div id="danhsach">
                    <h5 class="title-name">Danh sách chương</h5>
                    <hr style="margin-top: 0;">
                    <div class="container" >
                        <div class="row" id="sochuong">
                            <div class="col-md-6 col-sm-12 col-12">
                                <!-- <ul class="detail">

                                    <li>
                                        <a href="detail.php">Chương 1: Tên chương </a>
                                    </li>
                                    
                                </ul> -->
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- -------------------- end---------------- -->
            <div class="col-md-4 col-lg-4 col-xs-4 col-sm-12">
                <div style="background: #ecf0f1;">
                    <div class="title" style="background: #03a9f4;">
                        <p style="font-size: 18px;">Thể loại</p>
                    </div>
                    <!-- =====================================BEGIN CATEGORY============================= -->
                    <div class="row" style="margin: auto;">
                        <div class="col-md-6 col-lg-6 col-6" style="text-align: center;line-height: 25px;">
                            <p><a href="category.html" class="cls_hover">Tên thể loại</a></p>
                            <p><a href="category.html" class="cls_hover">Tên thể loại</a></p>
                            <p><a href="category.html" class="cls_hover">Tên thể loại</a></p>
                           
                        </div>
                        <div class="col-md-6 col-lg-6 col-6" style="text-align: center;line-height: 25px;">
                            <p><a href="category.html" class="cls_hover">Tên thể loại</a></p>
                            <p><a href="category.html" class="cls_hover">Tên thể loại</a></p>
                            <p><a href="category.html" class="cls_hover">Tên thể loại</a></p>
                           
                        </div>
                    </div>
                    <!-- ======================================END CATEGORY================================ -->
                </div>
                <div class="title" style="background: #28a745;">
                    <p style="font-size: 18px;">Truyện Mới Cập Nhật</p>
                </div>
                <!-- ==============================NEW STORIES========================================= -->
                <div class="row" style="margin: auto;">
                    <div class="col-lg-2 col-md-2 col-sm-2 col-2" style="margin: auto;">
                        <div>
                            <p class="number" style="border: 1px solid #e74c3c;background:  #e74c3c;">1</p>
                        </div>
                    </div>
                    <div class="col-lg-10 col-md-10 col-sm-10 col-10" style="padding: 0;">
                        <p><a href="story.html" class="new_story" style="color: teal; font-weight: 500;">Trọng Sinh Đô
                                Thị Tu
                                Tiên</a></p>
                        <p><a href="category.html" class="new_story">Tên thể loại</a></p>
                    </div>
                    <!-- =================end========================== -->
                    
                    <!-- =================end========================== -->


                </div>
                <!-- ==============================NEW STORIES========================================= -->

            </div>
        </div>
    </div>





    <!-- ========================================================= -->





    <div class="container-fluid" style="padding: 0;line-height: 30px;">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-lg-4 col-sm-12 col-12 ">
                        <p class="ft_title">Giới thiệu</p>
                        <p>
                            AKT-Truyện - Đọc truyện online, đọc truyện chữ, truyện hay. Website luôn cập nhật những bộ
                            truyện mới
                            thuộc
                            các thể loại đặc sắc như truyện tiên hiệp, truyện kiếm hiệp, hay truyện ngôn tình một cách
                            nhanh nhất. Hỗ
                            trợ
                            mọi thiết bị như di động và máy tính bảng.
                        </p>
                    </div>
                    <div class="col-md-4 col-lg-4 col-sm-6 col-6">
                        <p class="ft_title">Thể loại</p>
                        <a href="#" class="cls_hover" style="color: white;">Tất cả thể loại</a>
                    </div>
                    <div class="col-md-4 col-lg-4 col-sm-6 col-6">
                        <p class="ft_title">Thông tin liên hệ</p>
                        <p><i class="fa fa-envelope" aria-hidden="true"></i> Email: akttruyen@gmail.com</p>
                        <p><i class="fa fa-phone" aria-hidden="true"></i> Phone: 01234567871</p>


                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- js bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
        crossorigin="anonymous"></script>
    <script>
    const url ="./data/show_info_truyen.php?id_truyen="+ <?php echo $id_truyen; ?>+"";
    fetch(url).then(
      res=>{
        res.json().then(
          data=>{
            console.log(data);

            if(data.length > 0) {

              var temp = "";
              data.forEach((u)=> {
                
               
                
                temp += " <div class='col-md-4 col-lg-4 col-sm-12 col-12' style='padding: 0; margin-bottom: 20px;'><img src='"+ u.hinhanh +"' width='100%' alt=''></div><div class='col-md-8 col-lg-8 col-sm-12 col-12'><div style='display: block; margin: auto; line-height: 2;'><div style='line-height: 2.5;'><h3 style='text-transform: uppercase; font-weight: bold;'>"+u.name+"</h3><p class='str-name'>Tác giả: <a href='' style='text-transform: capitalize;'>"+u.ten+"</a></p><p class='str-name'>Thể loại: <a href='' style='text-transform: capitalize;'>"+u.ten_tl+"</a></p><p>Trạng thái: <span style='text-transform: capitalize;'>"+u.name_tt+"</span></p><p>Độ dài: <span>999</span></p></div><div style='margin-top: 35px; margin-bottom: 10px;'><ul class='btn_gt'><li class=''><a class='' href='#gioithieu'>Giới Thiệu</a> </li><li style='border: 1px solid #5cabb8;                    background: #5cabb8;'><a href='#danhsach'>Danh Sách Chương</a> </li></ul><a href='detail.php' class='btn_story'>Đọc Truyện</a>      </div></div></div>"

                })
            
            document.getElementById("showtruyen").innerHTML = temp;
            }
          }
          )
      }
      )
    </script> 

       <!-- show gioi thieu truyen -->
    <script>
    const url1 ="./data/show_info_truyen.php?id_truyen="+ <?php echo $id_truyen; ?>+"";
    fetch(url1).then(
      res=>{
        res.json().then(
          data=>{
            console.log(data);

            if(data.length > 0) {

              var temp1 = "";
              data.forEach((u)=> {
                
                
                
                temp1 += "<h5 class='title-name'>Giới thiệu truyện <span                style='text-transform: capitalize; font-weight: bold; '></span></h5><hr style='margin-top:0;'> <p style='line-height: 2;'>"+u.mota +"</p>"                 

                })
            
            document.getElementById("gioithieu").innerHTML = temp1;
            }
          }
          )
      }
      )
    </script>
<!-- Show cac chuong -->
    <script>
    const url2 ="./data/count_chap.php?id_truyen="+ <?php echo $id_truyen; ?>+"";
    fetch(url2).then(
      res=>{
        res.json().then(
          data=>{
            console.log(data);

            if(data.length > 0) {

              var temp2 = "";
              data.forEach((u)=> {

                
            
                 temp2 += "<div class='col-md-6 col-sm-12 col-12'><ul class='detail'><li><a href='detail.php?ten_chuong="+u.name_chap+"&id_truyen="+<?php echo $id_truyen;?>+"&tentruyen="+u.name+"&chap="+u.chap+"'>Chương "+u.chap+": "+u.name_chap+"</a></li></ul></div>"                 

                })
            
            document.getElementById("sochuong").innerHTML = temp2;
            }
          }
          )
      }
      )
    </script>      
</body>