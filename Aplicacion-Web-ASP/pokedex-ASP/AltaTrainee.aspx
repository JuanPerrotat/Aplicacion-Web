<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AltaTrainee.aspx.cs" Inherits="pokedex_ASP.AltaTrainee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-4"></div>
    <div class="col-6">
        <h1 class="mb-4">Crea tú perfil Trainee</h1>
        <div class="mb-2">
            <asp:Label Text="Email" runat="server" />
        </div>
        <div class="mb-2">
            <asp:TextBox ID="txtMail" TextMode="Email" CssClass="form-control" runat="server" />
        </div>
        <div class="mb-2">
            <asp:Label Text="Contraseña" runat="server" />
        </div>
        <div class="mb-2">
            <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server" />
        </div>
        <asp:Button Text="Registrarse" ID="btnRegistrarse" CssClass="btn btn-primary" OnClick="btnRegistrarse_Click" runat="server" />
        <asp:Button Text="Cancelar" ID="btnCancelar" CssClass="btn btn-outline-danger" OnClick="btnCancelar_Click" runat="server" />
    </div>
    <div class="col-4"></div>
</asp:Content>
