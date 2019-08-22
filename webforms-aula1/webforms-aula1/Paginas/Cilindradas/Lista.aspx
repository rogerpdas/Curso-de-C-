<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="webforms_aula1.Paginas.Cilindradas.Lista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="header">
        <h1>Cilindradas
        </h1>
        <h2>Cilindradas
        </h2>
    </div>




    <div class="content">
        <div class="pure-button-group">
            <asp:Button ID="btnNovo"
                runat="server"
                Text="Novo"
                CssClass="pure-button button-success"
                OnClick="btnNovo_Click"/>
        </div>
        <br />
        <table class="pure-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Cilindradas</th>
                </tr>
            </thead>

            <tbody>
                <tr class="pure-table-odd">
                    <td>1</td>
                    <td>1000</td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>1600</td>
                </tr>
                <tr class="pure-table-odd">
                    <td>3</td>
                    <td>2000</td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>
