<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Webform1.aspx.cs" Inherits="WidgetTest1.Webform1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <title></title>

    </head>
<body>
    <form id="getQuote" runat="server">
        <h1>Stock Quote Service</h1>
        <p>Just type in the symbol name of what share you wish to get a quote on!</p>
 
     

        <asp:Label ID="Label1" runat="server" Text="Enter a symbol to lookup:" />
        <asp:TextBox id="symbol" runat="server" />
        <asp:Button ID="Button1" Text="Get Quote" runat="server" />
 
        <div>Company: <%=Company %></div>
        <div>Exchange: <%=Exchange %></div>   
        <div>Exchange Time Zone: <%=ExchangeTimeZone %></div>   
        <div>Exchange UTC Offset: <%=ExchangeUtcOffset %></div>
        <div>Exchange Closing: <%=ExchangeClosing %></div>
        <div>Currency: <%=Currency %></div>
        <div>High: <%=High %></div>
        <div>Low: <%=Low %></div>
        <div>Opening: <%=Open %></div>
        <div>Closing: <%=Closing %></div>
        <div>Last: <%=Last %></div>
        <div>Change: <%=Change %></div>
        <div>Percent Change: <%=PercentChange %></div>
        <div>Volume: <%=Volume %></div>
        <div>Average Volume: <%=AvgVolume %></div>
        <div>Market Cap: <%=MarketCap %></div>

    </form>
</body>
</html>