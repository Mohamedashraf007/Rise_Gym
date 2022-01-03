using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace Risegym
{
    public partial class Registrationpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection f = new OleDbConnection(ConfigurationManager.ConnectionStrings["Registration"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand ("insert into [Registration]([Username],[Password],[Cpassword],[Email]) values('"+uname.Text+"','"+pass.Text+"','"+cpass.Text+"','"+email.Text+"')" ,f);
            f.Open();
            cmd.ExecuteNonQuery();
            f.Close();
        }
    }
}