using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KPI01
{
    public partial class Form04 : System.Web.UI.Page
    {
        //string conStr = ConfigurationManager.ConnectionStrings["strConnKpi"].ConnectionString;
        string conStr = ConfigurationManager.ConnectionStrings["ConStrBen"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }

        }

        private void BindGrid()
        {
            string query = @"SELECT TOP (1000) 
                               A.[kpi_id]
                              ,A.[section]
                              ,A.[no]
                              ,A.[activities]
                              ,A.[desc]
                              ,A.[souce]
                              ,A.[unit]
                              ,B.[yr]
                              ,B.[m01]
                              ,B.[m02]
                              ,B.[m03]
                              ,B.[m04]
                              ,B.[m05]
                              ,B.[m06]
                              ,B.[m07]
                              ,B.[m08]
                              ,B.[m09]
                              ,B.[m10]
                              ,B.[m11]
                              ,B.[m12]
                              ,B.[total]
                              ,B.[average]
                              ,B.[target_result]
                           FROM [KPI].[dbo].[KPI_hdr] A
                           LEFT JOIN [KPI].[dbo].[KPI_dtl] B
                           ON A.kpi_id = B.kpi_id
                           WHERE yr = @Year";

            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Year", ddlYear.Text);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                grv1.DataSource = dataTable;
                grv1.DataBind();
            }

        }

        protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGrid();
        }
    }

}