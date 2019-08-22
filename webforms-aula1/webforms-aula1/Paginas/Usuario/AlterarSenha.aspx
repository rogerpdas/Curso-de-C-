<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AlterarSenha.aspx.cs" Inherits="webforms_aula1.Paginas.Usuario.AlterarSenha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h1>Criar Nova Senha
        </h1>
        <h2>Criar uma nova senha
        </h2>
    </div>

    <div class="content">
        <div class="pure-form pure-form-aligned">
            <fieldset>
                <legend>Formulário de cadastro</legend>

                <div class="pure-control-group">
                    <label for="txtSenhaAntiga">Senha Antiga </label>
                    <asp:TextBox ID="txtSenhaAntiga" 
                                    runat="server"
                                    TextMode="Password"></asp:TextBox>
                    <span class="pure-form-message-inline">
                        <asp:RequiredFieldValidator
                            CssClass=""
                            runat="server"
                            ErrorMessage="Campo Senha Antiga Obrigatório"
                            ControlToValidate="txtSenhaAntiga">
                        </asp:RequiredFieldValidator>
                    </span>


                </div>

                <div class="pure-control-group">
                    <label for="txtSenha">Senha</label>
                    <asp:TextBox ID="txtSenha" 
                                    runat="server"
                                    TextMode="Password"></asp:TextBox>
                    <span class="pure-form-message-inline">
                        <asp:RequiredFieldValidator
                            runat="server"
                            ErrorMessage="Campo Senha Obrigatório"
                            ControlToValidate="txtSenha">
                        </asp:RequiredFieldValidator>
                    </span>
                </div>

                <div class="pure-control-group">
                    <label for="txtConfirmaSenha">Confirmação Senha</label>
                    <asp:TextBox ID="txtConfirmaSenha" 
                                    runat="server"
                                    TextMode="Password"></asp:TextBox>
                    <span class="pure-form-message-inline">
                        <asp:RequiredFieldValidator
                            runat="server"
                            ErrorMessage="Campo Confirmação de Senha Obrigatório"
                            ControlToValidate="txtConfirmaSenha">
                        </asp:RequiredFieldValidator>
                    </span>
                </div>
                <br />
                <div class="pure-controls">
                    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="pure-button pure-button-primary" />
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
