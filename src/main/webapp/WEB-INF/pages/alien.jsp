<html>

    <style>


* {
    margin: 0;
    padding: 0;
}


body {
    background: #e3edf7;
    font-family: sans-serif;
}

.container {
    position: relative;
    margin: 20px auto;
    border-radius: 20px;
    background: #435175;
    width: 800px;
    height: 600px;

}
.man {
    position: absolute;
    top: 40%;
    left: 25%;
    width: 55%;
    height: 45%;
    z-index: 3;
}


.man .legs {
    position: absolute;
    width: 20%;
    height: 64%;
    bottom: 4%;
}

.man .legs .leg {
    position: absolute;
    width: 20%;
    height: 100%;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
}
.man .legs .leg::after {
    content: "";
    background: #53313e;
    position: absolute;
    width: 100%;
    height: 5%;
    bottom: 0;
}
.man .legs .leg::before {
    content: "";
    background: #53313e;
    position: absolute;
    width: 50%;
    height: 5%;
    bottom: 3px;
    left: -12%;
    border-radius: 50%;
}

.man .legs .one {
    background: #ffaf72;
    left: 20%;
    z-index: 3;

}
.man .legs .two {
    background: #f78d5c;
    left: 10%;
    z-index: 2;
    transform: rotate(10deg);
    /* transform-origin: bottom; */
}

.man .legs .thy {
    z-index: 2;
    position: absolute;
    height: 12%;
    width: 120%;
    left: 24%;
    background: #649740;
}

.man .legs .thy::after {
    content: "";
    position: absolute;
    border-top-left-radius: 40%;
    border-bottom-left-radius: 40%;
    top: -70%;
    height: 240%;
    width: 25%;
    right: -20%;
    background-color: #649740;
}

.man .main-parts {
    position: absolute;
    left: 33%;
    width: 40%;
    height: 30%;
    top: 15%;
}
.man .main-parts .upper {
    position: absolute;
    height: 30%;
    width: 48%;
    bottom: 36%;
    background: #e75a46;
    z-index: 1;
    transform: rotate(-5deg);
}

.man .main-parts .upper .above {

    position: absolute;
    right: 0;
    background: #e75a46;
    width: 150%;
    height: 331%;
    border-radius: 50%;
    right: -104%;
    top: -92%;

}
.man .main-parts .lower {
    position: absolute;
    height: 40%;
    width: 100%;
    bottom: 0%;
    background: #cf4444;
    z-index: 2;

}
.man .main-parts .lower::after {
    content: "";
    position: absolute;
    height: 201%;
    width: 56%;
    right: 0;
    top: -99%;
    border-radius: 100%;
    background: #cf4444;
}
.man .hand {
    position: absolute;
    right: 28%;
    height: 40%;
    width: 9%;
    border-radius: 20px;
    background: #ffaf72;
    z-index: 5;
    top: 12%;
    animation: animate-hand 2s infinite;
}

.man  .weight {
    position: absolute;
    height: 30%;
    width: 18%;
    border-radius: 50%;
    border: 4px solid black;
    left: 57%;
    top: -10%;
    background: #e75a46;
    z-index: 10;
    animation: animate-hand 2s infinite;

}

.man  .weight:after {
    content: "";
    background-color: #cf4444;
    position: absolute;
    width: 60%;
    height: 60%;
    border-radius: 50%;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
 }

.man  .weight:before {
    content: "";
    background-color: #5aada7;
    position: absolute;
    width: 20%;
    height: 20%;
    border-radius: 50%;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 1;
}

@keyframes animate-hand {
    50% {
        transform: translateY(-40px);
    }
}

.man .arm {
    position: absolute;
    right: 28%;
    width: 10%;
    height: 10%;
    z-index: 5;
    top: 88px;
    background: #f78d5c;
    border-radius: 30px 5px 5px 30px;
}
.man .neck {
    position: absolute;
    left: 73%;
    width: 20%;
    height: 12%;
    background: #f78d5c;
    top: 32%;
    overflow: hidden;
}

.man .neck .head {
    position: absolute;
    right: 0;
    bottom: -8%;
    width: 69%;
    height: 166%;
    border-radius: 50%;
    background: #ffaf72;
}
.man .nose {
    width: 10%;
    height: 10%;
    position: absolute;
    right: 5%;
    top: 21%;
    display: flex;
    justify-content: space-evenly;
}

.man .nose div {
    position: absolute;
    bottom: -24%;
    width: 7px;
    height: 10px;
    border-radius: 50%;
    background: #ffaf72;
}

.man .nose div:nth-child(1) {
    left: 10%;
}
.man .nose div:nth-child(2) {
    left: 50%;

}

.man .hairs {
    position: absolute;
    left: 86%;
    height: 20%;
    width: 10%;
    top: 23%;
}

.man .hairs .lower {
    position: absolute;
    bottom: -3px;
    right: 11px;
    width: 70%;
    height: 33%;
    background: #54303c;
    border-radius: 4px;
    border-bottom-right-radius: 20%;
}
.man .hairs .lower::after
{
    content: "";
    position: absolute;
    width: 24%;
    height: 40%;
    border-radius: 50%;
   background: #ffaf72;
}
.man .hairs .upper {
    position: absolute;
    right: -10%;
    bottom: 0;
    height: 80%;
    width: 40%;

}

.man .hairs .upper div:nth-child(1){
    position: absolute;
    width: 100%;
    height: 40%;
    background: #54303c;
    border-radius: 50%;
}
.man .hairs .upper div:nth-child(2){
    position: absolute;
    top: 30%;
    width: 100%;
    height: 40%;
    background: #54303c;
    border-radius: 50%;
}
.man .hairs .upper div:nth-child(3){
    position: absolute;
    top: 60%;
    width: 100%;
    height: 40%;
    background: #54303c;
    border-radius: 50%;
}
/* #54303c */
/* #54303c */




.bench-container {
    position: absolute;
    top: 60%;
    left: 40%;
    width: 45%;
    height: 25%;
    z-index: 2;
}

.bench-container .left {
    position: absolute;
    top: 10%;
    left: 0;
    background: #476199;
    width: 5%;
    height: 90%;
}

.bench-container .left::after {
    content: "";
    position: absolute;
    width: 300%;
    height: 10%;
    left: -100%;
    bottom: 0;
    border-top: 4px solid #4a8197;
    background: #476199;
}

.bench-container .right {
    z-index: -1;
    position: absolute;
    top: -100%;
    right: 5%;
    background: #476199;
    width: 5%;
    height: 200%;
}

.bench-container .right::after {
    content: "";
    position: absolute;
    width: 400%;
    height: 5%;
    left: -150%;
    bottom: 0;
    border-top: 4px solid #4a8197;
    background: #476199;
}

/* #476199 */

.seat {
    position: absolute;
    width: 100%;
    background: #4e9993;
    height: 10%;
    border-radius: 15px 15px 0 0;
}

/*
.bicept-machine {
    position: absolute;
    top: 20%;
    height: 70%;
    width: 20%;
    left: 5%;
    border: 2px solid red;

} */

.rod1 {
    position: absolute;
    top: 70%;
    height: 15%;
    width: 40%;
    right: 5%;
    z-index: 1;
}

    </style>

    <body>

         <div class="container">

            <p style="font-size: 60px; color:#D6ED17FF; padding-left:33%; font-weight: bold">Error 404</p>
            <p style="font-size: 20px; color:#D6ED17FF; padding-left:34%; font-weight: bold">Ooops... Page not Found!</p>
            <button type="submit" id="submit-calorie" style="background:#101820FF;
            padding: 10px 20px; font-size: 20px; color: #FEE715FF; font-weight:
            bold; border-radius: 20px; border: 2px solid #fff; outline:0;
            cursor: pointer; -ms-transform: translateX(150%);
            transform: translateX(150%);"><a href="/login/welcome">Return to Home</a></button>


                <div class="bench-container">
                    <div class="seat"></div>
                    <div class="left"></div>
                    <div class="right"></div>
                </div>
                <div class="man">
                    <div class="legs">
                        <div class="leg one"></div>
                        <div class="leg two"></div>
                        <div class="thy"></div>
                    </div>
                    <div class="main-parts">
                        <div class="lower"></div>
                        <div class="upper">
                            <div class="above"></div>
                        </div>
                    </div>
                    <div class="neck">
                        <div class="head">

                        </div>
                    </div>
                    <div class="arm"></div>
                    <div class="nose">
                        <div></div>
                        <div></div>
                    </div>
                    <div class="hairs">
                        <div class="lower"></div>
                        <div class="upper">
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                    <div class="hand"></div>
                    <div class="weight"></div>
                </div>
                <div class="bicept-machine"></div>

                <div class="rod1"></div>
            </div>

    </body>

</html>