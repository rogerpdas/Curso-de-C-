<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="webforms_aula1.Paginas.Cilindradas.Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h1>Cilindradas
        </h1>
        <h2>&nbsp;
        </h2>
    </div>
    <div class="content">
        <div class="pure-form pure-form-aligned">
            <fieldset>
                <legend>Form</legend>
                <div class="pure-control-group">
                    <label for="txtId">Id</label>
                    <asp:TextBox ID="txtId" runat="server" Enabled="false"  CssClass="pure-button-disabled" />
                </div>

                <div class="pure-control-group">
                    <label>Cilindradas</label>
                    <asp:TextBox ID="txtCilindrada" runat="server" />
                </div>

                <div class="pure-controls">
                    <asp:Button ID="btnSalvar" 
                                runat="server"
                                Text="Salvar"
                                CssClass="pure-button pure-button-primary"/>

                    <asp:Button ID="btnCancelar"
                                runat="server"
                                Text="Cancelar"
                                CausesValidation="false"
                                OnClick="btnCancelar_Click"
                                CssClass="pure-button button-error"/>
                </div>
            </fieldset>
        </div>

    </div>
</asp:Content>
