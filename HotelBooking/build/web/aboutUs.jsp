<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee:400,400i">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alef">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alegreya+Sans+SC">
    <style>
        li{
            font-family: Alef, sans-serif;
            color: white;
            font-size: 18px;
            letter-spacing: 1.8px;
            
        }
        .text-focus-in{-webkit-animation:text-focus-in 1s cubic-bezier(.55,.085,.68,.53) both;animation:text-focus-in 1s cubic-bezier(.55,.085,.68,.53) both}
        .tracking-in-expand-fwd{-webkit-animation:tracking-in-expand-fwd .8s cubic-bezier(.215,.61,.355,1.000) both;animation:tracking-in-expand-fwd .8s cubic-bezier(.215,.61,.355,1.000) both}
        @-webkit-keyframes tracking-in-expand-fwd{0%{letter-spacing:-.5em;-webkit-transform:translateZ(-700px);transform:translateZ(-700px);opacity:0}40%{opacity:.6}100%{-webkit-transform:translateZ(0);transform:translateZ(0);opacity:1}}@keyframes tracking-in-expand-fwd{0%{letter-spacing:-.5em;-webkit-transform:translateZ(-700px);transform:translateZ(-700px);opacity:0}40%{opacity:.6}100%{-webkit-transform:translateZ(0);transform:translateZ(0);opacity:1}}
       @-webkit-keyframes text-focus-in{0%{-webkit-filter:blur(12px);filter:blur(12px);opacity:0}100%{-webkit-filter:blur(0);filter:blur(0);opacity:1}}@keyframes text-focus-in{0%{-webkit-filter:blur(12px);filter:blur(12px);opacity:0}100%{-webkit-filter:blur(0);filter:blur(0);opacity:1}}
    </style>
    </head>
    <body style=" background-image: url('images/24.jpg'); background-repeat: no-repeat;background-size: cover;">
        <%@include file="includes/navbar.jsp"%>
        
        <div class="container" style="background-color: rgba(0,32,61,0.6);margin-top: 3%;">
            <h2 style="color: white; font-family:Alef, sans-serif; ">About Us</h2>
            <hr>
            <div class="row">
                <div class="col-md-12 col-sm-12" style="margin-top: 3%;">
                    <p class="tracking-in-expand-fwd" style="color: white;font-size: 20px;text-align: center;line-height: 1.6; font-family:Alef, sans-serif;">Savour your penchant for finer comforts. Partner with sheer luxury at Cinnamon Grand, as you attend a business event in the capital city.<br> Let the opulence of our meeting rooms and conference halls seep into flourishing <br>work partnerships. <br>Raise a toast to all the success at our plush restaurants and taste jubilance like never before. When you’ve enjoyed every bit of your Grand accomplishments , retire to your room, and relish the exquisite comforts that Colombo’s most lavish business hotel has to offer.</p>
                </div>
                <div class="col-md-12 col-sm-12" style="margin-top: 2%;margin-bottom: 3%;line-height: 1.6;">
                    <p class="tracking-in-expand-fwd" style="color: white;font-size: 20px;text-align: center; font-family:Alef, sans-serif;">Savour your penchant for finer comforts. Partner with sheer luxury at Cinnamon Grand, as you attend a business event in the capital city.<br> Let the opulence of our meeting rooms and conference halls seep into flourishing <br>work partnerships. <br>Raise a toast to all the success at our plush restaurants and taste jubilance like never before. When you’ve enjoyed every bit of your Grand accomplishments , retire to your room, and relish the exquisite comforts that Colombo’s most lavish business hotel has to offer.</p>
                </div>
            </div>
        </div>
        
        <div class="container" style="background-color: rgba(0,32,61,0.6);margin-top: 3%;">
            <h3 class="text-focus-in" style="color: white; font-family:Alef, sans-serif; ">Find Us On Maps</h3>
            <hr>
            <div class="col-md-6">
             <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31611.42144868646!2d80.72672579291388!3d7.954677833305006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3afca0dfa73179d1%3A0x1e04c1150cff0edf!2sSigiriya!5e0!3m2!1sen!2slk!4v1588593799514!5m2!1sen!2slk" width="100%" height="300px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
            <div class="col-md-6">
                <ul >
                    <li>Contact Us: +(94)258 624 2415</li>
                    <li>Address : 118 , Example Road, Sigiriya ,Sri Lanka</li>
                    <li>E-mail: Testingmail@SeegiriVilla.com</li>
                </ul>
            </div>
        </div>
    </body>
</html>
