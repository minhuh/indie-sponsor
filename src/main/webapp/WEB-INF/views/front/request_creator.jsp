<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <!--A Design by W3layouts Author: W3layout Author URL: http://w3layouts.com License: Creative Commons Attribution 3.0 Unported License URL: http://creativecommons.org/licenses/by/3.0/ -->
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <title>Gift Sign Up Form a Flat Responsive Widget Template :: w3layouts
      </title>
      <!-- Meta tags -->
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <meta charset="utf-8"/>
      <meta
        name="keywords"
        content="Gift Sign up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"/>
      <script>
        addEventListener("load", function () {
          setTimeout(hideURLbar, 0);
        }, false);
        function hideURLbar() {
          window.scrollTo(0, 1);
        }
      </script>
      <!-- Meta tags -->
      <!-- font-awesome icons -->
      <link href="/resources/css/font-awesome-join.css" rel="stylesheet">
        <!-- //font-awesome icons -->
        <!--stylesheets-->
        <link href="/resources/css/style-join.css" rel='stylesheet' type='text/css' media="all">
          <!--//style sheet end here-->
          <link href="https://fonts.googleapis.com/css?family=Barlow:300,400,500,600" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet"></head>
            <body>
              <h1 class="header-w3l-agile">
                Request Creater
              </h1>
              <div class="slid-bothside">
                <div class="slid-left-w3">
                  <!-- Slideshow 4 -->
                  <div class="slider">
                    <div class="callbacks_container">
                      <ul class="rslides" id="slider4">
                        <li>
                          <div class="slider-img">
                            <div class="container">
                              <div class="slider-info">
                                <h4>
                                  <span class="fa fa-gamepad" aria-hidden="true"></span>
                                </h4>
                                <p>
                                  하드웨어 : 사람이 발로 걷어찰 수 있는 컴퓨터의 부분(Jeff Pesis)
                                </p>
                              </div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="slider-img ">
                            <div class="container">
                              <div class="slider-info">
                                <h4>
                                  <span class="fa fa-space-shuttle" aria-hidden="true"></span>
                                </h4>
                                <p>
                                  복잡성을 통제하는 것이 컴퓨터 프로그래밍의 기초다.(Brian Kernigan)
                                </p>
                              </div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="slider-img ">
                            <div class="container">
                              <div class="slider-info">
                                <h4>
                                  <span class="fa fa-comment" aria-hidden="true"></span>
                                </h4>
                                <p>
                                  코드 수를 기준으로 프로그램의 진도를 측정하는 것은 비행기 제작 진도를 무게로 측정하는 것과 같다. (Bill Gates)
                                </p>
                              </div>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="slider-img ">
                            <div class="container">
                              <div class="slider-info">
                                <h4>
                                  <span class="fa fa-trophy" aria-hidden="true"></span>
                                </h4>
                                <p>
                                  좋은 소프트웨어의 기능이란 복잡한 것을 간단하게 보이도록 만드는 것이다. (Grady Booch)
                                </p>
                              </div>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <!-- This is here just to demonstrate the callbacks -->
                    <!-- <ul class="events"> <li>Example 4 callback events</li> </ul>-->
                  </div>
                  <div class="clear"></div>
                </div>
                <div class="slid-right-w3">
                  <form action="#" method="post">

                    <div class="form-left-to-w3l">
                      <input type="text" name="account" placeholder="계좌번호" required="">
                        <div class="clear"></div>
                      </div>

                      <div class="main">
                        <div class="form-left-to-w3l">
                          <input type="text" name="other-contact" placeholder="추가연락처" required=""></div>
                          <div class="btnn">
                            <button type="button">중복확인</button>
                            <br></div>
                          </div>

                          <div class="main">
                            <div class="btnn">
                              <button type="submit">신청하기</button>
                              <br></div>
                              <div class="btnn">
                                <button type="button">취 소</button>
                                <br></div>
                              </div>
                            </form>
                          </div>
                        </div>
                        <div class="copy">
                          <p>&copy;2018 Gift Sign up Form. All Rights Reserved | Design by
                            <a href="http://www.W3Layouts.com" target="_blank">W3Layouts</a>
                          </p>
                        </div>
                        <!--js working-->
                        <script src='/resources/js/jquery-2.2.3.min.js'></script>
                        <!--//js working-->
                        <!--Password -->
                        <script>
                          var password = document.getElementById("password"),
                            confirm_password = document.getElementById("confirm_password");

                          function validatePassword() {
                            if (password.value != confirm_password.value) {
                              confirm_password.setCustomValidity("Passwords Don't Match");
                            } else {
                              confirm_password.setCustomValidity('');
                            }
                          }

                          password.onchange = validatePassword;
                          confirm_password.onkeyup = validatePassword;
                        </script>
                        <!-- //Password -->
                        <!--responsiveslides banner-->
                        <script src="/resources/js/responsiveslides.min.js"></script>
                        <script>
                          // You can also use "$(window).load(function() {"
                          $(function () {
                            // Slideshow 4
                            $("#slider4").responsiveSlides({
                              auto: true,
                              pager: true,
                              nav: false,
                              speed: 900,
                              namespace: "callbacks",
                              before: function () {
                                $('.events').append("<li>before event fired.</li>");
                              },
                              after: function () {
                                $('.events').append("<li>after event fired.</li>");
                              }
                            });

                          });
                        </script>
                        <!--// responsiveslides banner-->
                      </body>
                    </html>
