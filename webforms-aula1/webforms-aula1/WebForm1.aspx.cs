using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webforms_aula1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}

        //protected void btnCancelar_Click(object sender, EventArgs e)
        //{
        //    LimparCampos();
        //    lblNomeCompleto.Text = string.Empty;
        //}

        //protected void btnOk_Click(object sender, EventArgs e)
        //{
        //    if (ValidarFormulario() == false)
        //    {
        //        lblNomeCompleto.Text = "Preencher todos os campos do formulário";
        //        return;
        //    }

        //    lblNomeCompleto.Text = ExibirNomeCompleto(txtNome.Text, txtSobrenome.Text);

        //    LimparCampos();
        //}

        //private void LimparCampos()
        //{
        //    txtNome.Text = string.Empty;
        //    txtSobrenome.Text = string.Empty;
        //}

        //private string ExibirNomeCompleto(string nome, string sobrenome)
        //{
        //    string nomeCompleto = $"{nome} {sobrenome}";

        //    return nomeCompleto;
        //}

        //private bool ValidarFormulario()
        //{
        //    bool valido = true;
        //    if (txtNome.Text == string.Empty)
        //    {
        //        valido = false;
        //    }

        //    if (txtSobrenome.Text == string.Empty)
        //    {
        //        valido = false;
        //    }

        //    return valido;
        //}
    }
}