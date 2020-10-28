<html>

    <head>
        <script
              src="https://code.jquery.com/jquery-3.5.1.min.js"
              integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
              crossorigin="anonymous">
        </script>
    </head>

    <style>

        /* import Google fonts */
        @import url("https://fonts.googleapis.com/css?family=Dancing+Script&display=swap");
        @import url("https://fonts.googleapis.com/css?family=Handlee|Indie+Flower&display=swap");

        /* main survey form css start */

        html {
          box-sizing: border-box;
        }
        body {
          background: url("https://images.unsplash.com/photo-1574406280735-351fc1a7c5e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=948&q=80")
          no-repeat;
          background-size: cover;
          min-width: 320px;
          <!--font-family: "Dancing Script", cursive;--!>
          text-align: center;
        }

        /* Restaurant-survey form title css*/
        #title {
          font-size: 50px;
          background-color: #000;
          width: 80%;
          max-width: 900px;
          margin: 30px auto;
          color: rgba(255, 255, 51);
          opacity: 0.8;
          border-radius: 7px;
          padding: 5px;
          text-align: center;
        }
        /* -- main form layout css -- */
        #main-form-layout {
          width: 90%;
          max-width: 900px;
          margin: 0 auto;
          background: #606060FF;
          opacity : 0.8;
          border-radius: 5px;
          padding: 10px;
        }

        #number {
          margin-bottom: 50px;
        }

        .recommend-box {
          margin-bottom: 50px;
        }

        /* description css*/
        p {
          font-size: 30px;
          font-weight: bold;
          color: #D6ED17FF;
        }
        /*code for Survey form css */
        .row-tab {
          font-family: "Handlee", cursive;
          font-size: 25px;
          color: #D6ED17FF;
          font-weight: bold;
          letter-spacing: 0.1rem;
        }

        .col-left-side {
          display: inline-block;
          text-align: right;
          width: 40%;
          padding: 5px;
          margin-top: 10px;
          vertical-align: top;
        }

        .col-right-side {
          display: inline-block;
          text-align: left;
          width: 40%;
          vertical-align: middle;
        }

        .input-field {
          height: 25px;
          width: 300px;
          border: 1px solid #f7c331;
          border-radius: 5px;
          padding: 6px;
          margin: 10px;
          resize: vertical;
        }

        #dropdown {
          height: 35px;
          width: 312px;
          border: 1px solid #f7c331;
          border-radius: 5px;
          margin: 10px;
          margin-top: 15px;
          padding: 5px;
        }

        ul {
          list-style: none;
          padding: 0;
          margin: 0;
        }

        .radio {
          float: left;
          margin-right: 6px;
          padding-top: 20px;
          margin-left:5px;
        }

        .checkbox {
          margin-top: 10px;
          padding: 4px 0;
          display: block;
          position: relative;
          margin-left:5px;
        }

        input[type="checkbox"],
        input[type="radio"] {
          transform: scale(1.3);
        }

        .login input[type=button]{
            width: 250px;
            height: 35px;
            background: #f1c40f;
            border: 1px solid #fff;
            cursor: pointer;
            border-radius: 10px;
            color: #fff;
            font-family: 'Exo', sans-serif;
            font-size: 16px;
            font-weight: 1000;
            padding: 6px;
            margin-top: 10px;
            margin:0 auto;
            display:block;
        }

        .login input[type=button]:hover{
            opacity: 0.8;
        }

        .login input[type=button]:active{
            opacity: 0.6;
        }

        #comments {
          height: 80px;
          resize: vertcal;
          width: 300px;
        }

        #submit {
          background-color: #f7c331;
          border-radius: 4px;
          color: white;
          font-size: 20px;
          height: 50px;
          width: 100px;
          margin: 10px;
          border: 0px solid;
          cursor: pointer;
          margin:0 auto;
          display:block;
        }
        #submit:hover {
          background-color: orange;
          color: white;
        }

        .comment-box {
          margin-top: 50px;
        }

        /* small laptop screen */
        @media screen and (max-width: 850px) {
          .input-field {
            width: 80%;
          }
          select {
            width: 90%;
          }
          #main-form-layout {
            width: 90%;
          }

          #dropdown {
            width: 60%;
          }
          #comments {
            width: 80%;
          }
        }
        /* css for mobile screen */
        @media (max-width: 600px) {
          h1 {
            width: 80%;
            font-size: 60px;
            padding: 5px;
            margin: 20px auto;
            text-align: center;
          }

          #main-form-layout {
            width: 90%;
          }
          #description-box {
            font-size: 40px;
          }

          .col-left-side {
            width: 90%;
            text-align: left;
            margin: 5px;
            padding: 5px;
          }
          .row-tab {
            font-size: 20px;
          }
          .col-right-side {
            width: 90%;
            float: left;
            margin: 5px;
            padding: 5px;
         }

          .input-field {
            width: 90%;
          }

          #dropdown {
            width: 70%;
          }
          #comments {
            width: 90%;
          }
          select {
            width: 100%;
          }
        }


    </style>

    <body>


        <!-- code for Survey form Title -->
        <main>
          <h1 id="title">CREATE YOUR PROFILE</h1>

          <!-- Code for Description of Survey Form--->
          <div id="main-form-layout">
            <div id="description-box">
              <p id="description">
                Help us to know about you!
              </p>
            </div>

            <!-- Code for Main Survey Form -->
            <form id="registration-form" method="GET" action="">

              <!-- First Name -->
              <div class="row-tab">
                <div class="col-left-side">
                  <label id="name-label" for="name">
                Name:
              </label>
                </div>
                <div class="col-right-side">
                  <input type="text" class="input-field" id="input-name" name="name" autofocus placeholder="Enter Your Name" required>
                </div>
              </div>
              <!-- Email -->
              <div class="row-tab">
                <div class="col-left-side">
                  <label id="email-label" for="email">
                Email:
              </label>
             </div>
             <div class="col-right-side">
               <input type="email" class="input-field"
                id="input-email" name="email"
                placeholder="Enter Your Email"
                required>
            </div>
          </div>

          <!-- Password -->
            <div class="row-tab">
              <div class="col-left-side">
                <label id="email-label" for="password">
              Password:
            </label>
           </div>
           <div class="col-right-side">
             <input type="password" class="input-field"
              id="input-password" name="password"
              placeholder="******"
              required>
           </div>
          </div>


          <!-- Age -->
          <div class="row-tab">
            <div class="col-left-side">
              <label id="-7*/8age" for="age">
                Your Age:
              </label>
                </div>
                <div class="col-right-side">
                  <input type="number" class="input-field" id="input-age" name="age" min="13" max="100" Placeholder="Age">
                </div>
              </div>



              <!-- Gender -->
              <div class="row-tab">
                <div class="col-left-side">
                  <label for="recommend">
                  Select Gender
                </label>
                </div>
                <!-- radio button option for recommendation-->
                <div class="col-right-side">
                  <ul>
                    <!-- option 1-->
                    <li class="radio">
                      <label>
                      <input type="radio"  id = "male" class="radio"
                      name="gender"
                      value="male">
                       Male
                    </label>
                    </li>
                    <!-- option-2 -->
                    <li class="radio">
                      <label>
                      <input type="radio" class="radio" id="female"
                      name="gender"
                      value="female">
                       Female
                    </label>
                    </li>
                    <!-- option-3 -->
                    <li class="radio">
                      <label>
                      <input type="radio" id="other"
                       class="radio"
                       name="gender"
                       value="other">
                       Other
                    </label>
                    </li>
                  </ul>
                </div>
              </div>

            <!-- Height -->
            <div class="row-tab">
              <div class="col-left-side">
                <label id="name-label" for="name">
              Your Height:
            </label>
              </div>
              <div class="col-right-side">
                <input type="text" class="input-field" id="input-height" name="height" autofocus placeholder="Enter your height in centimeters" required>
              </div>
            </div>

            <!-- Height -->
            <div class="row-tab">
              <div class="col-left-side">
                <label id="name-label" for="name">
              Your Weight:
            </label>
              </div>
              <div class="col-right-side">
                <input type="text" class="input-field" id="input-weight" name="height" autofocus placeholder="Enter your weight in kilograms" required>
              </div>
            </div>

            <!-- Fitness Level -->
          <div class="row-tab">
            <div class="col-left-side">
              <label for="recommend">
              Select Your Current Fitness Level
            </label>
            </div>
            <!-- radio button option for recommendation-->
            <div class="col-right-side">
              <ul>
                <!-- option 1-->
                <li class="radio">
                  <label>
                  <input type="radio"  id = "low" class="radio"
                  name="fitness"
                  value="Low">
                   Low
                </label>
                </li>
                <!-- option-2 -->
                <li class="radio">
                  <label>
                  <input type="radio" class="radio" id="medium"
                  name="fitness"
                  value="Medium">
                   Medium
                </label>
                </li>
                <!-- option-3 -->
                <li class="radio">
                  <label>
                  <input type="radio" id="high"
                   class="radio"
                   name="fitness"
                   value="High">
                   High
                </label>
                </li>
              </ul>
            </div>
          </div>

          <!-- Fitness Goal -->
            <div class="row-tab">
              <div class="col-left-side">
                <label for="recommend">
                Select Your Fitness Goal
              </label>
              </div>
              <!-- radio button option for recommendation-->
              <div class="col-right-side">
                <ul>
                  <!-- option 1-->
                  <li class="radio">
                    <label>
                    <input type="radio"  id = "trim" class="radio"
                    name="goal"
                    value="Get Trim (Lose Weight)">
                     Get Trim (Lose Weight)
                  </label>
                  </li>
                  <!-- option-2 -->
                  <li class="radio">
                    <label>
                    <input type="radio" class="radio" id="muscle"
                    name="goal"
                    value="Gain Muscle">
                     Gain Muscle
                  </label>
                  </li>
                  <!-- option-3 -->
                  <li class="radio">
                    <label>
                    <input type="radio" id="performance"
                     class="radio"
                     name="goal"
                     value="Increase Sports Performance">
                     Increase Sports Performance
                  </label>
                  </li>
                </ul>
              </div>
            </div>


              <!-- Comment section --->
              <div class="row-tab comment-box">
                <div class="col-left-side">
                  <label for="comments">
                   Any Pledge?
                  </label>
                </div>
                <div class="col-right-side">
                  <textarea placeholder="Enter your pledge..." id="comments" class="input-field"></textarea>
                </div>
              </div>


                <br>
                <!-- submit the form -->
                <div class="login">
                      <input id="btn-signup" type="button" value="Sign up">
                </div

            </form>
          </div>
        </main>

    </body>

    <script>

            $("#btn-signup").click(function(){
            debugger;

            var name = $("#input-name").val();
            var email = $("#input-email").val();
            var password = $("#input-password").val();
            var age = $("#input-age").val();

            var ele = document.getElementsByName('gender');
            var gender;
            for(i = 0; i < ele.length; i++) {
                if(ele[i].checked)
                gender = ele[i].value;
            }

            var height = $("#input-height").val();
            var weight = $("#input-weight").val();

            var ele = document.getElementsByName('fitness');
            var current_fitness;
            for(i = 0; i < ele.length; i++) {
                if(ele[i].checked)
                current_fitness = ele[i].value;
            }

            var ele = document.getElementsByName('goal');
            var fitness_goals;
            for(i = 0; i < ele.length; i++) {
                if(ele[i].checked)
                fitness_goals = ele[i].value;
            }

            var comment = $("#comments").val()


            var user = {
                "name" : name,
                "email" : email,
                "password" : password,
                "age" : age,
                "gender" : gender,
                "height" : height,
                "weight" : weight,
                "age" : age,
                "current_fitness" : current_fitness,
                "fitness_goals" : fitness_goals,
                "user_comment" : comment
            };

            $.ajax({
                type: "POST",
                url: "/signup",
                data: JSON.stringify(user),
                success: function(response){
                    if(!!response){
                        location.href = "/login/welcome";
                    }
                },
                contentType: 'application/json'
            });


        });

    </script>



</html>