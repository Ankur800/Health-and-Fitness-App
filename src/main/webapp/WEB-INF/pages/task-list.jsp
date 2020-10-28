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


        /* for table */


        h1{
          font-size: 30px;
          color: #fff;
          text-transform: uppercase;
          font-weight: 300;
          text-align: center;
          margin-bottom: 15px;
        }
        table{
          width:100%;
          table-layout: fixed;
        }
        .tbl-header{
          background-color: #00203FFF;
         }
        .tbl-content{
          height:300px;
          overflow-x:auto;
          margin-top: 0px;
          border: 1px solid rgba(255,255,255,0.3);
        }
        th{
          padding: 20px 15px;
          text-align: left;
          font-weight: bold;
          font-size: 20px;
          color: #ADEFD1FF;
          text-transform: uppercase;
        }
        td{
          padding: 15px;
          text-align: left;
          vertical-align:middle;
          font-weight: bold;
          font-size: 16px;
          background: #101820FF;
          color: #FEE715FF;
          border-bottom: solid 1px rgba(255,255,255,0.1);
        }


        /* demo styles */

        @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
        body{
          background: -webkit-linear-gradient(left, #25c481, #25b7c4);
          background: linear-gradient(to right, #25c481, #25b7c4);
          font-family: 'Roboto', sans-serif;
        }
        section{
          margin: 50px;
        }


        /* follow me template */
        .made-with-love {
          margin-top: 40px;
          padding: 10px;
          clear: left;
          text-align: center;
          font-size: 10px;
          font-family: arial;
          color: #fff;
        }
        .made-with-love i {
          font-style: normal;
          color: #F50057;
          font-size: 14px;
          position: relative;
          top: 2px;
        }
        .made-with-love a {
          color: #fff;
          text-decoration: none;
        }
        .made-with-love a:hover {
          text-decoration: underline;
        }


        /* for custom scrollbar for webkit browser*/

        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
        }
        ::-webkit-scrollbar-thumb {
            -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
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
              <div class="main-header__updates" style="font-size:40px; padding-left:40%;">My Tasks List</div>
            </div>

            <section>

              <div class="tbl-header">
                <table cellpadding="0" cellspacing="0" border="0">
                  <thead>
                    <tr>
                      <th>Task</th>
                      <th>Due Date</th>
                      <th>Time to Complete</th>
                      <th>Description</th>
                      <th>Mark as Completed</th>
                    </tr>
                  </thead>
                </table>
              </div>
              <div class="tbl-content">
                <table cellpadding="0" cellspacing="0" border="0">
                  <tbody>
                    <c:forEach var="task" items="${TASKS}">
                        <tr>
                          <td id="task-name">${task.taskName}</td>
                          <td id="due-date">${task.dueDate}</td>
                          <td id="time">${task.timeToCompleteTask}</td>
                          <td id="details">${task.taskDetails}</td>
                          <td><button class="completed" type="submit"
                          task-id="${task.taskId}" tabindex="0" style="background:#101820FF;
                           padding: 8px 20px; font-size: 20px; color: #FEE715FF; font-weight:
                            bold; border-radius: 20px; border: 2px solid #fff; outline:0; cursor: pointer">Click
                            </td>

                    </c:forEach>

                  </tbody>
                </table>
              </div>
            </section>

          </main>

          <footer class="footer">
            <div class="footer__copyright">Turn Fat into FIT!</div>
            <div class="footer__signature">Commit to be fit.</div>
          </footer>
        </div>

    </body>

    <script>

        $(".completed").click( function(event){

            var taskId = this.getAttribute("task-id");

            $.ajax({
               type: "POST",
               url: "/user/task-list",
               data: taskId,
               success: function(response){
                   if(!!response){
                      window.location.href = "/user/task-list";
                   }
               },
               contentType: 'application/json'
            });

        });


    </script>

    <script>

        // '.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
        $(window).on("load resize ", function() {
          var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
          $('.tbl-header').css({'padding-right':scrollWidth});
        }).resize();

    </script>



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