<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="webforms_aula1.Paginas.TipoCombustivel.Lista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h1>Tipo Combustível
        </h1>
        <h2>Combustível
        </h2>
    </div>




    <div class="content">
        <div class="pure-button-group">
            <asp:Button ID="btnNovoTipo"
                runat="server"
                Text="Novo Tipo"
                CssClass="pure-button button-success"
                OnClick="btnNovoTipo_Click" />
        </div>
        <br />
        <table class="pure-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Descricao</th>
                </tr>
            </thead>

            <tbody>
                <tr class="pure-table-odd">
                    <td>1</td>
                    <td>Flex</td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>Alcool</td>
                </tr>
                <tr class="pure-table-odd">
                    <td>3</td>
                    <td>Gasolina</td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
