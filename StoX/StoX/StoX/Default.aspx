<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StoX._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Stox.ie</h1>
                <h2>Secure Investments</h2>
            </hgroup>
            <p>
                Welcome to Stox, where we strive to maintain the best possible execution policies. 
           </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     
    <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
    <h3>Get started in three easy steps:</h3>
    <ol class="round">
        <li class="one"> 

            <h5>Getting Registered</h5>
            Stox offers a very user friendly registration system but most importantly secure.
            A design surface and hundreds of controls and components let you rapidly build a sophisticated, powerful portfolio with quick secure data access.
            <a href="~/Account/Register.aspx">Register here.</a>
        </li>
        <li class="two">
            <h5>Confirm Email</h5>
            You have been sent an email once you create your account. Just verify and you're ready to start creating your personal portfolio.
        </li>
        <li class="three">
            <h5>Login</h5>
            Your account has been verified time to log in!
            <a href="~/Account/Login.aspx">Login Here</a>
        </li>
    </ol>
    </AnonymousTemplate>
        <LoggedInTemplate>         
            Logged in View

        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
