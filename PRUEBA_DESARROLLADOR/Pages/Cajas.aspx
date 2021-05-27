<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cajas.aspx.cs" Inherits="PRUEBA_DESARROLLADOR.Pages.Cajas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>Edición de registros de <b>Cajas</b></p>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id_Caja" DataSourceID="ObjectDataSource1" EditIndex="0" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField InsertText="Guardar" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Guardar" />
            <asp:BoundField DataField="Id_Caja" HeaderText="Consecutivo" InsertVisible="False" ReadOnly="True" SortExpression="Id_Caja" />
            <asp:TemplateField HeaderText="Descripcion de caja" SortExpression="Descripcion_caja">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Descripcion_caja") %>' Width="100%"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Descripcion_caja") %>' Width="100%"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Documento de identidad del propietario" SortExpression="Documento_propietario">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Documento_propietario") %>' Width="100%"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Documento_propietario") %>' Width="100%"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Fecha de registro" SortExpression="Fecha">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Fecha") %>' TextMode="Date" Width="100%"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Fecha") %>' Width="100%"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteCajas" InsertMethod="GuardarBolsas" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataCajas" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA" UpdateMethod="GuardarCajas">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id_Caja" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Id_Caja" Type="Int32" />
            <asp:Parameter Name="Fecha" Type="DateTime" />
            <asp:Parameter Name="Original_Id_Bolsa" Type="Int32" />
            <asp:Parameter Name="Id_Bolsa" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion_caja" Type="String" />
            <asp:Parameter Name="Documento_propietario" Type="Int32" />
            <asp:Parameter Name="Fecha" Type="DateTime" />
            <asp:Parameter Name="original_Id_Caja" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
