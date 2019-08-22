<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="webforms_aula1.Paginas.Usuario.Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h1>Cadastro de Usuário</h1>
        <h2></h2>
    </div>

    <div class="content">
        <div class="pure-form pure-form-aligned">
            <fieldset>
                <legend>Formulário de cadastro</legend>

                <div class="pure-control-group">
                    <label for="txtNome">Nome </label>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        CssClass="pure-form-message-inline"
                        runat="server"
                        ErrorMessage="Campo Nome Obrigatório"
                        ControlToValidate="txtNome">

                    </asp:RequiredFieldValidator>
                </div>

                <div class="pure-control-group">
                    <label for="txtLogin">Login </label>
                    <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        CssClass="pure-form-message-inline"
                        runat="server"
                        ErrorMessage="Campo Login Obrigatório"
                        ControlToValidate="txtLogin">
                    </asp:RequiredFieldValidator>
                </div>

                <div class="pure-control-group">
                    <label>Ativo</label>
                    <asp:CheckBox ID="ckAtivo" runat="server" />
                </div>

                <div class="pure-controls">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="pure-button pure-button-primary" />
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
