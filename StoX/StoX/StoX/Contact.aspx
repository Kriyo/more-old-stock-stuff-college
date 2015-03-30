<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="StoX.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Stox</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>+35351xxxxxx</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>+35351xxxxxx</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:Support@Stox.ie">Support@Stox.ie</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@Stox.ie">Marketing@Stox.ie</a></span>
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:General@Stox.ie">General@Stox.ie</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            23 Cloudview, <br />
            Heaven, Lulz 2322-6399
        </p>
    </section>
</asp:Content>