using Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webforms_aula1.Paginas.Montadora
{
    public partial class Lista : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                CarregarGrid();
            }
        }

        private void CarregarGrid()
        {
            MontadoraBLL montBll = new MontadoraBLL();
            gvMontadora.DataSource = montBll.Buscar();
            gvMontadora.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Add.aspx");
        }

        protected void gvMontadora_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int idMontadora = Convert.ToInt32(gvMontadora.Rows[e.NewEditIndex].Cells[1].Text);

            Response.Redirect($"./Add.aspx?id={idMontadora}");
        }

        protected void gvMontadora_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int idMontadora = Convert.ToInt32(gvMontadora.Rows[e.RowIndex].Cells[1].Text);
            MontadoraBLL montBll = new MontadoraBLL();
            montBll.Excluir(idMontadora);

            CarregarGrid();
        }
    }
}