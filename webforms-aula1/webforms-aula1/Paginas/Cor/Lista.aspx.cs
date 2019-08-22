using System;

namespace webforms_aula1.Paginas.Cor
{
    public partial class Lista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Add.aspx");
        }
    }
}