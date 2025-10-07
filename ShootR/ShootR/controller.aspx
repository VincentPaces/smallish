﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="controller.aspx.cs" Inherits="ShootR.controller" %>

<%@ Import Namespace="SquishIt.Framework" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/ico" href="Images/favicon.ico" />
    <link href="Styles/controller.css" rel="stylesheet" />

    <title>ShootR Controller</title>
</head>
<body class="space">
    <form runat="server">
        <asp:Panel runat="server" ID="LoginScripts" Visible="true">
            <link href="Styles/bootstrap.min.css" rel="stylesheet" />

            <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
            <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
            <script src="Scripts/jquery.cookie.js" type="text/javascript"></script>

            <div class="container">
                <div class="row">
                    <div class="span6">
                        <h1>ShootR</h1>
                        <p>Powered by <a href="http://signalr.net/">SignalR</a></p>
                    </div>
                </div>

                <style>
                    #loginHolder .btn-inverse {
                        color: #ffffff;
                        text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
                        background-color: #0f3253;
                        *background-color: #0F3243;
                        background-image: -moz-linear-gradient(top, #033c73, #0F3243);
                        background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#033c73), to(#0F3243));
                        background-image: -webkit-linear-gradient(top, #033c73, #0F3243);
                        background-image: -o-linear-gradient(top, #033c73, #0F3243);
                        background-image: linear-gradient(to bottom, #033c73, #0F3243);
                        background-repeat: repeat-x;
                        border-color: #222222 #222222 #000000;
                        border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
                        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff033c73', endColorstr='#ff0F3243', GradientType=0);
                        filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
                    }

                        #loginHolder .btn-inverse:hover,
                        #loginHolder .btn-inverse:focus,
                        #loginHolder .btn-inverse:active,
                        #loginHolder .btn-inverse.active,
                        #loginHolder .btn-inverse.disabled,
                        #loginHolder .btn-inverse[disabled] {
                            color: #ffffff;
                            background-color: #0F3243;
                            *background-color: #151515;
                        }

                        #loginHolder .btn-inverse:active,
                        #loginHolder .btn-inverse.active {
                            background-color: #080808 \9;
                        }
                </style>

                <div class="row" style="width: 525px;" id="loginHolder">
                    <div class="well" style="height: 158px;">
                        <div class="span3">
                            <p>
                                <a class="btn btn-default btn-large" href="https://github.com/ntaylormullen/shootr" target="_blank">ShootR Source</a>
                            </p>
                            <p>
                                <a class="btn btn-default btn-large" href="https://github.com/signalr/signalr" target="_blank">SignalR Source</a>
                            </p>
                        </div>
                        <div class="span3">
                            <p>
                                <asp:Button ID="FacebookLoginButton" Text="Facebook" OnClick="FacebookLoginButton_Click" runat="server" CssClass="btn btn-inverse btn-large" Width="100%" />
                            </p>
                            <p>
                                <asp:Button ID="GoogleLoginButton" Text="Google" OnClick="GoogleLoginButton_Click" runat="server" CssClass="btn btn-danger btn-large" Width="100%" />
                            </p>
                            <p>
                                <asp:Button ID="TwitterLoginButton" Text="Twitter" OnClick="TwitterLoginButton_Click" runat="server" CssClass="btn btn-info btn-large" Width="100%" />
                            </p>
                        </div>
                    </div>
                </div>

                <script type="text/javascript">
                    $("body").removeClass("space");
                </script>
            </div>
        </asp:Panel>

        <asp:Panel runat="server" ID="GameScripts" Visible="false">
            <div id="logout">Log Out</div>

            <div id="gameWrapper">
                <canvas id="game"></canvas>
            </div>

            <%= Bundle.JavaScript()
                .Add("Scripts/jquery-1.9.1.js")
                .Add("Scripts/jquery.cookie.js")
                .Add("Scripts/shortcut.js")
                .Add("Scripts/jquery.signalR-1.0.0.js")                      
            .Render("Scripts/jqueryLIBS.js")
            %>

            <script src='<%= ResolveClientUrl("~/signalr/hubs") %>' type="text/javascript"></script>

            <%= Bundle.JavaScript()
                .Add("Client/Utilities/Vector2.js")
                .Add("Client/Utilities/Size.js")
                .Add("Client/Space/Camera.js")
                .Add("Scripts/Client/Configuration/ConfigurationManager.js")
                .Add("Client/Utilities/UtilityFunctions.js")
                .Add("Client/Space/GameScreen.js")
                .Add("Client/GameController/ShipControllerFunctions.js")
                .Add("Client/GameController/JoyStick.js")
                .Add("Client/GameController/Adapters/IETouchAdapter.js")
                .Add("Client/GameController/Adapters/MouseAdapter.js") 
                .Add("Client/GameController/Adapters/TouchAdapter.js")
                .Add("Client/GameController/TouchController.js")
                .Add("Client/Space/CanvasRenderer.js")
                .Add("Client/GameController/controllerMain.js")                     
            .Render("Scripts/CORE.js")
            %>
        </asp:Panel>

    </form>
</body>
</html>
