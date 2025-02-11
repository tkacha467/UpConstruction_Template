using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

namespace Construction
{
    public partial class Product : System.Web.UI.Page
    {

        SqlCommand cmd;
        SqlConnection con;
        string image;
        string[] type = new string[3];
        string t1, t2, t3;
        string s = ConfigurationManager.ConnectionStrings["database"].ToString();

        void connection()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void uploadimage()
        {
            if (imageup.HasFile)
            {
                image = "images/" + imageup.FileName;
                imageup.SaveAs(Server.MapPath(image));
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            connection();
            uploadimage();
            typecheck();

            for (int i = 0; i < 1; i++)
            {
                if (type[i] == "Food")
                {
                    t1 = "Food";
                    i++;
                }
                else
                {
                    t1 = "Null";
                    i++;
                }

                if (type[i] == "Good")
                {
                    t2 = "Good";
                    i++;
                }
                else
                {
                    t2 = "Null";
                    i++;
                }

                if (type[i] == "Device")
                {
                    t3 = "Device";
                }
                else
                {
                    t3 = "Null";
                }
            }
            cmd = new SqlCommand($"insert into Product_tbl(Name,Code,Sale_mode,Quantity,Food,Good,Device,HeadQuater,Image)Values('{txtName.Text}','{txtcode.Text}','{rbsalemode.SelectedValue}','{txtquantity.Text}','{t1}','{t2}','{t3}','{DropDownList1.SelectedValue}','{image}')", con);
            cmd.ExecuteNonQuery();
            Response.Write("Data Entered");
        }

        void typecheck()
        {
            for (int i = 0; i < type.Length; i++)
            {
                if (chktype.Items[i].Selected)
                {
                    type[i] = chktype.Items[i].Text;
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            connection();
        }
    }
}