<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Pagina2LoginUser.aspx.cs" Inherits="pokedex_ASP.EjemplosLogin.Pagina2LoginUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>OAAA!! Sos user pa, bien ahí</h2>
    <p>Esto quiere decir que tenés menos poderes...</p>
        <asp:button ID="volver" CssClass="btn btn-primary" runat="server" Text="Regresar" OnClick="volver_Click" />
</asp:Content>
