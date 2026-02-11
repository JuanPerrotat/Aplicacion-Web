<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Pagina2LoginAdmin.aspx.cs" Inherits="pokedex_ASP.EjemplosLogin.Pagina2LoginAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>OAAA!! Sos admin pa, bien ahí! Al pedo igual pero bueno. SAPE!</h2>
    <p>Esto quiere decir que, al menos, sos admin...</p>
    <asp:button ID="volver" CssClass="btn btn-primary" runat="server" Text="Regresar" OnClick="volver_Click" />
</asp:Content>
