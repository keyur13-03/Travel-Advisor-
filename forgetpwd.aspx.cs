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


public partial class forgetpwd : System.Web.UI.Page
{
    string s = ConfigurationManager.ConnectionStrings["db_hotelreommendationsystemConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         string frmemail = txtemail.Text.Trim().ToLower().ToString();
        //string frmseccode = txtpsw.Text.ToString();

        SqlConnection conn = new SqlConnection(s);
        conn.Open();
        string gg = "SELECT COUNT(*) FROM tbl_member WHERE mememail='" + frmemail + "'";
        //Response.Write(gg);
        //Response.End();
        SqlCommand cmdcnt = new SqlCommand(gg, conn);
        int cntrep = Convert.ToInt32(cmdcnt.ExecuteScalar());
        if (cntrep == 0)
        {
            Response.Write("<script>alert('Check Either Email Or Security Code Do Not Match');</script>");
        }
        else
        {
            string h3 = "SELECT * FROM tbl_member WHERE mememail='" + frmemail + "'";
            SqlCommand cmdfetch1 = new SqlCommand(h3, conn);
            SqlDataReader rd3 = cmdfetch1.ExecuteReader();
            string s4 = string.Empty;
            lblrepsw.Visible = true;
            while (rd3.Read())
            {
                lblrepsw.Text = "Your Password Is : "+rd3["mempsw"].ToString();  
            }
            rd3.Close();
        }
        conn.Close();
        conn.Dispose();

    }

    }
