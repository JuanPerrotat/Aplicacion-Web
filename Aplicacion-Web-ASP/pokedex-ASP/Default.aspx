<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pokedex_ASP.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Hola</h1>
    <h4>Bienvenido a la página de Pokedex</h4>

    <div class="row row-cols-1 row-cols-md-2 g-4">
        <%--        <% 
            foreach (dominio.Pokemon poke in ListaPokemons)
            {
        %>
                <div class="col">
                    <div class="card">
                        <img src="<%:poke.UrlImagen %>" class="card-img-top" alt="imgPoke">
                        <div class="card-body">
                            <h5 class="card-title"><%:poke.Nombre %></h5>
                            <p class="card-text"><%:poke.Descripcion %></p>
                            <a href="DetallePokemon.aspx?Id=<%: poke.Id %>">Ver detalle</a>
                        </div>
                    </div>
                </div>
        <%   } %>--%>

        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="imgPoke">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <a href="DetallePokemon.aspx?Id=<%#Eval("Id") %>">Ver detalle</a>
                            <asp:Button Text="Ejemplo" CssClass="btn btn-primary" ID="btnEjemplo" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="PokemonId" OnClick="btnEjemplo_Click" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
