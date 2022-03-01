using System;
using System.Collections.Generic;
using System.Configuration;
using System.Collections;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.Services;
using System.IO;


public partial class original_login : System.Web.UI.Page
{
    string s = ConfigurationManager.ConnectionStrings["db_hotelreommendationsystemConnectionString"].ConnectionString.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(s);
        conn.Open();

        string frmemail = txtemail.Text.Trim().ToString();
        string frmpsw = txtpsw.Text.ToString();

        string km = "SELECT COUNT(*) FROM tbl_member WHERE mememail='" + frmemail + "' and mempsw='" + frmpsw + "' ";
        SqlCommand cmd = new SqlCommand(km, conn);
        int ans = Convert.ToInt32(cmd.ExecuteScalar());
        //Response.Write(ans);
        //Response.End();
        if (ans > 0)
        {
            Session["sessmememail"] = txtemail.Text.ToString();
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            lbllogerr.Visible = true;
            lbllogerr.Text = "Entered Username Or Password Do Not Match";
            //Response.Write("not login");

        }

        conn.Close();
        conn.Dispose();


    }
}

