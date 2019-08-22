<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="webforms_aula1.Paginas.TipoCombustivel.Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h1>Tipo Combustível
        </h1>
        <h2>&nbsp;
        </h2>
    </div>

    <div class="content">
        <div class="pure-form pure-form-aligned">
            <fieldset>
                <label>Combustível</label>

                <div class="pure-control-group">
                    <label>Id</label>
                    <asp:TextBox ID="txtId" runat="server" CssClass="pure-button-disabled" Enable="false" Enabled="False" />
                </div>

                <div class="pure-control-group">
                    <label>Descrição</label>
                    <asp:TextBox ID="txtDescricao" runat="server" CssClass="" />
                    <asp:RequiredFieldValidator ID="rfvDescricao"
                                                runat="server"
                                                ControlToValidate="txtDescricao"
                                                ErrorMessage="Campo descrição Obrigatório"
                                                CssClass="pure-form-message-inline" />
                </div>

                <div class="pure-controls">
                    <asp:Button ID="btnSalvar"
                        runat="server"
                        Text="Salvar"
                        CssClass="pure-button pure-button-primary" OnClick="btnSalvar_Click" />

                    <asp:Button ID="btnCancelar"
                        runat="server"
                        Text="Cancelar"
                        CausesValidation="false"
                        CssClass="pure-button button-error"
                        OnClick="btnCancelar_Click"/>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
