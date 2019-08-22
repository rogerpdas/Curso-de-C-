<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="webforms_aula1.Paginas.Montadora.Lista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="header">
        <h1>Montadora</h1>
        <h2>Cadastrar novas montadoras</h2>
    </div>

    <div class="content">

        <asp:Button ID="btnAdd" runat="server" CssClass="pure-button button-success" Text="Adicionar Novo" OnClick="btnAdd_Click" />

        <br /><br />
        <asp:GridView ID="gvMontadora" runat="server" OnRowDeleting="gvMontadora_RowDeleting" OnRowEditing="gvMontadora_RowEditing">
            <Columns>
                <asp:CommandField InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
