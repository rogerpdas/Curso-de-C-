<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="webforms_aula1.Paginas.Produto.Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h1>Cadastro de Produto
        </h1>
        <h2>Veículos
        </h2>
    </div>

    <div class="content">
        <div class="pure-form-aligned">
            <div class="pure-control-group">
                <label>Montadora</label>
                <asp:DropDownList ID="ddlMontadora" runat="server" />
            </div>

            <div class="pure-control-group">
                <label></label>
            </div>
        </div>
    </div>

</asp:Content>
