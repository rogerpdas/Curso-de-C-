using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webforms_aula1
{
    public partial class aula_lista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lstEmails.Items.Add(txtEmail.Text);
            ddlEmails.Items.Add(txtEmail.Text);
            
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            string itemSelecioando = lstEmails.SelectedValue;
            lstEmails.Items.Remove(itemSelecioando);
            txtEmail.Text = string.Empty;
        }
    }
}