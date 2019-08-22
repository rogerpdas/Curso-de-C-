<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="webforms_aula1.Paginas.Montadora.Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h1>Montadora</h1>
        <h2>Cadastrar novas montadoras</h2>
    </div>

    <div class="content">
        <div class="pure-form pure-form-stacked">
            <fieldset>
                <legend>Formulário de cadastro</legend>

                <label for="txtId">ID</label>
                <asp:TextBox ID="txtId" Enabled="false" runat="server" />

                <label for="email">Nome Montadora</label>
                <asp:TextBox ID="txtNomeMontadora" runat="server" />
                        <span class="pure-form-message">
                            <asp:RequiredFieldValidator ID="rfvNomeMontadora" 
                                                        runat="server" 
                                                        ErrorMessage="Campo obrigatório"
                                                        ControlToValidate="txtNomeMontadora">
                            </asp:RequiredFieldValidator>
                        </span>

                <asp:FileUpload ID="fupLogo" runat="server" />

                <br />
                <asp:Button ID="btnCadastrar" 
                            runat="server"
                            Text="Salvar"
                            CssClass="pure-button pure-button-primary" OnClick="btnCadastrar_Click" />
                
                <asp:Button ID="btnCancelar" 
                            runat="server" 
                            Text="Cancelar" 
                            CssClass="pure-button button-error" 
                            CausesValidation="false"
                            OnClick="btnCancelar_Click" />
            </fieldset>
        </div>
    </div>
</asp:Content>
