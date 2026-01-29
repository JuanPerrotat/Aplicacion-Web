<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DDEstatico.aspx.cs" Inherits="pokedex_ASP.EjemplosDropDown.DDEstatico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <h4>DropDown Estático</h4>
            <asp:DropDownList CssClass="btn btn-secondary dropdown-toggle" ID="ddlEstatico" runat="server">
                <asp:ListItem Text="Amarillo" />
                <asp:ListItem Text="Azul" />
                <asp:ListItem Text="Rojo" />
                <asp:ListItem Text="Verde" />
            </asp:DropDownList>
            <div class="col">
                <h4>DropDown desde BD</h4>
                <asp:DropDownList runat="server" CssClass="btn btn-secondary dropdown-toggle" ID="ddlDB">
                 
                </asp:DropDownList>

            </div>
        </div>
    </div>
</asp:Content>
