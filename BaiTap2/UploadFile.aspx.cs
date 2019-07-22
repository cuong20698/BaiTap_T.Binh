using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void LinkUpload_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void LinkXemUpload_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (btnFile.HasFile && CheckFileType(btnFile.FileName))
        {
            string fileName = @"\FileUpload\" + btnFile.FileName;
            btnFile.SaveAs(MapPath(fileName));
        }
    }

    private bool CheckFileType(string fileName)
    {
        string check = Path.GetExtension(fileName);
        switch (check.ToLower())
        {
            case ".doc":
                return true;
            case ".docx":
                return true;
            case ".jpg":
                return true;
            default:
                return false;
        }
    }
}