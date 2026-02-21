<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="pokedex_ASP.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Mí perfil</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <asp:Label Text="Email" CssClass="form-label" runat="server" />
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" />
            </div>
            <div class="mb-3">
                <asp:Label Text="Nombre" CssClass="form-label" runat="server" />
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <asp:Label Text="Apellido" CssClass="form-label" runat="server" />
                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <asp:Label Text="Fecha de nacimiento" CssClass="form-label" runat="server" />
                <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="form-control" TextMode="Date" />
            </div>
        </div>

        <div class="col-md-4">
            <div class="mb-3">
                <asp:Label Text="Imagen de perfil" CssClass="form-label" runat="server" />
                <input type="file" id="txtImagen" runat="server" class="form-control" />
            </div>
            <div class="mb-3">
                <asp:Image ImageUrl="https://capacitacion.fundacionbancopampa.com.ar/wp-content/uploads/2024/09/placeholder-4.png"
                    ID="imgNuevoPerfil" CssClass="img-fluid" runat="server" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" ID="btnGuardar" runat="server" />
            <asp:Button Text="Regresar" CssClass="btn btn-outline-danger" ID="btnRegresar" runat="server" />
        </div>
    </div>
</asp:Content>
