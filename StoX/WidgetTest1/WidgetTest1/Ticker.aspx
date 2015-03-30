<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ticker.aspx.cs" Inherits="WidgetTest1.Ticker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Syles/Styles.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8" />
    <title>Ticker</title>
    <style type="text/css">
        #scrollingText
        {
            width: 728px;
            height: 16px;
            border: solid 1px #ccc;
            position: relative;
            padding: 2px 0px;
        }

            #scrollingText div.scrollableArea p
            {
                display: block;
                float: left;
                margin: 0;
                padding-right: 7px;
                padding-top: 1px;
                font-family: Courier, Arial, Sans-Serif;
                font-size: 12px;
                line-height: 12px;
                font-weight: normal;
                background-color: #fff;
                color: #000;
                white-space: nowrap;
            }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <div id="mainColumn">
                <img src="Images/troll.png" alt="Trollololol" style="margin-bottom: 15px;" width="300" height="200">
                <h1>The ticker that won't fucking work</h1>
                <br />
                <div id="scrollingText">
                    <div id="scrollingHotSpotLeft" style="display: none;"></div>
                    <div id="scrollingHotSpotRight" style="display: none;"></div>
                    <div id="scrollingWrapper">
                        <div id="scrollableArea" style="width: 4039px">
                            <p>Google - </p>
                            <p>Microsoft - </p>
                            <p>Apple </p>
                            <p>Intel - </p>
                            <p>Linux - </p>
                            <p>Dell - </p>
                            <p>Razer - </p>
                            <p>Yahoo - </p>
                            <p>Steelseries - </p>
                            <p>Fnatic - </p>
                            <p>Ninjas In Pyjamas - </p>
                            <p>CounterLogic - </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js" type="text/javascript"></script>
      
          <script src="js/jquery.smoothdivscroll-1.3-min.js" type="text/javascript">
                   
           
        </script>
        <script>
            $(document).ready(function () {
                $("#scrollingText").smoothDivScroll({
                    autoScrollingMode: "always",
                    autoScrollingDirection: "endlessLoopRight",
                    autoScrollingStep: 1,
                    autoScrollingInterval: 15
                });


                $("#scrollingText").bind("mouseover", function () {
                    $("#scrollingText").smoothDivScroll("stopAutoScrolling");
                });

                $("#scrollingText").bind("mouseout", function () {
                    $("#scrollingText").smoothDivScroll("startAutoScrolling");
                });
            });
        </script>
    </form>
</body>
</html>
