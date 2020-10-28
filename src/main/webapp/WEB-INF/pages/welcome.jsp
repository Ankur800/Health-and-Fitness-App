<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="java.io.*,java.util.*,java.sql.*"%>

<html>

    <head>
        <script
              src="https://code.jquery.com/jquery-3.5.1.min.js"
              integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
              crossorigin="anonymous">
        </script>
    </head>

    <head>
        <link rel="stylesheet" type="text/css" href="/static/css/navigation.css">
    </head>

    <body>

         <div class="grid-container">
           <div class="menu-icon">
            <i class="fas fa-bars header__menu"></i>
          </div>

          <header class="header">
            <div class="header__search">Fat to Fit</div>
            <div class="header__avatar">${USER.name}</div>
          </header>

          <aside class="sidenav">
            <div class="sidenav__close-icon">
              <i class="fas fa-times sidenav__brand-close"></i>
            </div>
            <ul class="sidenav__list">
              <a href="/user/welcome"><li class="sidenav__list-item">Dashboard</li></a>
              <a href="/user/set-task"><li class="sidenav__list-item">Add a new Task</li></a>
              <a href="/user/calories-intake"><li class="sidenav__list-item">Calculate calories Intake</li></a>
              <a href="/user/task-list"><li class="sidenav__list-item">My Tasks</li></a>
              <a href="/user/my-location"><li class="sidenav__list-item">My Location</li></a>
            </ul>
          </aside>

          <main class="main">

            <div class="main-header" style="height: 100px;">
                  <div class="main-header__heading" style="font-size: 60px;">My Achievement</div>
                  <div class="main-header__updates" style="font-size:15px; color:blue; padding-right:250px;"><img style="height: 120px; width: 100px" src="/static/medals/${TIER}.png"></div>
                  <!-- AddToAny BEGIN -->
                  <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
                  <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
                  <a class="a2a_button_facebook"></a>
                  <a class="a2a_button_twitter"></a>
                  <a class="a2a_button_email"></a>
                  </div>
                  <script async src="https://static.addtoany.com/menu/page.js"></script>
                  <!-- AddToAny END -->
            </div>

            <div class="main-header">
              <div class="main-header__heading">${USER.user_comment}</div>
              <div class="main-header__updates" style="font-size:15px; color:blue; padding-right:250px; padding-top:20px;"> ... Always Remember Your Pledge</div>
            </div>

            <div class="main-header">
              <div class="main-header__updates" style="font-size:40px; padding-left:30%;">Your Personal Information</div>
            </div>

            <div class="main-overview">
              <div class="overviewcard">
                <div class="overviewcard__icon">Height</div>
                <div class="overviewcard__info" style="color:#FEE715FF;">${USER.height} cms</div>
              </div>
              <div class="overviewcard">
                <div class="overviewcard__icon">Weight</div>
                <div class="overviewcard__info" style="color:#FEE715FF;">${USER.weight} Kgs</div>
              </div>
              <div class="overviewcard">
                <div class="overviewcard__icon">Gender</div>
                <div class="overviewcard__info" style="color:#FEE715FF;">${USER.gender}</div>
              </div>
              <div class="overviewcard">
                <div class="overviewcard__icon">Age</div>
                <div class="overviewcard__info" style="color:#FEE715FF;">${USER.age}</div>
              </div>
            </div>

            <div class="main-cards">
              <div class="card" style="background:#FCF951FF">
                    <p style="color: #422057FF; font-weight: bold; font-size:30px;">Your Current Fitness</p>
                    <p style="color: #422057FF; font-weight: bold; font-size:30px;">${USER.current_fitness}</p>
                    <p style="color: blue; font-weight: bold; font-size: 20px;">------------------------------------------------------------------------------</p>
                    <p style="color: green; font-weight: bold; font-size:30px;">Your Fitness Goal</p>
                    <p style="color: green; font-weight: bold; font-size:30px;">${USER.fitness_goals}</p>
              </div>
              <div class="card">
                    <p style="font-size:30px; color: #FEE715FF; font-weight: bold;">Your BMI</p>
                    <p style="color: #FFF; font-weight: bold; font-size:30px;">${BMI.BMI}</p>
              </div>
              <div class="card">
                    <p style="font-size:30px; color: #FEE715FF; font-weight: bold;">Suggestions</p>
                    <p style="font-size:20px; color: #FFF; font-weight: bold;">${BMI.BMIAdvice}</p>
              </div>
            </div>
          </main>

          <footer class="footer">
            <div class="footer__copyright">Turn Fat into FIT!</div>
            <div class="footer__signature">Commit to be fit.</div>
          </footer>
        </div>

    </body>

    <script>

        const menuIconEl = $('.menu-icon');
        const sidenavEl = $('.sidenav');
        const sidenavCloseEl = $('.sidenav__close-icon');

        // Add and remove provided class names
        function toggleClassName(el, className) {
          if (el.hasClass(className)) {
            el.removeClass(className);
          } else {
            el.addClass(className);
          }
        }

        // Open the side nav on click
        menuIconEl.on('click', function() {
          toggleClassName(sidenavEl, 'active');
        });

        // Close the side nav on click
        sidenavCloseEl.on('click', function() {
          toggleClassName(sidenavEl, 'active');
        });

    </script>

</html>