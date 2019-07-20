using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GuestBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGuiND_Click(object sender, EventArgs e)
    {
        string sfile = Server.MapPath(@"\") + "data.txt";

        using (StreamWriter writer = new StreamWriter(sfile, true))
        {
            writer.WriteLine(txtTieuDe.Text);
            writer.WriteLine(txtHoTen.Text);
            writer.WriteLine(txtEmail.Text);
            writer.WriteLine(txtNoiDung.Text);
            writer.WriteLine("#END");
            writer.Close();
        }
    }
}