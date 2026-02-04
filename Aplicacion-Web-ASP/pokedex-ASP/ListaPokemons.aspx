<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListaPokemons.aspx.cs" Inherits="pokedex_ASP.ListaPokemons" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Pokemons</h1>
    <asp:GridView ID="dgvPokemons"
        CssClass="table" OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged" 
        OnPageIndexChanging="dgvPokemons_PageIndexChanging"
        AllowPaging="true" PageSize="5"
        AutoGenerateColumns="false" DataKeyNames="Id" runat="server">
    <columns>
        <asp:BoundField HeaderText="Número" DataField="Numero" />
        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
        <asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
        <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
        <asp:BoundField HeaderText="Debilidad" DataField="Debilidad.Descripcion" />
        <asp:CheckBoxField HeaderText="Activo" DataField="Activo" />
        <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="✍️" />
    </columns>
    </asp:GridView>
    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>
</asp:Content>
