<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="imagenConUrl.aspx.cs" Inherits="pokedex_ASP.imagenConUrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <h2>Ejemplo de carga de imagen</h2>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="mb-3 row">
                <div class="col">
                    <asp:TextBox ID="txtUrlImagen" CssClass="form-control" AutoPostback="true" 
                        OnTextChanged="txtUrlImagen_TextChanged" runat="server" />
                </div>
                <div class="col">
                    <asp:Button Text="Aceptar" ID="btnCargar" OnClick="btnCargar_Click" CssClass="btn btn-primary" runat="server" />
                </div>
            </div>
            <div class="mb-3 row">
                <div class="col">
                    <img src="<% = urlImagen %>" alt="Alternate Text" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
