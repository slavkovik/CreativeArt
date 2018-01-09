using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace CreativeArt
{
    public partial class home : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImageURL();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            int i = (int)ViewState["ImageDisplay"];
            i++;
            ViewState["ImageDisplay"] = i;
            DataRow imageDataRow = ((DataSet)ViewState["ImageData"]).Tables["image"].Select().FirstOrDefault(x => x["order"].ToString() == i.ToString());
            if (imageDataRow != null)
            {
                Image1.ImageUrl = "~/Images/" + imageDataRow["name"].ToString();
                // LabelImageName.Text =imageDataRow["name"].ToString();
                // LabelImageOrder.Text =imageDataRow["order"].ToString();
                LabelImageOrder.Text = imageDataRow["msg"].ToString();
            }
            else
            {
                SetImageURL();
            }
        }

        private void SetImageURL()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/Data/ImageData.xml"));
            ViewState["ImageData"] = ds;
            ViewState["ImageDisplay"] = 1;

            DataRow imageDataRow = ds.Tables["image"].Select().FirstOrDefault(x => x["order"].ToString() == "1");
            Image1.ImageUrl = "~/Images/" + imageDataRow["name"].ToString();
            // LabelImageName.Text =imageDataRow["name"].ToString();
            // LabelImageOrder.Text =imageDataRow["order"].ToString();
            LabelImageOrder.Text = imageDataRow["msg"].ToString();
            /*
            if (ViewState["ImageDisplayed"] == null)
            {
                Image1.ImageUrl = "~/Images/1.jpg";
                ViewState["ImageDisplayed"] = 1;
                Label1.Text = "slika 1";
            }
            else 
            {
                int i = (int)ViewState["ImageDisplayed"];
                if (i == 3)
                {
                    Image1.ImageUrl = "~/Images/1.jpg";
                    ViewState["ImageDisplayed"] = 1;
                    Label1.Text = "slika 1";
                }
                else
                {
                    i++;
                    Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
                    Label1.Text ="slika "+ i.ToString();
                    ViewState["ImageDisplayed"] = i;
                }
                
            }
          */

        }
    }
}