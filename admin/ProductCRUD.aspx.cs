using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace eBuyAntiquesStore2.admin
{
    public partial class ProductCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton insert = new LinkButton();
            insert.Click += Insert_Click;
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string con1 = ConfigurationManager.ConnectionStrings["ebuyAntiquesStoreConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(con1);
                sqlcon.Open();
                var dropdown = (DropDownList)e.Row.FindControl("category");
                String selQuery = "select * from CategoryMaster";
                SqlCommand com = new SqlCommand(selQuery, sqlcon);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                sqlcon.Close();
                dropdown.DataSource = dt;
                dropdown.DataTextField = "categoryName";
                dropdown.DataValueField = "categoryId";
                dropdown.DataBind();
                dropdown.Items.Insert(0, new ListItem("--Select Category--", "0"));

                string item = e.Row.Cells[0].Text;
                foreach (Button button in e.Row.Cells[2].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                    }
                }
            }

            }

        protected void insert_Click1(object sender, EventArgs e)
        {//itmDesc,itmWeight,itmAge,itmQuan,itmPrice,itmCC,itmBfc,
            SqlDataSource3.InsertParameters["addedDate"].DefaultValue = DateTime.Now.ToString();
            SqlDataSource3.InsertParameters["itemName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("itmName")).Text;
            SqlDataSource3.InsertParameters["itemDescription"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("itmDesc")).Text;
            SqlDataSource3.InsertParameters["itemWeight"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("itmWeight")).Text;
            SqlDataSource3.InsertParameters["itemAge"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("itmAge")).Text;
          //  SqlDataSource3.InsertParameters["updatedBy"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("itemAge")).Text;
           // SqlDataSource3.InsertParameters["updatedOn"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("itemAge")).Text;
            SqlDataSource3.InsertParameters["boughtFromCustomer"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("itmBfc")).Text;
            SqlDataSource3.InsertParameters["currencyCode"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("itmCC")).Text;
            SqlDataSource3.InsertParameters["itemPrice"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("itmPrice")).Text;
            SqlDataSource3.InsertParameters["quantity"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("itmQuan")).Text;
            SqlDataSource3.InsertParameters["category"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("category")).SelectedValue;

            SqlDataSource3.Insert();
        }
    }
  }