<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WidgetTest1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                <script src="http://widgets.macroaxis.com/widgets/url.jsp?t=42&s=GOOG,YHOO,F,T,CRM"></script>
               
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            Invest!
        </li>
        <li class="two">
           Invest!
        </li>
        <li class="three">
            Invest!
        </li>
    </ol>
    <script type='text/javascript' src='http://www.google.com/jsapi'></script>
    <script type='text/javascript'>
        google.load('visualization', '1', { 'packages': ['annotatedtimeline'] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('date', 'Date');
            data.addColumn('number', 'Sold Pencils');
            data.addColumn('string', 'title1');
            data.addColumn('string', 'text1');
            data.addColumn('number', 'Sold Pens');
            data.addColumn('string', 'title2');
            data.addColumn('string', 'text2');
            data.addRows([
              [new Date(2008, 1, 1), 30000, undefined, undefined, 40645, undefined, undefined],
              [new Date(2008, 1, 2), 14045, undefined, undefined, 20374, undefined, undefined],
              [new Date(2008, 1, 3), 55022, undefined, undefined, 50766, undefined, undefined],
              [new Date(2008, 1, 4), 75284, undefined, undefined, 14334, 'Out of Stock', 'Ran out of stock on pens at 4pm'],
              [new Date(2008, 1, 5), 41476, 'Bought Pens', 'Bought 200k pens', 66467, undefined, undefined],
              [new Date(2008, 1, 6), 33322, undefined, undefined, 39463, undefined, undefined]
            ]);

            var chart = new google.visualization.AnnotatedTimeLine(document.getElementById('chart_div'));
            chart.draw(data, { displayAnnotations: true });
        }
    </script>
     <div id='chart_div' style='width: 700px; height: 240px;'></div> <div id='Div1' style='width: 700px; height: 240px;'></div>

</asp:Content>
