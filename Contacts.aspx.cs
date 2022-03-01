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


public partial class Contacts : System.Web.UI.Page
{
    string s = ConfigurationManager.ConnectionStrings["db_HRSConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(s);
        conn.Open();
        Random n2 = new Random();
        int ss = n2.Next(1000, 2000);
        string frminqcode = ss.ToString();


        string frmmemcode = "Unknown";
        string c = txtinqfname.Text.Trim().ToString();
        string frminqfname = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(c.ToLower());

  
        string frminqemail = txtinqemail.Text.Trim().ToLower().ToString();
        string frmcity = txtcity.Text.Trim().ToString();
        string frmmsg = txtmsg.Text.ToString();
        string hh = DateTime.Now.ToString("dd/MM/yyyy");
        string frminq_readstatus = "Not Read";
        string frminq_status = "Active";

        string hins = "INSERT INTO tbl_contactus(inq_code,memcode,inq_fname,inq_email,inq_city,inq_msg,inq_date,inq_readstatus,inq_status) VALUES('" + frminqcode + "','" + frmmemcode + "','" + frminqfname + "','" + frminqemail + "','" + frmcity + "','" + frmmsg + "','" + hh + "','" + frminq_readstatus + "','" + frminq_status + "')";

        SqlCommand cmdins = new SqlCommand(hins, conn);
        int kk = cmdins.ExecuteNonQuery();
        if (kk > 0)
        {
            Response.Write("<script>alert('Sucessfully Insert Send Inquiry');window.location='index.html';</script>");
        }
        conn.Close();
        conn.Dispose();

    }
}