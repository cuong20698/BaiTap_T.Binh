using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class XemTTMayChu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = (string)Application["username"];
        string password = (string)Application["password"];
        if (username == "admin" && password == "123")
        {
            string nameserver = Server.MachineName;
            string linkserver = Server.MapPath(@"\") + "XemTTMayChu.aspx";
            Response.Write("Name server: " + nameserver + "</br>" + "Link: " + linkserver);
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Application.Remove("username");
        Application.Remove("password");
        Response.Redirect("XemTTMayChu.aspx");
    }
}