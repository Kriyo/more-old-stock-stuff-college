using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WidgetTest1
{
    public partial class Webform1 : System.Web.UI.Page
        {
            public string Company { get; set; }
            public string Exchange { get; set; }
            public string ExchangeTimeZone { get; set; }
            public string ExchangeUtcOffset { get; set; }
            public double ExchangeClosing { get; set; }
            public double Currency { get; set; }
            public double Last { get; set; }
            public double High { get; set; }
            public double Low { get; set; }
            public double Open { get; set; }
            public double Closing { get; set; }
            public string Change { get; set; }  
            public double PercentChange { get; set; }
            public double Volume { get; set; }
            public double AvgVolume { get; set; }
            public double MarketCap { get; set; }
        

            protected void Page_Load(object sender, EventArgs e)
            {
                if (Request.Form["symbol"] != null)
                {
                    string symbol = Request.Form["symbol"];
                    FetchQuote(symbol);
                }
            }

            private void FetchQuote(string symbol)
            {
                try
                {

                    string url = "http://www.google.com/ig/api?stock=" + Server.UrlEncode(symbol);


                    XDocument doc = XDocument.Load(url);

                    // use linq here -  see page 644

                    // bind result to grid 

                    Company = GetData(doc, "company");
                    Exchange = GetData(doc, "exchange");
                    ExchangeTimeZone = GetData(doc, "exchange_timezone");
                    ExchangeUtcOffset = GetData(doc, "exchange_utc_offset");
                    ExchangeClosing = Convert.ToDouble(GetData(doc, "exchange_closing"));
                    Currency = Convert.ToDouble(GetData(doc, "currency"));
                    High = Convert.ToDouble(GetData(doc, "high"));
                    Low = Convert.ToDouble(GetData(doc, "low"));
                    Open = Convert.ToDouble(GetData(doc, "open"));
                    Closing = Convert.ToDouble(GetData(doc, "y_close"));
                    Last = Convert.ToDouble(GetData(doc, "last"));
                    Change = GetData(doc, "change");
                    PercentChange = Convert.ToDouble(GetData(doc, "perc_change"));
                    Volume = Convert.ToDouble(GetData(doc, "volume"));
                    AvgVolume = Convert.ToDouble(GetData(doc, "avg_volume"));
                    MarketCap = Convert.ToDouble(GetData(doc, "market_cap"));
                }
                catch (Exception e)
                {
                    Console.WriteLine("Data not yet available" + e);
                }

            }

            private string GetData(XDocument doc, string name)
            {
                return doc.Root.Element("finance").Element(name).Attribute("data").Value;
            }
        }
}