<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MenuLogin1Ejemplo.aspx.cs" Inherits="pokedex_ASP.EjemplosLogin.MenuLogin1Ejemplo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Te logueaste correctamente</h1>
    <div class="row mt-3">
        <div class="col-4">
            <asp:Button Text="Pagina 1" CssClass="btn btn-primary" OnClick="btnPagina1_Click" ID="btnPagina1" runat="server" />
        </div>
        <div class="col-4">
            <%if (Session["usuario"] != null && ((dominio.Usuario)Session["usuario"]).UserType == dominio.TipoUsuario.Administrador)
                { %>
                    
            <asp:Button Text="Pagina 2" CssClass="btn btn-primary" OnClick="btnPagina2_Click" ID="btnPagina2" runat="server" />
            <div>
                <asp:Label Text="Tenés que ser admin" ID="lblPagina2" runat="server" />
            </div>

               <% } %>
        </div>
    </div>
</asp:Content>
