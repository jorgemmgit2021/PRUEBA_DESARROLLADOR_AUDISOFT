<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReporteCaja.aspx.cs" Inherits="PRUEBA_DESARROLLADOR.Pages.ReporteCaja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="navbar navbar-inverse navbar-relaive-top">
          <div class="panel-heading">
            <h3 class="panel-title"><strong>Reporte consolidado de contenidos</strong></h3>
          </div>
   </div>
    <div class="panel-body">
        <div class="table table-sm">
            <div class="row">
                <div class="form-group p-a-1">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id_Caja" DataSourceID="ObjectDataSource1" SelectedIndex="0" CellPadding="0" GridLines="Both" HorizontalAlign="Center" RepeatDirection="Horizontal" Width="100%">
                                <ItemTemplate>
                                    Conecutivo caja:
                                    <asp:Label ID="Id_CajaLabel" runat="server" Text='<%# Eval("Id_Caja") %>' />
                                    <br />
                                    Descripcion:
                                    <asp:Label ID="Descripcion_cajaLabel" runat="server" Text='<%# Eval("Descripcion_caja") %>' />
                                    <br />
                                    Documento propietario:
                                    <asp:Label ID="Documento_propietarioLabel" runat="server" Text='<%# Eval("Documento_propietario") %>' />
                                    <br />
                                    Fecha:
                                    <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CssClass="navbar-inverse" CommandName="Select" Text="Filtrar nivel" />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" FilterExpression="Id_Caja&lt;&gt;0" SelectMethod="GetDataCajas" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA"></asp:ObjectDataSource>
                            <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id_Bolsa" DataSourceID="ObjectDataSource2" SelectedIndex="0">
                                <AlternatingItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="Id_BolsaLabel" runat="server" Text='<%# Eval("Id_Bolsa") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Id_CajaLabel" runat="server" Text='<%# Eval("Id_Caja") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>No se han devuelto datos.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="Id_BolsaLabel" runat="server" Text='<%# Eval("Id_Bolsa") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Id_CajaLabel" runat="server" Text='<%# Eval("Id_Caja") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="width: 100%" class="table table-striped table-inverse table-bordered table-hover table-sm">
                                                    <tr runat="server" style="">
                                                        <th runat="server">Consecutivo bolsa</th>
                                                        <th runat="server">Descripcion</th>
                                                        <th runat="server">Consecutivo caja</th>
                                                        <th runat="server">Fecha</th>
                                                    </tr>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style=""></td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="Id_BolsaLabel" runat="server" Text='<%# Eval("Id_Bolsa") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Id_CajaLabel" runat="server" Text='<%# Eval("Id_Caja") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" FilterExpression="Id_Caja&lt;&gt;0 AND Id_Caja={0}" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBolsas" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA">
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="DataList1" Name="Caja" PropertyName="SelectedValue" />
                                </FilterParameters>
                            </asp:ObjectDataSource>
                            <asp:ListView ID="ListView3" runat="server" DataKeyNames="Id_Carpeta" DataSourceID="ObjectDataSource3" SelectedIndex="0">
                                <AlternatingItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="Id_CarpetaLabel" runat="server" Text='<%# Eval("Id_Carpeta") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Id_BolsaLabel" runat="server" Text='<%# Eval("Id_Bolsa") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="ConsecutivoLabel" runat="server" Text='<%# Eval("Consecutivo") %>' />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" CssClass="navbar-inverse" CommandName="Select" Text="Filtrar carpeta" />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>No se han devuelto datos.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="Id_CarpetaLabel" runat="server" Text='<%# Eval("Id_Carpeta") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Id_BolsaLabel" runat="server" Text='<%# Eval("Id_Bolsa") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="ConsecutivoLabel" runat="server" Text='<%# Eval("Consecutivo") %>' />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" CssClass="navbar-inverse" CommandName="Select" Text="Filtrar carpeta" />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="width: 100%" class="table table-striped table-inverse table-bordered table-hover table-sm">
                                                    <tr runat="server" style="">
                                                        <th runat="server">Consecutivo carpeta</th>
                                                        <th runat="server">Descripcion</th>
                                                        <th runat="server">Consecutivo bolsa</th>
                                                        <th runat="server">Fecha</th>
                                                        <th runat="server">Consecutivo</th>
                                                        <th runat="server">Filtrar</th>
                                                    </tr>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style=""></td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="Id_CarpetaLabel" runat="server" Text='<%# Eval("Id_Carpeta") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Id_BolsaLabel" runat="server" Text='<%# Eval("Id_Bolsa") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="ConsecutivoLabel" runat="server" Text='<%# Eval("Consecutivo") %>' />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" CssClass="navbar-inverse" CommandName="Select" Text="Filtrar carpeta" />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" FilterExpression="Id_Bolsa={0}" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataCarpetas" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA">
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="ListView2" Name="bolsa" PropertyName="SelectedValue" />
                                </FilterParameters>
                            </asp:ObjectDataSource>
                            <asp:ListView ID="ListView4" runat="server" DataKeyNames="Id_Documento" DataSourceID="ObjectDataSource4" SelectedIndex="0">
                                <AlternatingItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="Id_DocumentoLabel" runat="server" Text='<%# Eval("Id_Documento") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Id_CarpetaLabel" runat="server" Text='<%# Eval("Id_Carpeta") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="RutaLabel" runat="server" Text='<%# Eval("Ruta") %>' />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>No se han devuelto datos.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="Id_DocumentoLabel" runat="server" Text='<%# Eval("Id_Documento") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Id_CarpetaLabel" runat="server" Text='<%# Eval("Id_Carpeta") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="RutaLabel" runat="server" Text='<%# Eval("Ruta") %>' />
                                        </td>

                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="1" style="width: 100%" class="table table-striped table-inverse table-bordered table-hover table-sm">
                                                    <tr runat="server" style="">
                                                        <th runat="server">Consecutivo de documento</th>
                                                        <th runat="server">Descripcion</th>
                                                        <th runat="server">Consecutivo de carpeta</th>
                                                        <th runat="server">Fecha</th>
                                                        <th runat="server">Ubicacion</th>
                                                    </tr>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style="">
                                                <asp:DataPager ID="DataPager1" runat="server">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                        <asp:NumericPagerField />
                                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="Id_DocumentoLabel" runat="server" Text='<%# Eval("Id_Documento") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="Id_CarpetaLabel" runat="server" Text='<%# Eval("Id_Carpeta") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="RutaLabel" runat="server" Text='<%# Eval("Ruta") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" FilterExpression="Id_Carpeta={0} AND Id_Carpeta&lt;&gt;0" SelectMethod="GetDataDocumentos" TypeName="PRUEBA_DESARROLLADOR.DTO_PRUEBA">
                                <FilterParameters>
                                    <asp:ControlParameter ControlID="ListView3" Name="Carpeta" PropertyName="SelectedValue" />
                                </FilterParameters>
                            </asp:ObjectDataSource>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="DataList1" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
