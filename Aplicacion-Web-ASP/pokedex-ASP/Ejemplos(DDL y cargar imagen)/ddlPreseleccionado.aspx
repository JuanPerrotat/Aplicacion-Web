<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ddlPreseleccionado.aspx.cs" Inherits="pokedex_ASP.EjemplosDropDown.ddlPreseleccionado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>DropDown Pre-seleccionado</h3>
    <div class="mb-3 row">
        <asp:Label Text="ID:" CssClass="col-sm-1 col-form-label" runat="server" />
        <div class="col-sm-5">
            <asp:TextBox runat="server" ID="txtTipo" CssClass="form-control" />
        </div>
        <div class="col">
            <asp:Label Text="Tipo preseleccionado:" CssClass="form-label" runat="server" />
            <asp:DropDownList ID="ddlTipoPreseleccionado" 
                CssClass="btn btn-outline-dark dropdown-toggle" runat="server">
            </asp:DropDownList>
        </div>
        <div class="mb-row">
            <div class="col">
                <asp:Button Text="Aceptar" runat="server" CssClass="btn btn-primary"
                    ID="btnSeleccionar" OnClick="btnSeleccionar_Click" />
            </div>
        </div>
    </div>
</asp:Content>
