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
        string nameserver = Server.MachineName;
        string linkserver = Server.MapPath(@"\") + "XemTTMayChu.aspx";
        Response.Write("Name server: "+nameserver+"</br>"+"Link: " +linkserver);
    }
}