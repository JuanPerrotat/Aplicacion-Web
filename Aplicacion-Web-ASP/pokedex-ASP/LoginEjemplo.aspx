<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="LoginEjemplo.aspx.cs" Inherits="pokedex_ASP.EjemplosLogin.LoginEjemplo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-6">
        <h2>Login</h2>
        <div class="mb-3">
            <label class="form-label">Mail</label>
            <asp:TextBox runat="server" placeholder="ejemplo@mail.com" id="txtMail" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <label class="form-label">Password</label>
            <asp:TextBox runat="server" placeholder="*****" id="txtPassword" TextMode="Password" CssClass="form-control" />
        </div>
        <asp:Button Text="Ingresar" ID="btnIngresar" CssClass="btn btn-primary" OnClick="btnIngresar_Click" runat="server" />
        <asp:Button Text="Cancelar" ID="btnCancelar" CssClass="btn btn-outline-danger" onclick="btnCancelar_Click" runat="server" />
    </div>
</asp:Content>
