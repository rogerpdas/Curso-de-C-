<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="webforms_aula1.Paginas.Cor.Lista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <h1>
            Cores
        </h1>
        <h2>
            Lista de Cores cadastradas
        </h2>
    </div>
    <div class="content">

        <asp:Button ID="btnAdd" runat="server" CssClass="pure-button button-success" Text="Adicionar Novo" OnClick="btnAdd_Click" />

        <br />
        <br />
        <table class="pure-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Cor</th>
                </tr>
            </thead>

            <tbody>
                <tr class="pure-table-odd">
                    <td>1</td>
                    <td>Preto</td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>Branco</td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
