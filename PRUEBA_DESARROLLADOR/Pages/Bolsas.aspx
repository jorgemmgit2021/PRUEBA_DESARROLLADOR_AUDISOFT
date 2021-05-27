<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bolsas.aspx.cs" Inherits="PRUEBA_DESARROLLADOR.Pages.Bolsas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>Edición de registros de <b>Bolsas</b></p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id_Bolsa" DataSourceID="ObjectDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%" EditIndex="0">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" UpdateText="Guardar" />
            <asp:BoundField DataField="Id_Bolsa" HeaderText="Consecutivo" InsertVisible="False" ReadOnly="True" SortExpression="Id_Bolsa" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion de bolsa" SortExpression="Descripcion" />
            <asp:TemplateField HeaderText="Caja Asignada">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Descripcion_caja" DataValueField="Id_Caja" SelectedValue='<%# Bind("Id_Caja") %>' Width="100%">
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Descripcion_caja" DataValueField="Id_Caja" SelectedValue='<%# Bind("Id_Caja") %>' Width="100%">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Fecha de registro" SortExpression="Fecha">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Fecha") %>' TextMode="Date" Width="100%"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Fecha") %>' Width="100%"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetDataCajas" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteBolsas" InsertMethod="GuardarBolsas" SelectMethod="GetDataBolsas" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA" UpdateMethod="GuardarBolsas">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id_Bolsa" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="0" Name="Id_Caja" PropertyName="SelectedValue" Type="Int32" />
            <asp:Parameter Name="Fecha" Type="DateTime" />
            <asp:Parameter Name="Original_Id_Bolsa" Type="Int32" />
            <asp:Parameter Name="Id_Bolsa" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter DefaultValue="" Name="Id_Caja" Type="Int32" />
            <asp:Parameter Name="Fecha" Type="DateTime" />
            <asp:Parameter Name="Original_Id_Bolsa" Type="Int32" />
            <asp:Parameter Name="Id_Bolsa" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
