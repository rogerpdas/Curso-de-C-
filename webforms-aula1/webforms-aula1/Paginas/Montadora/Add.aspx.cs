using Business;
using Business.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webforms_aula1.Paginas.Montadora
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                if (Request.QueryString["id"]!=null)
                {
                    int idMontadora = Convert.ToInt32(Request.QueryString["id"]);
                    MontadoraBLL montadoraBLL = new MontadoraBLL();
                    var montadora = montadoraBLL.Buscar(idMontadora);
                    txtId.Text = montadora.Id.ToString();
                    txtNomeMontadora.Text = montadora.Nome;
                }
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            MontadoraModel model = new MontadoraModel();
            model.Nome = txtNomeMontadora.Text;
            model.Logo = "Logo.png";

            if (txtId.Text !=string.Empty)
            {
                model.Id = Convert.ToInt32(txtId.Text);
            }

            var montBll = new MontadoraBLL();
            montBll.Salvar(model);

            Response.Redirect("Lista.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lista.aspx");
        }
    }
}