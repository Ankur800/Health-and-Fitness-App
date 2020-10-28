<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

    <style>

        body {
          margin: 0;
          padding: 0;
          color: #000;
          font-family: 'Open Sans', Helvetica, sans-serif;
          box-sizing: border-box;
        }

        /* Assign grid instructions to our parent grid container, mobile-first (hide the sidenav) */
        .grid-container {
          display: grid;
          grid-template-columns: 1fr;
          grid-template-rows: 50px 1fr 50px;
          grid-template-areas:
            'header'
            'main'
            'footer';
          height: 100vh;
        }

        .menu-icon {
          position: fixed; /* Needs to stay visible for all mobile scrolling */
          display: flex;
          top: 5px;
          left: 10px;
          align-items: center;
          justify-content: center;
          background-color: #DADAE3;
          border-radius: 50%;
          z-index: 1;
          cursor: pointer;
          padding: 12px;
        }

        /* Give every child element its grid name */
        .header {
          grid-area: header;
          display: flex;
          align-items: center;
          justify-content: space-between;
          padding: 0 16px;
          background-color: #648ca6;
          font-size: 40px;
          font-weight: bold;
        }

        /* Make room for the menu icon on mobile */
        .header__search {
          margin-left: 42px;
        }

        .sidenav {
          grid-area: sidenav;
          display: flex;
          flex-direction: column;
          height: 100%;
          width: 240px;
          position: fixed;
          overflow-y: auto;
          transform: translateX(-245px);
          transition: all .6s ease-in-out;
          box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.16), 0 0 0 1px rgba(0, 0, 0, 0.08);
          z-index: 2; /* Needs to sit above the hamburger menu icon */
          background-color: #394263;
        }

        .sidenav.active {
          transform: translateX(0);
        }

        .sidenav__close-icon {
          position: absolute;
          visibility: visible;
          top: 8px;
          right: 12px;
          cursor: pointer;
          font-size: 20px;
          color: #ddd;
        }

        .sidenav__list {
          padding: 0;
          margin-top: 85px;
          list-style-type: none;
        }

        .sidenav__list-item {
          padding: 20px 20px 20px 40px;
          color: #ddd;
        }

        .sidenav__list-item:hover {
          background-color: rgba(255, 255, 255, 0.2);
          cursor: pointer;
        }

        .main {
          grid-area: main;
          background-color: #8fd4d9;
        }

        .main-header {
          display: flex;
          justify-content: space-between;
          margin: 20px;
          padding: 20px;
          height: 30px;
          background-color: #101820FF;
          color: #FEE715FF;
          font-size : 25px;
          font-weight : bold;
        }

        .main-overview {
          display: grid;
          grid-template-columns: repeat(auto-fit, minmax(265px, 1fr));
          grid-auto-rows: 94px;
          grid-gap: 20px;
          margin: 20px;
        }

        .overviewcard {
          display: flex;
          align-items: center;
          justify-content: space-between;
          padding: 20px;
          background-color: #603F83FF;
          font-size: 30px;
          font-weight: bold;
        }

        .main-cards {
          column-count: 1;
          column-gap: 20px;
          margin: 20px;
        }

        .card {
          display: flex;
          flex-direction: column;
          align-items: center;
          width: 100%;
          background-color: #2C5F2DFF;
          margin-bottom: 20px;
          -webkit-column-break-inside: avoid;
          padding: 24px;
          box-sizing: border-box;
        }

        /* Force varying heights to simulate dynamic content */
        .card:first-child {
          height: 235px;
        }

        .card:nth-child(2) {
          height: 235px;
        }

        .card:nth-child(3) {
          height: 235px;
        }

        .card:nth-child(4) {
          height: 235px;
        }

        .footer {
          grid-area: footer;
          display: flex;
          align-items: center;
          justify-content: space-between;
          padding: 0 16px;
          background-color: #648ca6;
        }

        /* Non-mobile styles, 750px breakpoint */
        @media only screen and (min-width: 46.875em) {
          /* Show the sidenav */
          .grid-container {
            grid-template-columns: 240px 1fr;
            grid-template-areas:
              "sidenav header"
              "sidenav main"
              "sidenav footer";
          }

          .header__search {
            margin-left: 0;
          }

          .sidenav {
            position: relative;
            transform: translateX(0);
          }

          .sidenav__close-icon {
            visibility: hidden;
          }
        }

        /* Medium screens breakpoint (1050px) */
        @media only screen and (min-width: 65.625em) {
          /* Break out main cards into two columns */
          .main-cards {
            column-count: 2;
          }
        }

    </style>

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
            <div class="main-header">
              <div class="main-header__heading">${USER.user_comment}</div>
              <div class="main-header__updates" style="font-size:15px; color:blue; padding-right:250px; padding-top:20px;"> ... Always Remember Your Pledge</div>
            </div>

            <div class="main-header">
              <div class="main-header__updates" style="font-size:40px; padding-left:25%;">Calculate Your Calories Intake</div>
            </div>

            <div class="main-cards">
              <div class="card" style="background:#FCF951FF" style="height:10px;">
                    <p style="color: #422057FF; font-weight: bold; font-size:30px;">Select the diet you have taken:</p>
                    <input type="text"  placeholder="Enter few keywords of diet..." id="diet-intake" style="font-size:25px; color:green;"></input>
              </div>

              <div class="card">
                    <p style="font-size:30px; color: #FEE715FF; font-weight: bold;">Calculate Calories taken:</p>
                    <button type="submit" id="submit-calorie" style="background:#101820FF;
                     padding: 10px 20px; font-size: 20px; color: #FEE715FF; font-weight:
                      bold; border-radius: 20px; border: 2px solid #fff; outline:0; cursor: pointer">Calculate</button>
              </div>
              <div class="card">
                  <p style="font-size:30px; color: #FEE715FF; font-weight: bold;">Enter the Amount you have taken:</p>
                  <input type="text" placeholder="Enter the Amount in grams" id="amount-intake" style="font-size:25px; color:green;"></input>
              </div>

              <div class="card" style="background:#101820FF">
                  <p style="font-size:30px; color: #FEE715FF; font-weight: bold;">Result</p>
                  <p id="result-calories" style="font-size:30px; color: #FEE715FF; font-weight: bold;"></p>
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
        $("#submit-calorie").click(function(){

            var diet = $("#diet-intake").val();
            var amount = $("#amount-intake").val();

            var dietValue = diet.split("-");

            var totalCalories = dietValue[1] * (amount/100);
            document.getElementById("result-calories").innerHTML = totalCalories;

        });

    </script>

    <script type="text/javascript" src="/static/js/auto-suggestion.js"></script>

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