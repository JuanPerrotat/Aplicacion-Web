<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DDEnlazado.aspx.cs" Inherits="pokedex_ASP.EjemplosDropDown.DDEnlazado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div class="row">
        <div class="col">
            <h4>DropDown enlazado a la DB</h4>
        </div>
    </div>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col">
                    <asp:Label Text="Tipos" ID="lblTipos" runat="server" />
                    <asp:DropDownList CssClass="btn btn-secondary dropdown-toggle" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlTipos_SelectedIndexChanged" ID="ddlTipos" runat="server">
                    </asp:DropDownList>
                </div>
                <div class="col">
                    <asp:Label Text="Tipos" ID="lblPokemons" runat="server" />
                    <asp:DropDownList CssClass="btn btn-secondary dropdown-toggle"
                        ID="ddlPokemons" runat="server">
                    </asp:DropDownList>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
