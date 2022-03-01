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

public partial class Member_register : System.Web.UI.Page
{
    string s = ConfigurationManager.ConnectionStrings["db_hotelreommendationsystemConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(s);
        conn.Open();
        Random n2 = new Random();
        int ss = n2.Next(1000, 2000);
        string frmmemcode = ss.ToString();

        //countrycode
        string c = txtmemfname.Text.Trim().ToString();
        string frmmemfname = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(c.ToLower());
        string c2 = txtmemlastname.Text.Trim().ToString();
        string frmmemlastname = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(c2.ToLower());
        string frmdob = txtdd.Text.Trim().ToString() + "-" + txtmm.Text.Trim().ToString() + "-" + txtyyyy.Text.Trim().ToString();
        string frmmemgender = radiogender.SelectedValue.ToString();
        string frmmememail = txtmememail.Text.ToLower().Trim().ToString();
        string frmmempsw = txtmempsw.Text.ToString();
        string frmmemmobile = txtmemmobile.Text.ToString();
        string frmmemaddress = txtmemaddress.Text.ToLower().Trim().ToString();
        //string hh = DateTime.Now.ToString("MM/dd/yyyy");
        string hh = DateTime.Now.ToString("dd/MM/yyyy");
        string frmmemstatus = "Active";

        string gg = "SELECT COUNT(*) FROM tbl_member WHERE mememail='" + frmmememail + "'";
        SqlCommand cmdcnt = new SqlCommand(gg, conn);
        int cntrep = Convert.ToInt32(cmdcnt.ExecuteScalar());

        if (cntrep > 0)
        {
            Response.Write("<script>alert('Entered Member Email Is Already Exists');</script>");
        }
        else
        {
            string hins = "INSERT INTO tbl_member(memcode,memfname,memlastname,memdob,memgender,mememail,mempsw,memmobile,memaddress,memjoindate,memstatus) VALUES('" + frmmemcode + "','" + frmmemfname + "','" + frmmemlastname + "','" + frmdob + "','" + frmmemgender + "','" + frmmememail + "','" + frmmempsw + "','" + frmmemmobile + "','" + frmmemaddress + "','" + hh + "','" + frmmemstatus + "')";

            //Response.Write(hh);
            //Response.End();
            SqlCommand cmdins = new SqlCommand(hins, conn);
            int kk = cmdins.ExecuteNonQuery();
            if (kk > 0)
            {
                Response.Write("<script>alert('Sucessfully Insert Member Record');window.location='original login.aspx';</script>");

                conn.Close();
                conn.Dispose();
            }

        }
    }
}