<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="pokedex_ASP.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-8">
            <div class="mb-3">
                <asp:Label Text="Email" ID="lblMail" for="txtMail" class="form-label" runat="server" />
                <asp:TextBox CssClass="form-control" ID="txtMail" Placeholder="ejemplo@gmail.com" runat="server" />
            </div>
            <div class="mb-3">
                <asp:Label Text="Contraseña" CssClass="form-label" ID="lblPass" runat="server" />
                <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" Placeholder="*****" TextMode="Password" />
            </div>
            <div>
                <asp:Button Text="Ingresar" CssClass="btn btn-primary" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
