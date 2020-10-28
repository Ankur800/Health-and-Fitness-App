<html>

    <head>
        <script
              src="https://code.jquery.com/jquery-3.5.1.min.js"
              integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
              crossorigin="anonymous">
        </script>
    </head>


    <style>

        html {
          background: url(/static/images/intro_back.jpeg)
          no-repeat center center fixed;
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;
        }

        a,
        a:hover,
        a:active,
        a:visited {
          text-decoration: none;
          color: #fff;
        }

        body {
          font: 300 14px/18px Roboto;
        }

        *,
        :after,
        :before {
          box-sizing: border-box
        }

        .clearfix:after,
        .clearfix:before {
          content: '';
          display: table
        }

        .clearfix:after {
          clear: both;
          display: block
        }

        .muck-up {
          width: 506px;
          height: 900px;
          margin: 5em auto;
          overflow: hidden;
          position: relative;
          border: 1px solid #fefefe;
          background: url('https://images.unsplash.com/photo-1550345332-09e3ac987658?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80');
        }

        .overlay {
          left: 0;
          right: 0;
          top: 0;
          bottom: 0;
          position: absolute;
          background: rgba(0, 0, 0, 0.6);
        }

        .content {
          position: relative;
          z-index: 10;
        }

        .logo {
          margin-top: 123px;
          margin-left: 36%;
        }

        .logo a {
          height: 140px;
          width: 140px;
          display: block;
          background-color: rgb(0, 231, 119);
          z-index: 1;
          border-radius: 32%;
          text-align: center;
          line-height: 140px;
          font-size: 90px;
          color: rgb(255, 255, 255);
          transform: rotate(45deg);
          top: 123px;
          left: 36%;
        }

        .logo span {
          transform: rotate(-45deg);
          display: inline-block;
        }

        .header {
          text-align: center;
          color: #fff;
        }

        .header hr {
          max-width: 59px;
          border: 1px solid #00E777;
          margin: 54px 0px 34px 226px;
        }

        .header h4 {
          font-size: 48px;
          margin-bottom: 34px;
        }

        .header h4 span {
          color: #00e777;
        }

        .header p {
          font-size: 18px;
        }

        .login {
          padding: 0 10%;
          margin-top: 134px;
        }

        .btn {
          cursor: pointer;
          display: block;
          margin-bottom: 0;
          font-size: 14px;
          font-weight: 400;
          padding: 16px 12px;
          border-radius: 4px;
          text-align: center;
          white-space: nowrap;
          vertical-align: middle;
          background-image: none;
          line-height: 1.42857143;
          border: 1px solid transparent;
        }

        .sign-in {
          color: #fff;
          font-size: 18px;
          background: #586A74;
          text-transform: uppercase;
          margin-bottom: 20px;
          border-color: #4B5961;
        }

        .sign-up {
          color: #fff;
          font-size: 18px;
          background: #00E777;
          text-transform: uppercase;
          margin-bottom: 20px;
          border-color: #0BDA76;
        }

        a.btn.connect-fb,
        a.btn.connect-tw {
          width: 47%;
          float: left;
          text-align: left;
          font-size: 16px;
        }

        a.btn.connect-fb i,
        a.btn.connect-tw i {
          font-size: 43px;
          display: block;
          float: left;
          margin-right: 20px;
        }

        a.btn.connect-fb span,
        a.btn.connect-tw span {
          display: block;
          text-align: left;
        }

        a.btn.connect-fb {
          margin-right: 24px;
          background: #3B559F;
        }

        a.btn.connect-tw {
          background: #28A9E0;
        }

    </style>

    <body>

        <div class="muck-up">
          <div class="overlay"></div>
          <div class="content">
            <div class="logo">
              <a href="#"><span class="fa fa-map-marker"></i></a>
            </div>
            <div class="header">
              <hr>
              <h4>Fat <span>To</span> Fit</h4>
              <p>I'll assist you there!</p>
            </div>
            <div class="login">
              <a class="btn sign-in" href="login/welcome">Sign In</a>
              <a class="btn sign-up" href="signup">Sign Up</a>

            </div>
          </div>
        </div>

    </body>

    <script>

        $( ".button_su_inner" ).mouseenter(function(e) {
           var parentOffset = $(this).offset();

           var relX = e.pageX - parentOffset.left;
           var relY = e.pageY - parentOffset.top;
           $(this).prev(".su_button_circle").css({"left": relX, "top": relY });
           $(this).prev(".su_button_circle").removeClass("desplode-circle");
           $(this).prev(".su_button_circle").addClass("explode-circle");

        });

        $( ".button_su_inner" ).mouseleave(function(e) {

             var parentOffset = $(this).offset();

             var relX = e.pageX - parentOffset.left;
             var relY = e.pageY - parentOffset.top;
             $(this).prev(".su_button_circle").css({"left": relX, "top": relY });
             $(this).prev(".su_button_circle").removeClass("explode-circle");
             $(this).prev(".su_button_circle").addClass("desplode-circle");

        });

    </script>

</html>