<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListaPokemons.aspx.cs" Inherits="pokedex_ASP.ListaPokemons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Pokemons</h1>
    <div class="row align-items-center mb-3">
        <div class="col-auto">
            <asp:Label Text="Filtro por nombre:" runat="server" />
        </div>
        <div class="col-4">
            <asp:TextBox ID="txtFiltro" AutoPostBack="true"
                CssClass="form-control form-control-sm"
                OnTextChanged="txtFiltro_TextChanged" runat="server" />
        </div>
        <div class="col-auto d-flex align-items-center">
                <asp:CheckBox ID="chkFiltroAvanzado"
                    AutoPostBack="true" OnCheckedChanged="chkFiltroAvanzado_CheckedChanged"
                    runat="server" />
                <asp:Label runat="server" Text="Filtro avanzado"
                    AssociatedControlID="chkFiltroAvanzado" CssClass="ms-2"/>
        </div>
    </div>

    <%if (chkFiltroAvanzado.Checked)
        {%>
    <div class="row">
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Campo" ID="lblCampo" runat="server" />
                <asp:DropDownList ID="ddlCampo" AutoPostBack="true" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged">
                    <asp:ListItem Text="Nombre" />
                    <asp:ListItem Text="Tipo" />
                    <asp:ListItem Text="Número" />
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Criterio" ID="lblCriterio" runat="server" />
                <asp:DropDownList ID="ddlCriterio" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Filtro" ID="lblFiltro" runat="server" />
                <asp:TextBox ID="txtFiltroAvanzado" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Estado" ID="lblEstado" runat="server" />
                <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Todos" />
                    <asp:ListItem Text="Activos" />
                    <asp:ListItem Text="Inactivos" />
                </asp:DropDownList>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-3">
            <div class="mb-3">
                <asp:Button Text="Buscar" CssClass="btn btn-primary" ID="btnBuscar" OnClick="btnBuscar_Click" runat="server" />
            </div>
        </div>
    </div>
    <% } %>

    <asp:GridView ID="dgvPokemons"
        CssClass="table" OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged"
        OnPageIndexChanging="dgvPokemons_PageIndexChanging"
        AllowPaging="true" PageSize="5"
        AutoGenerateColumns="false" DataKeyNames="Id" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Número" DataField="Numero" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
            <asp:BoundField HeaderText="Debilidad" DataField="Debilidad.Descripcion" />
            <asp:CheckBoxField HeaderText="Activo" DataField="Activo" />
            <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="✍️" />
        </Columns>
    </asp:GridView>
    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>
</asp:Content>
