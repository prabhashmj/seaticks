



<style>
    body {
        color: white;
        background-color: #d0d9df;
        font-family: sans-serif;
        line-height: 1.5;
    }
    .security {
        width: 96%;
        /*max-width: 800px;*/

        margin: 10vh auto;
    }

    .security h3 {
        font-size: 16px;
        font-weight: normal;
        text-align: center;
        color: #555555;
    }

    .security h3 span {
        display: inline-block;
        width: 5px;
        height: 5px;
        background: #333333;
        border-radius: 50%;
        position: relative;
        top: -3px;
        margin: 0px 15px;
    }

    .security h3 em {
        font-weight: bold;
        font-style: normal;
        color: #333;
    }

    .security__body {
        color: #444;
        background-color: #fff;
        padding: 20px 30px;
        margin-bottom: 30px;
    }
    .security__body a {
        color: #9E9E9E;

    }
    .security__content {
        color: #666;
        font-size: 14px;
        line-height: 1.4;
    }
    .security__title {
        display: block;
        margin: 0 0 20px 0;
        padding-bottom: 10px;
        border-bottom: 1px solid #eee;
        text-align: center;
        font-size: 21px;
        font-weight: normal;
    }
    .message.bad {
        color: red;
        font-weight: bold;
        text-align: left;
    }

    fieldset {
        border: 0;
        margin: 0;
        padding: 0;
    }
    .field.text {
        margin-bottom: 20px;
    }
    .field.text label {
        display: block;
        font-size: 16px;
        font-weight: bold;
        margin-bottom: 3px;
    }
    input.text {
        font-size: 16px;
        width: 100%;
        display: block;
        box-sizing: border-box;
        border: 1px solid #ccc;
        padding: 10px;
        cursor: pointer;

    }
    input[type=submit] {
        width: 100%;
        display: block;
        box-sizing: border-box;
        color: #fff;
        background-color: #337ab7;
        border-color: #2e6da4;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
        padding: 10px;
        border: none;
    }
    .Actions {
        margin: 20px 0;
    }

    /* Simple CSS3 Fade-in Animation */
    @-webkit-keyframes text { from { opacity:0; } to { opacity:1; } }
    @-moz-keyframes text { from { opacity:0; } to { opacity:1; } }
    @keyframes text { from { opacity:0; } to { opacity:1; } }

    .text {
        opacity:0;
        -webkit-animation:text ease-in 1;
        -moz-animation:text ease-in 1;
        animation:text ease-in 1;

        -webkit-animation-fill-mode:forwards;
        -moz-animation-fill-mode:forwards;
        animation-fill-mode:forwards;

        -webkit-animation-duration:1s;
        -moz-animation-duration:1s;
        animation-duration:1s;
    }


    @media only screen and (min-width: 600px) {
        .security__body {width: 60%; margin-left:15%;}
    }

    @media only screen and (min-width: 768px) {
        /* For desktop: */

        .security__body {width: 50%; margin-left: 25%;}

    }
    @media only screen and (min-width: 1920px) {
        /* For desktop: */

        .security__body {width: 50%; margin-left: 25%; }

    }
</style>

<div class="security">
    <div style="max-width: 500px; margin: auto; " class="security__body">
        <h1 class="security__title">
            {$Title}
        </h1>

        <div class="security__content">
            {$Content}
        </div>

        <div class="security__form">
            {$Form}
        </div>
    </div>
</div>
