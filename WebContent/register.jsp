<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Basic Page Needs
  ================================================== -->
        <meta charset="utf-8" />
        <title>Register - Online Store Matters</title>

        <!-- Mobile Specific Metas
  ================================================== -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="Creative Portfolio Template" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0" />
        <meta name="author" content="Themefisher" />
        <meta name="generator" content="Themefisher Kross Template v1.0" />

        <jsp:include page="important-models/head.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="important-models/header.jsp"></jsp:include>

        <!-- page title -->
        <section class="page-title bg-primary position-relative">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="text-white font-tertiary">Registration Area</h1>
                    </div>
                </div>
            </div>
            <!-- background shapes -->
            <img src="images/illustrations/page-title.png" alt="illustrations" class="bg-shape-1 w-100" /> <img src="images/illustrations/leaf-pink-round.png" alt="illustrations" class="bg-shape-2" />
            <img src="images/illustrations/dots-cyan.png" alt="illustrations" class="bg-shape-3" /> <img src="images/illustrations/leaf-orange.png" alt="illustrations" class="bg-shape-4" />
            <img src="images/illustrations/leaf-yellow.png" alt="illustrations" class="bg-shape-5" /> <img src="images/illustrations/dots-group-cyan.png" alt="illustrations" class="bg-shape-6" />
            <img src="images/illustrations/leaf-cyan-lg.png" alt="illustrations" class="bg-shape-7" />
        </section>
        <!-- /page title -->

        <!-- contact -->
        <section class="section section-on-footer" data-background="images/backgrounds/bg-dots.png">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h2 class="section-title">Store Registration Form</h2>
                    </div>
                    <div class="col-lg-8 mx-auto">
                        <div class="bg-white rounded text-center p-5 shadow-down">
                            <div class="col col-lg-12">
                                <form action="RegServlet" method="post">
                                    <div class="mb-3">
                                        <div id="help" class="form-text text-danger">Enter data carefully with no mistakes</div>
                                        <input type="text" class="form-control" name="fname" placeholder="Enter First Name" /> <input type="text" class="form-control" name="lname" placeholder="Enter Last Name" />
                                        <input type="text" class="form-control" name="uname" placeholder="Enter Username" /> <input type="email" class="form-control" name="emailme" placeholder="Enter Email Id" />
                                        <input type="password" class="form-control" name="pass" placeholder="Enter Password" /> <input type="text" class="form-control" name="cpass" placeholder="Enter Password again" /> <br />
                                        <div id="help" class="form-text mb-1 text-danger">Note:-Enter a proper store name</div>
                                        <input type="text" class="form-control" name="storename" placeholder="Enter Storename" /><br />
                                        <input type="radio" name="gender" id="flexRadioDefault1" value="male" /> Male

                                        <input type="radio" name="gender" id="flexRadioDefault1" value="female" /> Female

                                        <input type="radio" name="gender" id="flexRadioDefault1" value="other" /> Other
										<br>
                                        <input type="text" class="form-control" name="dob" id="datepicker" placeholder="Enter Date of birth (YYYY/MM/DD)"/>

                                        <input type="text" class="form-control" name="add1" placeholder="Enter Address line 1" /> <input type="text" class="form-control" name="add2" placeholder="Enter Address line 2" />
                                        <input type="text" class="form-control" name="city" placeholder="Enter City" /> <input type="text" class="form-control" name="state" placeholder="Enter State" />
                                        <input type="text" class="form-control" name="country" placeholder="Enter Country" value="INDIA" />
                                        <div id="help" class="form-text text-danger">We'll never share your details with anyone else.</div>
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" name="checkMe" />
                                        <label class="form-check-label" for="checkbox1">Agree to our terms & conditions</label>
                                    </div>
                                    <button type="submit" class="btn btn-secondary">Register</button>
                                    <p class="clickhere">Already have an account?<a href="login.jsp"> Click here to login</a></p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /contact -->

        <!-- footer -->
        <jsp:include page="important-models/footer.jsp"></jsp:include>
        <!-- /footer -->

        <!-- jQuery -->
        <script src="plugins/jQuery/jquery.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="plugins/bootstrap/bootstrap.min.js"></script>
        <!-- slick slider -->
        <script src="plugins/slick/slick.min.js"></script>
        <!-- filter -->
        <script src="plugins/shuffle/shuffle.min.js"></script>

        <!-- Main Script -->
        <script src="js/script.js"></script>
    </body>
</html>
