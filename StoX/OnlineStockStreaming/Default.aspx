<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Title="Online stock streaming" Inherits="_Default" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
</head>
<body style="font-family:Arial;font-size:10px;">
    <form id="form1" runat="server">
        <!--Script Manager must be inserted before any other AJAX control-->
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <!--Ajax update panel-->
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
        <!--Grid View which will display quotes-->
        <asp:GridView ID="GridView1" runat="server" Width="800px" BackColor="White" BorderColor="#336666"
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#336666" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
         
         <!--Ajax Timer control which will refresh grid view at specified interval (2 seconds)-->
         <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick" Enabled=true >
        </asp:Timer>
        </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
