<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="pokedex_ASP.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contacto</h1>
    <p>Si tienes alguna pregunta o comentario, no dudes en contactarnos a través del siguiente formulario:</p>
    <div class="col-8">
        <div class="mb-3">
            <label for="txtMail" class="form-label">Correo electrónico</label>
             <asp:TextBox textMode="Email" CssClass="form-control" ID="txtMail" runat="server" />
        </div>
        <div class="mb-3">
            <label for="txtAsunto" class="form-label">Asunto</label>
            <asp:TextBox textMode="SingleLine" CssClass="form-control" ID="txtAsunto" runat="server" />
        </div>
        <div class="mb-3">
            <label for="txtMensaje" class="form-label">Mensaje</label>
            <asp:TextBox textMode="MultiLine" CssClass="form-control" ID="txtMensaje" Rows="5" runat="server" />
        </div>
        <asp:Button ID="btnEnviar" CssClass="btn btn-primary" OnClick="btnEnviar_Click" runat="server" Text="Enviar" />
    </div>
</asp:Content>
