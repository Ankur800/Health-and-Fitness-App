<html>
    <style>

        @import url(https://fonts.googleapis.com/css?family=Oxygen|Rubik:300);
        $base-font: 'Rubik', Arial, sans-serif;
        $base-font-size: 12px;
        $white: #DADADB;
        $black: #18191d;
        $drk-gray: #1F2025;
        $lt-gray: #353741;
        $lt-green: #B8D087;
        $green: #00996D;

        @mixin bg-gradient {
          background: linear-gradient(135deg, $lt-green, $green);
        }
        @mixin shadow {
          box-shadow: 0 16px 28px 0 rgba(0,0,0,.8),0 25px 55px 0 rgba(0,0,0,0.21);
        }

        html,
        body {
          width: 100%;
          height: 100%;
          box-sizing: border-box;
          font-family: $base-font;
          font-size: $base-font-size;
          letter-spacing: $base-font-size/20;
        }

        *, *:before, *:after {
          box-sizing: inherit;
        }

        body {
          @include bg-gradient;
          display: flex;
          align-items: center;
          justify-content: center;
          flex-direction: column;
          user-select: none;
        }

        .hidden {
          display: none;
        }

        .container {
          @include shadow;
          width: 290px;
          height: 420px;
          background-color: $drk-gray;
          color: $white;
        }

        .header {
          text-align: center;
          padding: 0 20px 20px 30%;
          font-size: $base-font-size*1.3;
          border-bottom: solid $black 1px;
        }

        .timer {
          height: 200px;
          display: flex;
          align-items: center;
          justify-content: center;
          flex-direction: row;
        }

        .timer-display {
          color: $lt-green;
          font-size: $base-font-size*3;
          margin-top: 60px;
          margin-left: 10px;
          text-align: center;
        }

        svg#gradient {
            width: 100px;
            height: 40px;
            vertical-align: bottom;
            pointer-events: none;
            text {
              fill: url(#linearGradient);
            }
        }

        #status {
          text-align: center;
          height: 20px;
          margin-top: -30px;
          margin-bottom: 30px;
          color: lighten($lt-gray, 20%);
        }

        .start {
          @include bg-gradient;
          @include shadow;
          width: 290px;
          text-align: center;
          color: white;
          padding: 20px 20px;
          cursor: pointer;
          &:hover {
            background: $green;
          }
          &:active {
            @include bg-gradient;
          }
        }

        .inner-circle {
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-48%, -73.5%);
        }

        .outer-circle {
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-48%, -73.5%);
          z-index: 1;
        }

        //progress bar styles
        .progress-color0 {
          fill: url(#greenGradient);
        }

        .progress-color1 {
          fill: $lt-gray;
        }

        #action-title {
          position: absolute;
          font-size: $base-font-size/1.5;
          left: 50%;
          margin-top: 0;
          transform: translate(-50%,-50%);
          background: $drk-gray;
          padding: 5px 20px;
          border-radius: 20px;
          border: solid lighten($lt-gray, 20%) 1px;
        }

        .actions {
          display: flex;
          align-items: center;
          text-align: center;
           color: lighten($lt-gray, 20%);
          div {

            padding-bottom: 0;
            flex: 1;
          }
        }

        .set-timer,
        .set-break {
          padding-top: 20px;
          border: solid $black 1px;
        }

        .set-timer {
          border-right: none;
          border-left: none;
        }

        .set-break {
          border-right: none;
        }

        .set-display {
          color: $white;
          font-size: $base-font-size*1.4;
          padding-top: 10px;
        }
        .actions {
          .minus-add {
            font-size: $base-font-size*1.5;
            display: flex;
            padding: 0;
            justify-content: center;
            div {
              cursor: pointer;
              margin: 1px;
              padding:  5px;
              margin-bottom: 10px;
              flex: .5;
              &:hover {
                color: $white;
              }
              &:active {
                color: $lt-gray;
              }
            }
          }
        }

        .spinner-container {
          position: absolute;
          z-index: 2;
          left: 50%;
          top: 50%;
          margin-top: -40px;
          transform: translate(-50%, -50%);
        }

        .spinner-mask {
          position: absolute;
          background-color: $drk-gray;
          height: 45px;
          width: 50px;
          margin-top: 181px;
          left: 200px;
          transform: translate(-50%,-50%);
          z-index: 2;
        }

        $offset: 187;
        $duration: 1.2s;

        .spinner {
          transform: rotate(150deg);
          animation: rotator $duration linear infinite;
        }

        @keyframes rotator {
          0% { transform: rotate(150deg); }
          20% { transform: rotate(200deg); }
          100% { transform: rotate(390deg); }
        }

        .spinning {
          stroke-dasharray: $offset;
          stroke-dashoffset: 185;
          transform-origin: center;
          animation:
            dash $duration infinite,
            colors $duration infinite;
        }

        @keyframes colors {
        	0% { stroke: $lt-green; }
        	50% { stroke: $green; }
          100% { stroke: $lt-green; }
        }

        @keyframes dash {
          0% {
            stroke-dashoffset: 185;
          }
          50% {
            stroke-dashoffset: 175;
          }
          100% {
            stroke-dashoffset: 185;
          }
         // 0% { stroke-dashoffset: $offset; }
         // 50% {
         //   stroke-dashoffset: $offset/1.2;
         // }
         // 100% {
         //   stroke-dashoffset: $offset;
         // }
        }


    </style>

    <body>

        <div class='container'>
          <div class='header'>
            <svg id='gradient' style='width: auto;'>
              <defs>
                <linearGradient id='linearGradient' x1='0%' x2='100%' y1='0%' y2='100%'>
                  <stop offset='0%' stop-color='#B8D087'></stop>
                  <stop offset='100%' stop-color='#00996D'></stop>
                </linearGradient>
              </defs>
              <text fill-opacity='1' y='36px'>
                Pomodoro Clock
              </text>
            </svg>
          </div>
          <div class='timer'>
            <div class='spinner-container'>
              <div class='spinner-mask'></div>
              <svg class='spinner' height='240px' viewBox='0 0 66 66' width='240px' xmlns='http://www.w3.org/2000/svg'>
                <circle class='path' cx='33' cy='33' fill='none' id='spineroo' r='30' stroke-cap='round' stroke-width='.5'></circle>
              </svg>
            </div>
            <div class='outer-circle'></div>
            <div class='inner-circle'></div>
            <div class='timer-display'>
              <svg id='gradient'>
                <defs>
                  <linearGradient id='linearGradient' x1='0%' x2='100%' y1='0%' y2='100%'>
                    <stop offset='0%' stop-color='#B8D087'></stop>
                    <stop offset='100%' stop-color='#00996D'></stop>
                  </linearGradient>
                </defs>
                <text fill-opacity='1' id='timer-display-time' y='36px'>
                  25:00
                </text>
              </svg>
            </div>
          </div>
          <div id='status'></div>
          <div id='action-title'>
            <small>SETTINGS</small>
          </div>
          <div class='actions'>
            <div class='set-timer'>
              session length
              <div class='set-display'>
                <span id='set-timer-display'>25</span>
                min
              </div>
              <div class='minus-add'>
                <div class='setting-button' id='minus-timer'>-</div>
                <div class='setting-button' id='add-timer'>+</div>
              </div>
            </div>
            <div class='set-break'>
              break length
              <div class='set-display'>
                <span id='set-break-display'>5</span>
                min
              </div>
              <div class='minus-add'>
                <div class='setting-button' id='minus-break'>-</div>
                <div class='setting-button' id='add-break'>+</div>
              </div>
            </div>
          </div>
        </div>
        <div class='start' id='start-timer'>START</div>
        <div class='start hidden' id='reset-timer'>RESET</div>




    </body>

    <script>

        //progress bars overlay
        const radius = 90,
          padding = 50,
          radians = 2 * Math.PI;

        const dimension = (2 * radius) + (2 * padding),
            points = 50, percentage = 0.62;

        const angle = d3.scale.linear()
            .domain([0, points-1])
            .range([0, radians]);

        const line = d3.svg.line.radial()
            .interpolate("basis")
            .tension(0)
            .radius(radius)
            .angle((d, i) => {
              if(i < (points*percentage +1)) {
                return angle(i);
              }
            });

        const svg = d3.select(".outer-circle").append("svg")
            .attr("width", dimension)
            .attr("height", 200)
        .append("g");

        svg.append("path").datum(d3.range(points))
            .attr("class", "line")
            .attr("fill", "none")
            .attr("stroke-dasharray", "7 3")
            .attr("stroke-width", "25px")
            .attr("stroke", "#1F2025") //#1F2025
            .attr("d", line)
            .attr("transform", "translate(135,106) rotate(-110)");

        //progress bars
        let elapsedPercent = 0;
        const r = 100;
        const pi = Math.PI;
        const green1 = "#B8D087";
        const green2 = "#00996D";
        const data = {
          upper: calcPercent(0),
          lower: calcPercent(elapsedPercent)
        };
        let progress = 0;

        function calcPercent(percent) {
          return [percent, 100-percent];
        }

        const canvas = d3.select(".inner-circle").append("svg")
        .attr("height", r + 100)
        .attr("width", r + 150);

        const group = canvas.append("g")
        .attr("transform", "translate("+120+","+110+")");

        const arc = d3.svg.arc()
        .innerRadius(r/1.2)
        .outerRadius(r);

        //returns objects based on data
        const pie = d3.layout.pie()
        .sort(null)
        .value(data => data)
        .startAngle(-110 * (pi/180))
        .endAngle(110 * (pi/180));

        const arcs = group.selectAll(".arc")
        .data(pie(data.lower))
        .enter()
        .append("g")
        .attr("class", "arc");

        const defs = canvas.append("defs")
        .append("linearGradient")
        .attr("id", "greenGradient")
        .attr("gradientUnits", "objectBoundingBox")
        .attr("x1", "0")
        .attr("y1", "0")
        .attr("x2", "1")
        .attr("y2", "1")

        defs.append("stop").attr("offset", "0%").attr("stop-color", green1);
        defs.append("stop").attr("offset", "100%").attr("stop-color", green2);

        let path = arcs.append("path")
        .attr("class", (data, index) => "progress-color" + index )
        .attr("d", arc);

        /////////timer
        const startButton = document.getElementById("start-timer");
        const resetButton = document.getElementById("reset-timer");
        const timeDisplay = document.getElementById("timer-display-time");
        const statusDisplay = document.getElementById("status");
        const spinner = document.getElementById("spineroo");
        let sessionTimer = parseInt(document.getElementById("set-timer-display").innerHTML, 10);
        let breakTimer = parseInt(document.getElementById("set-break-display").innerHTML, 10);
        elapsedPercent = 0;
        let seconds = 60;
        let minutes;
        let timer;
        let breakTime = false;

        //start timer
        startButton.addEventListener('click', () =>{
          timer = setInterval(timerFn,1000);
          //console.log("button: " + startButton.innerHTML.trim() + " | session: " + sessionTimer + " | break: " + breakTimer);
          startButton.classList.toggle("hidden");
          resetButton.classList.toggle("hidden");
          spinner.classList.toggle("spinning");
          statusDisplay.innerHTML = "In session!";
          minutes = sessionTimer-1;
          function timerFn(){
            seconds--;
            //console.log("time: " +minutes + ":" + seconds + " | percent: " + elapsedPercent);
            progress();
            if (seconds < 10 && minutes < 10) {
              timeDisplay.innerHTML = "0" +minutes + ":0" + seconds;
            }else if(seconds < 10){
              timeDisplay.innerHTML = minutes + ":0" + seconds;
            }else if(minutes < 10){
              timeDisplay.innerHTML = "0" + minutes + ":" + seconds;
            }else{
              timeDisplay.innerHTML = minutes + ":" + seconds;
            }
            if(seconds === 0 && minutes === 0){
              if(breakTime === false){
                breakTime = true;
                minutes = breakTimer-1;
                seconds = 60;
                elapsedPercent = 0;
                statusDisplay.innerHTML = "Take a break!";
                console.log("break time");
              }else{
                breakTime = false;
                minutes = sessionTimer-1;
                seconds = 60;
                elapsedPercent = 0;
                statusDisplay.innerHTML = "In session!";
                console.log("work time");
              }
            }
            if(seconds === 0) {
              minutes--;
              seconds = 60;
            }
          };
          function progress(){
            let secondsElapsed = minutes*60 + seconds;
            let totalSeconds;
            if(breakTime === true){
              totalSeconds = breakTimer*60;
            }else{
              totalSeconds = sessionTimer*60;
            }
            elapsedPercent = (1 - secondsElapsed/totalSeconds)*100;
            path
            .data(pie(calcPercent(elapsedPercent)))
            .attr("d", arc);
          }
        });

        //reset timer
        resetButton.addEventListener('click', () =>{
          startButton.classList.toggle("hidden");
          resetButton.classList.toggle("hidden");
          spinner.classList.toggle("spinning");
          clearInterval(timer);
          seconds = 60;
          minutes = sessionTimer -1;
          elapsedPercent = 0;
          timeDisplay.innerHTML = sessionTimer + ":00";
          statusDisplay.innerHTML = "Reset!";
          console.log("reset")
          path
            .data(pie(calcPercent(elapsedPercent)))
            .attr("d", arc);
        });


        //timer settings
        const settingOptions = {
          "add-break": ()=>{
            if(breakTimer < 51){
              let timer = breakTimer++;
              document.getElementById("set-break-display").innerHTML = timer + 1;
            }
          },
          "minus-break": ()=>{
            if(breakTimer > 5){
              let timer = breakTimer--;
              document.getElementById("set-break-display").innerHTML = timer - 1;
            }
          },
          "add-timer": ()=>{
            if(sessionTimer < 99){
              let timer = sessionTimer++;
              document.getElementById("set-timer-display").innerHTML = timer + 1;
              document.getElementById("timer-display-time").innerHTML = (timer + 1) + ":00";
            }
          },
          "minus-timer": ()=>{
            if(sessionTimer > 25){
              let timer = sessionTimer--;
              document.getElementById("set-timer-display").innerHTML = timer - 1;
              document.getElementById("timer-display-time").innerHTML = (timer - 1) + ":00";
            }
          }
        };

        const buttonSettings = document.getElementsByClassName("setting-button");

        for(let i = 0; i < buttonSettings.length; i++){
          buttonSettings[i].addEventListener("click", ()=> {
            let operation = buttonSettings[i].getAttribute("id");
            settingOptions[operation]();
            startButton.classList.remove("hidden");
            resetButton.classList.add("hidden");
            spinner.classList.remove("spinning");
            clearInterval(timer);
            seconds = 60;
            minutes = sessionTimer -1;
            elapsedPercent = 0;
            console.log("setting up");
          })
        }


    </script>
</html>