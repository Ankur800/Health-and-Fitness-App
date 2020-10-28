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

        html {
          height: 100%;
        }
        body {
          margin:0;
          padding:0;
          font-family: sans-serif;
          background: url(https://images.unsplash.com/photo-1573530256504-79487d8427fc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80);
          no-repeat;
          background-size: cover;
          min-width: 320px;
        }

        .login-box {
          position: relative;
          top: 50%;
          left: 50%;
          width: 400px;
          padding: 40px;
          transform: translate(-50%, -50%);
          background: rgba(0,0,0,.5);
          box-sizing: border-box;
          box-shadow: 0 15px 25px rgba(0,0,0,.6);
          border-radius: 10px;
        }

        .login-box h2 {
          margin: 0 0 20px;
          padding: 0;
          color: #fff;
          text-align: center;
        }

        .login-box .user-box {
          position: relative;
        }

        .login-box .user-box input {
          width: 100%;
          padding: 10px 0;
          font-size: 16px;
          color: #fff;
          margin-bottom: 10px;
          border: none;
          border-bottom: 1px solid #fff;
          outline: none;
          background: transparent;
        }
        .login-box .user-box label {
          position: absolute;
          top:0;
          left: 0;
          padding: 10px 0;
          font-size: 16px;
          color: #fff;
          pointer-events: none;
          transition: .5s;
        }

        .login-box .user-box input:focus ~ label,
        .login-box .user-box input:valid ~ label {
          top: -20px;
          left: 0;
          color: #03e9f4;
          font-size: 12px;
        }

        .login-box form a {
          position: relative;
          display: inline-block;
          padding: 10px 20px;
          color: #03e9f4;
          font-size: 16px;
          text-decoration: none;
          text-transform: uppercase;
          overflow: hidden;
          transition: .5s;
          margin-top: 40px;
          letter-spacing: 4px
        }

        .login-box a:hover {
          background: #03e9f4;
          color: #fff;
          border-radius: 5px;
          box-shadow: 0 0 5px #03e9f4,
                      0 0 25px #03e9f4,
                      0 0 50px #03e9f4,
                      0 0 100px #03e9f4;
        }

        .login-box a span {
          position: absolute;
          display: block;
        }

        .login-box a span:nth-child(1) {
          top: 0;
          left: -100%;
          width: 100%;
          height: 2px;
          background: linear-gradient(90deg, transparent, #03e9f4);
          animation: btn-anim1 1s linear infinite;
        }

        @keyframes btn-anim1 {
          0% {
            left: -100%;
          }
          50%,100% {
            left: 100%;
          }
        }

        .login-box a span:nth-child(2) {
          top: -100%;
          right: 0;
          width: 2px;
          height: 100%;
          background: linear-gradient(180deg, transparent, #03e9f4);
          animation: btn-anim2 1s linear infinite;
          animation-delay: .25s
        }

        @keyframes btn-anim2 {
          0% {
            top: -100%;
          }
          50%,100% {
            top: 100%;
          }
        }

        .login-box a span:nth-child(3) {
          bottom: 0;
          right: -100%;
          width: 100%;
          height: 2px;
          background: linear-gradient(270deg, transparent, #03e9f4);
          animation: btn-anim3 1s linear infinite;
          animation-delay: .5s
        }

        @keyframes btn-anim3 {
          0% {
            right: -100%;
          }
          50%,100% {
            right: 100%;
          }
        }

        .login-box a span:nth-child(4) {
          bottom: -100%;
          left: 0;
          width: 2px;
          height: 100%;
          background: linear-gradient(360deg, transparent, #03e9f4);
          animation: btn-anim4 1s linear infinite;
          animation-delay: .75s
        }

        @keyframes btn-anim4 {
          0% {
            bottom: -100%;
          }
          50%,100% {
            bottom: 100%;
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

            <div class="login-box">
              <h2>Set Task</h2>
              <form>

                <div class="user-box">
                  <input type="text" id="input-taskName" name="" required="">
                  <label>Title</label>
                </div>

                <div class="user-box">
                  <input type="text" id="input-taskDueDate" name="" required="">
                  <label>Due Date (dd/mm/yyyy)</label>
                </div>

                <div class="user-box">
                  <input type="text" id="input-taskTime" name="" required="">
                  <label>Time required (in minutes)</label>
                </div>

                <div class="user-box">
                  <input type="text" id="input-taskDetails" name="" required="">
                  <label>Task Details</label>
                </div>

                <a href="#" id="btn-submit">
                  <span></span>
                  <span></span>
                  <span></span>
                  <span></span>
                  Add Task
                </a>
              </form>
            </div>

          </main>

          <footer class="footer">
            <div class="footer__copyright">Turn Fat into FIT!</div>
            <div class="footer__signature">Commit to be fit.</div>
          </footer>
        </div>



    </body>

    <script>
        debugger;

            $("#btn-submit").click(function(){

            var taskName = $("#input-taskName").val();
            var dueDate = $("#input-taskDueDate").val();
            var timeToComplete = $("#input-taskTime").val();
            var taskDetails = $("#input-taskDetails").val();

            var task = {
                "taskName" : taskName,
                "dueDate" : dueDate,
                "timeToCompleteTask": timeToComplete,
                "taskDetails": taskDetails
            };

            $.ajax({
                type: "POST",
                url: "/user/set-task",
                data: JSON.stringify(task),
                success: function(response){
                    if(!!response){
                        alert(response.message);
                    }
                },
                contentType: 'application/json'
            });


        });

    </script>

</html>