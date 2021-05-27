<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carpetas.aspx.cs" Inherits="PRUEBA_DESARROLLADOR.Pages.Carpetas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>Edición de registros de <b>Carpetas</b></p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="0" DataKeyNames="Id_Carpeta" DataSourceID="ObjectDataSourceCarpeta" EditIndex="0" ForeColor="Black" GridLines="Vertical" Width="100%">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id_Carpeta" HeaderText="Consecutivo" InsertVisible="False" ReadOnly="True" SortExpression="Id_Carpeta" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion de carpeta" SortExpression="Descripcion" />
                    <asp:TemplateField HeaderText="Bolsa asignada" SortExpression="Id_Bolsa">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Descripcion" DataValueField="Id_Bolsa" SelectedValue='<%# Bind("Id_Bolsa") %>' Width="100%">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Descripcion" DataValueField="Id_Bolsa" SelectedValue='<%# Bind("Id_Bolsa") %>' Width="100%">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha" SortExpression="Fecha">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Fecha") %>' TextMode="Date"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Fecha") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Consecutivo" SortExpression="Consecutivo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" Text='<%# Bind("Consecutivo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Consecutivo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="0" DataKeyNames="Id_Documento" DataSourceID="ObjectDataSource2" ForeColor="Black" GridLines="Horizontal" HeaderText="Documentos contenidos" Height="50px" Width="100%">
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id_Documento" HeaderText="Consecutivo de documento" InsertVisible="False" ReadOnly="True" SortExpression="Id_Documento" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:BoundField DataField="Id_Carpeta" HeaderText="Consecutivo de carpeta" SortExpression="Id_Carpeta" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="Ruta" HeaderText="Ubicacion" SortExpression="Ruta" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerSettings FirstPageText="1" Mode="NumericFirstLast" NextPageText="&gt;&gt;" PreviousPageText="&lt;&lt;" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:DetailsView>
        </ContentTemplate>
</asp:UpdatePanel>
    <asp:ObjectDataSource ID="ObjectDataSourceCarpeta" runat="server" DeleteMethod="DeleteCarpetas" InsertMethod="GuardarCarpetas" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataCarpetas" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA" UpdateMethod="GuardarCarpetas">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id_Carpeta" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Id_Bolsa" Type="Int32" />
            <asp:Parameter Name="Fecha" Type="DateTime" />
            <asp:Parameter Name="Consecutivo" Type="Int32" />
            <asp:Parameter Name="original_Id_Carpeta" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Id_Bolsa" Type="Int32" />
            <asp:Parameter Name="Fecha" Type="DateTime" />
            <asp:Parameter Name="Consecutivo" Type="Int32" />
            <asp:Parameter Name="original_Id_Carpeta" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetDataBolsas" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA"></asp:ObjectDataSource>
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetByDataDocumentos" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA">
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
</asp:Content>
