using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebThucTap
{
    public partial class EditProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
            string path = Server.MapPath("~/Anh/");
            f.PostedFile.SaveAs(path + f.FileName);
            SqlDataSource1.UpdateParameters["ImagePath"].DefaultValue = "Anh/" + f.FileName;
        }
    }
}