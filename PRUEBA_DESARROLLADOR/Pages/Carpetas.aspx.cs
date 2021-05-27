using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRUEBA_DESARROLLADOR.Pages
{
    public partial class Carpetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e){
            var param = ((TextBox)sender).Text;
            if (!string.IsNullOrEmpty(param) && param.Length > 4) {
                ObjectDataSource2.SelectParameters.Clear();
                ObjectDataSource2.SelectParameters.Add(new Parameter { Name="Id",DbType = System.Data.DbType.Int32, DefaultValue = param, Direction = System.Data.ParameterDirection.Input });
                ObjectDataSource2.Select();
                ObjectDataSource2.DataBind();
            }
        }
    }
}