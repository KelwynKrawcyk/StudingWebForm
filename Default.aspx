<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudingWebForm.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtMensagen" runat="server"></asp:TextBox>
        </div>
        <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
        <asp:Button ID="btnOk" runat="server" Height="21px" OnClick="btnOk_Click" Text="Mostrar mensagem" Width="127px" />
        <br />
        <br />
</body>
</html>
    <asp:DropDownList ID="ddlContatos" runat="server">
    </asp:DropDownList>
    <br />
<select id="SelectManual" name="D1">     <%--Metodo manual de fazer um DDL--%>

    <%foreach (var contato in contatos){ %>
        <option value="<%= contato.Id%>"><%= contato.Nome%></option>
    <%}%>
</select><asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <br />
</form>
<br />
<br />
&nbsp;