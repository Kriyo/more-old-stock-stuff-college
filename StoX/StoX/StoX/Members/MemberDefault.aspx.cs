using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace StoX.Members
{
    public partial class MemberDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Bind grid view                
                GridView1.DataSource = GetGridData();
                GridView1.DataBind();
            }
        }
        DataTable GetGridData()
        {
            DataTable DT = new DataTable();
            DT.Columns.Add("Symbol", typeof(string));
            DT.Columns.Add("Company Name", typeof(string));
            DT.Columns.Add("LastTrade", typeof(float));
            DT.Columns.Add("Bid", typeof(float));
            DT.Columns.Add("Ask", typeof(float));
            DT.Columns.Add("Volume", typeof(int));
            DT.Columns.Add("Market Capital", typeof(string));
            DT.Columns.Add("EPS", typeof(float));
            DT.Columns.Add("P/E", typeof(float));

            Random r = new Random();

            //Apple           

            float LastTrade = ((float)r.Next(17222, 17434)) / 100;
            float Bid = LastTrade - (float)0.34;
            float Ask = LastTrade + (float)0.43;
            int Volume = r.Next(23000000, 23600000);
            DT.Rows.Add("AAPL", "Apple Inc.", LastTrade, Bid, Ask, Volume, "153.88B", 3.93, 44.71);

            //Microsoft

            LastTrade = ((float)r.Next(3378, 3487)) / 100;
            Bid = LastTrade - (float)0.34;
            Ask = LastTrade + (float)0.43;
            Volume = r.Next(38064903, 40075689);
            DT.Rows.Add("MSFT", "Microsoft Corporation", LastTrade, Bid, Ask, Volume, "153.88B", 2.13, 21.2);

            //Yahoo

            LastTrade = ((float)r.Next(2520, 2834)) / 100;
            Bid = LastTrade - (float)0.34;
            Ask = LastTrade + (float)0.43;
            Volume = r.Next(14400000, 15500000);
            DT.Rows.Add("YHOO", "Yahoo Inc.", LastTrade, Bid, Ask, Volume, "34.48B", 1.42, 10.23);

            //Google

            LastTrade = ((float)r.Next(67025, 69000)) / 100;
            Bid = LastTrade - (float)5;
            Ask = LastTrade + (float)5;
            Volume = r.Next(4500000, 5000000);
            DT.Rows.Add("GOOG", "Google Inc.", LastTrade, Bid, Ask, Volume, "213.73B", 12.42, 53.23);

            //WYNN

            LastTrade = ((float)r.Next(13249, 14022)) / 100;
            Bid = LastTrade - (float)0.90;
            Ask = LastTrade + (float)0.89;
            Volume = r.Next(1222785, 1400000);
            DT.Rows.Add("WYNN", "Wynn Resorts Ltd.", LastTrade, Bid, Ask, Volume, "15.13B", 1.81, 73.15);

            return DT;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //Bind grid view
            GridView1.DataSource = GetGridData();
            GridView1.DataBind();
        }
    }
}