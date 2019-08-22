using System;
using Business.Model;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;

namespace webforms_aula1.Paginas.TipoCombustivel
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			if (Page.IsPostBack == false)
			{
				if (Request.QueryString["id"] != null)
				{
					int idTipoCombustivel = Convert.ToInt32(Request.QueryString["id"]);
					TipoCombustivelBLL tipoCombustivelBLL = new TipoCombustivelBLL();
					var tipoCombustivel = tipoCombustivelBLL.Buscar(idTipoCombustivel);
					txtId.Text = tipoCombustivel.Id.ToString();
					
				}
			}
		}

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Lista.aspx");
        }

		protected void btnSalvar_Click(object sender, EventArgs e)
		{
			TipoCombustivelModel model = new TipoCombustivelModel();
			model.Descricao = txtDescricao.Text;

			if(txtId.Text != string.Empty)
			{
				model.Id = Convert.ToInt32(txtId.Text);
			}

			var tipoCombustivelBLL = new TipoCombustivelBLL();

			tipoCombustivelBLL.Salvar(model);

			Response.Redirect("./Lista.aspx");

		}
	}
}