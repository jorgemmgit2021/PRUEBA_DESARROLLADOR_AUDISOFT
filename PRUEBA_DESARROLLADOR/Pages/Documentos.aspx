<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Documentos.aspx.cs" Inherits="PRUEBA_DESARROLLADOR.Pages.Documentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>Edición de registros de <b>Documentos</b></p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id_Documento" DataSourceID="ObjectDataSourceDocumentos" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" EditIndex="0" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id_Documento" HeaderText="Consecutivo" InsertVisible="False" ReadOnly="True" SortExpression="Id_Documento" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion del documento" SortExpression="Descripcion" />
            <asp:TemplateField HeaderText="Carpeta asignada" SortExpression="Id_Carpeta">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Descripcion" DataValueField="Id_Carpeta" SelectedValue='<%# Bind("Id_Carpeta") %>' Width="100%">
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Descripcion" DataValueField="Id_Carpeta" SelectedValue='<%# Bind("Id_Carpeta") %>' Width="100%">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Fecha" SortExpression="Fecha">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Fecha") %>' TextMode="Date"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Ruta" HeaderText="Ruta de destino" SortExpression="Ruta" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSourceDocumentos" runat="server" DeleteMethod="DeleteDocumentos" InsertMethod="GuardarDocumentos" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataDocumentos" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA" UpdateMethod="GuardarDocumentos">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id_Documento" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Id_Carpeta" Type="Int32" />
            <asp:Parameter Name="Fecha" Type="DateTime" />
            <asp:Parameter Name="Ruta" Type="String" />
            <asp:Parameter Name="Original_Id_Documento" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Id_Carpeta" Type="Int32" />
            <asp:Parameter Name="Fecha" Type="DateTime" />
            <asp:Parameter Name="Ruta" Type="String" />
            <asp:Parameter Name="Original_Id_Documento" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataCarpetas" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA"></asp:ObjectDataSource>
</asp:Content>
