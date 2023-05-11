using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudingWebForm
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Contato> contatos = new List<Contato>();
        protected void Page_Load(object sender, EventArgs e)
        {
            contatos.Add(new Contato { Nome = "Kelwyn", Id = 1});
            contatos.Add(new Contato { Nome = "Kalil", Id = 2 });

            ddlContatos.DataSource = contatos; //aplica lista
            ddlContatos.DataValueField= "Id"; //define que o ID vai ser o campo Numerico
            ddlContatos.DataTextField= "Nome"; //define que o campo nome vai ser o campo String
            ddlContatos.DataBind(); //retorna os valores da lista

            GridView1.DataSource = contatos;
            GridView1.DataBind();
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            Response.Write("Olá " + txtMensagen.Text);
            Response.Write("Telefone " + txtTelefone.Text);//pode ser usado o Request["telefone" + telefone.Value]
            Response.Write("<script>alert('Olá " + txtMensagen.Text + "')</script>"); 
        }
    }
}
