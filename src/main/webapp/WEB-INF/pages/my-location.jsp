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

                <p>${LOCATION.city}</p>

                <iframe width="1520" height="780" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src=${GOOGLELOCATION.linkForLocation}></iframe> <a href='https://www.add-map.net/'>google map on my website</a> <script type='text/javascript' src='https://maps-generator.com/google-maps-authorization/script.js?id=03498a0242799ce6c55a852549bfa9e9d74e474a'></script>


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