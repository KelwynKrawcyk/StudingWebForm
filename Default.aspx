<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudingWebForm.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 2093px;
        }
    </style>
</head>
<body style="height: 2182px">
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="PHNome" runat="server">Nome</asp:PlaceHolder>
            <asp:TextBox ID="txtMensagen" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        </div>
            <asp:PlaceHolder ID="PHTelefone" runat="server">Telefone</asp:PlaceHolder>
        <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
        <br />
        <%-- Botão mostrar mensagem com evento JS de alerta --%>
        <asp:Button ID="btnOk" runat="server" Height="22px" OnClick="btnOk_Click" Text="Mostrar mensagem" Width="127px" />
        <br />
        <br />
        <asp:PlaceHolder ID="PHContato" runat="server">Contato</asp:PlaceHolder>
</body>
</html>
    <asp:DropDownList ID="ddlContatos" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <asp:PlaceHolder ID="PHListaContato" runat="server">Lista de contatos</asp:PlaceHolder>
    <%-- GridView Carregada com PageLoad --%>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <asp:PlaceHolder ID="PHTurno" runat="server">Turno</asp:PlaceHolder>
    <br />
    <%-- Seleção simples de ListBox --%>
    <asp:ListBox id="LBTurno" 
           Rows="6"
           Width="100px"
           SelectionMode="Single" 
           runat="server" Height="65px">

         <asp:ListItem>Manhã</asp:ListItem>
         <asp:ListItem>Tarde</asp:ListItem>
         <asp:ListItem>Noite</asp:ListItem>
      </asp:ListBox>

      <asp:button id="EnviarTurno"
           Text="Enviar" 
           OnClick="SubmitBtn_ClickTurnos" 
           runat="server" />
        
      <asp:Label id="LSelecTurno" 
           Font-Names="Verdana" 
           Font-Size="10pt" 
           runat="server"/>
    <br />
    <br />
    <asp:PlaceHolder ID="PHAnimais" runat="server">Animais de estimação</asp:PlaceHolder>
    <br />
    <%-- Seleção multipla de ListBox --%>
    <asp:ListBox id="LBAnimais" 
           Rows="6"
           Width="100px"
           SelectionMode="Multiple" 
           runat="server" Height="100px">

         <asp:ListItem>Cachorro</asp:ListItem>
         <asp:ListItem>Gato</asp:ListItem>
         <asp:ListItem>Coelho</asp:ListItem>
         <asp:ListItem>Galinha</asp:ListItem>
         <asp:ListItem>Capivara</asp:ListItem>
      </asp:ListBox>

      <asp:button id="EnviarAnimais"
           Text="Enviar" 
           OnClick="SubmitBtn_ClickAnimais" 
           runat="server" />
        
      <asp:Label id="LSelecAnimais" 
           Font-Names="Verdana" 
           Font-Size="10pt" 
           runat="server"/>
    <br />
    <br />
    <%-- Seleção de ListBox feita por Page load --%>
        <asp:ListBox id="LBGenero" 
             Width="198px" 
             runat="server"/>

      <asp:button id="EnviarGenero"
           Text="Enviar" 
           OnClick="SubmitBtn_ClickGenero" 
           runat="server" />
        
        <asp:Label id="LSelectGenero" 
             Font-Names="Verdana" 
             font-size="10pt" 
             runat="server"/>

      <br />

      <br />

    <%-- Evento ao preencher checkbox --%>
      <table border="1" cellpadding="5">

         <tr>

            <th colspan="2">

               Almoço

            </th>

         </tr>

         <tr>

            <td>

               Suco</td>

            <td>

               R$3.99</td>

         </tr>

         <tr>

            <td>

               Alaminuta</td>

            <td>

                R$23.99</td>

         </tr>

         <tr>

            <td>

               <b>Total</b></td>

            <td>

               <asp:Label id="ValorTotal" runat="server"/>

            </td>

         </tr>

         <tr>

            <td colspan="2">

               <asp:CheckBox id="CBTaxaServico" runat="server"
                    AutoPostBack="True"
                    Text="Incluir 10% do garçom"
                    TextAlign="Right"
                    OnCheckedChanged="Check_Clicked"/>

            </td>

         </tr>

      </table>
    <br />
<asp:FileUpload ID="FUImagem" runat="server" />  
<asp:Button ID="BUpload" runat="server" Text="Upload" onclick="Button1_ClickUploadImage"/>  
<asp:Image ID="Imagem" runat="server" /> 
<br />
</form>
