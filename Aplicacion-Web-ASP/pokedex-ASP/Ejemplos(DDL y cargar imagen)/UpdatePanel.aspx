<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UpdatePanel.aspx.cs" Inherits="pokedex_ASP.EjemplosDropDown.UpdatePanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    
    <h3>Update Panel</h3>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="form-group">
                <div class="row">

                <div class="col">
                    <asp:Label Text="text" runat="server" ID="lblNombre" />
                </div>  
                <div class="col">
                    <asp:TextBox AutoPostBack="true" ID="txtNombre" OnTextChanged="txtNombre_TextChanged" 
                        CssClass="form-control" runat="server" />
                </div>
                <div class="col">
                    <asp:Button Text="Aceptar" CssClass="form-control" id="btnAceptar" 
                        OnClick="btnAceptar_Click" runat="server" />
                </div>
                </div>

            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
