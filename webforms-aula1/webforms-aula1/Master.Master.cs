using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webforms_aula1
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (Session[Util.Util.SessaoUsuarioLogado] == null)
            //{
            //    Response.Redirect("/login.aspx");
            //}
        }
    }
}