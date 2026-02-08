<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="pokedex_ASP.Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hubo un error</h1>
    <asp:Label Text="Error!!!" ID="lblError" runat="server" />
    <div class="mt-3">
        <asp:Button Text="Regresar" OnClick="Unnamed_Click" ID="btnRegresar" CssClass="btn btn-primary" runat="server" />
    </div>
</asp:Content>
