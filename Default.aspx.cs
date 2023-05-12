using System;
using System.Collections;
using System.Collections.Generic;
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

            //IsPostBack Verifica se a pagina está sendo carregada
            if (!IsPostBack)
            {

                ArrayList Genero = new ArrayList();

                Genero.Add("Masculino");
                Genero.Add("Feminino");
                Genero.Add("Prefiro não dizer");

                LBGenero.DataSource = Genero;
                LBGenero.DataBind();

            }

            if (!IsPostBack)
            {
                ValorTotal.Text = CalcularValorTotal(false).ToString("c");
            }

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            Response.Write("Olá " + txtMensagen.Text);
            Response.Write("Telefone " + txtTelefone.Text);//pode ser usado o Request["telefone" + telefone.Value]
            Response.Write("<script>alert('Olá " + txtMensagen.Text + "')</script>"); 
        }

        protected void SubmitBtn_ClickTurnos(object sender, EventArgs e)
        {
            if (LBTurno.SelectedIndex > -1)
                LSelecTurno.Text = "Você selecionou: " + LBTurno.SelectedItem.Text;
        }

        protected void SubmitBtn_ClickAnimais(Object sender, EventArgs e)
        {
            string msg = "";
            foreach (ListItem lista in LBAnimais.Items)
            {
                if (lista.Selected == true)
                {
                    msg += "<BR>" + lista.Text + " Foi selcionado.";
                }
            }
            LSelecAnimais.Text = msg;
        }
        protected void SubmitBtn_ClickGenero(Object sender, EventArgs e)
        {

            if (LBGenero.SelectedIndex > -1)
                LSelectGenero.Text = "Você escolheu: " + LBGenero.SelectedItem.Text;

        }

        protected void Check_Clicked(object sender, EventArgs e)
        {
            ValorTotal.Text = CalcularValorTotal(CBTaxaServico.Checked).ToString("c");
        }
        double CalcularValorTotal(bool Taxa)
        {
            double Result = 23.99 + 3.99;

            if (Taxa)
            {
                Result += Result * 0.10;
            }

            return Result;

        }
        protected void Button1_ClickUploadImage(object sender, EventArgs e)
        {
            StartUpLoad();
        }

        protected void StartUpLoad()
        {
            string imgName = FUImagem.FileName;
            //Define o caminho da imagem  
            string imgPath = "ImageStorage/" + imgName;
            //pega o tamanho em bytes de uma imagem  
            int imgSize = FUImagem.PostedFile.ContentLength;

            //valida se o arquivo foi enviado
            if (FUImagem.PostedFile != null && FUImagem.PostedFile.FileName != "")
            {
                // 10240 KB = 10MB, Pode alterar o valor
                if (FUImagem.PostedFile.ContentLength > 10240)
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Arquivo é muito grande.')", true);
                }
                else
                {
                    //salva na pasta
                    FUImagem.SaveAs(Server.MapPath(imgPath));
                    Imagem.ImageUrl = "~/" + imgPath;
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Imagem salva!')", true);
                }

            }
        }
    }
}
