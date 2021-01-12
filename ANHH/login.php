<!DOCTYPE php>
<php lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AKT-Truyện</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="public/css/login.css">
    <link rel="stylesheet" href="public/css/style.css">
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

                        <!-- <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle menu-style" href="#" id="navbarDropdown" role="button"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Thể Loại
                  </a>
                </li> -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Thể Loại
                            </a>
                            <div class="dropdown-menu" style="width: 600px;" aria-labelledby="navbarDropdown">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <a class="dropdown-item" href="category.php">Action</a>
                                            <a class="dropdown-item" href="category.php">Another action</a>
                                            <a class="dropdown-item" href="category.php">Something else here</a>
                                        </div>
                                        <div class="col-md-4">
                                            <a class="dropdown-item" href="category.php">Action</a>
                                            <a class="dropdown-item" href="category.php">Another action</a>
                                            <a class="dropdown-item" href="category.php">Something else here</a>
                                        </div>
                                        <div class="col-md-4">
                                            <a class="dropdown-item" href="category.php">Action</a>
                                            <a class="dropdown-item" href="category.php">Another action</a>
                                            <a class="dropdown-item" href="category.php">Something else here</a>
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
                                <a class="dropdown-item" href="danhmuc.php">Truyện Đã Hoàn Thành</a>
                                <a class="dropdown-item" href="danhmuc.php">Truyện Mới</a>
                                <a class="dropdown-item" href="danhmuc.php">Truyện Mới Cập Nhật</a>

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
                            <a class="nav-link" href="login.php">Đăng Nhập</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="signup.php">Đăng Ký</a>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </header>
    <!-- ========================================================= -->
    <div class="container-fluid bkg">

        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                        <div class="card-body">
                            <h5 class="card-title text-center">Sign In</h5>
                            <form class="form-signin" action="./process/role.php" method="GET">
                                <div class="form-label-group">
                                    <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address"
                                        required autofocus>
                                    <label for="inputEmail">Email address</label>
                                </div>

                                <div class="form-label-group">
                                    <input type="password" id="inputPassword" name="password" class="form-control"
                                        placeholder="Password" required>
                                    <label for="inputPassword">Password</label>
                                </div>

                                <div class="custom-control custom-checkbox mb-3">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                    <label class="custom-control-label" for="customCheck1">Remember password</label>
                                </div>
                                <input type="submit" value="Sign In" name="" class="btn btn-lg btn-primary btn-block text-uppercase">
                                <!-- <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign
                                    in</button> -->
                                <div class="row mb-4 px-3"> <small class="font-weight-bold">Don't have an account? <a
                                            class="text-danger " href="/signup.php">Register</a></small> </div>

                                <hr class="my-4">
                                <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit">
                                    <i class="fa fa-google" aria-hidden="true"></i>
                                    Sign in with Google</button>
                                <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i
                                        class="fa fa-facebook" aria-hidden="true"></i>
                                    Sign in with Facebook</button>
                            </form>
                        </div>
                    </div>
                </div>
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
</body>