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
     class Class1
    {

        public static string GetRandomPassword(int length)
        {
            char[] chars = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
            string password = string.Empty;
            Random random = new Random();

            for (int i = 0; i < length; i++)
            {
                int x = random.Next(1, chars.Length);
                //For avoiding Repetation of Characters
                if (!password.Contains(chars.GetValue(x).ToString()))
                    password += chars.GetValue(x);
                else
                    i = i - 1;
            }
            return password;
        }

    }
    public partial class AddItem : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\jk\source\repos\eBuyAntiquesStore2\App_Data\ebuyantiques_db.mdf;Integrated Security=True");
        string a, b;
        int catID;

        protected void Page_Load(object sender, EventArgs e)
        {
          
                catID = 0;


            string com = "select * from CategoryMaster"; 
            sqlcon.Open();
            // table name  
            SqlDataAdapter adpt = new SqlDataAdapter(com,sqlcon);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            pdropdown.DataSource = dt;
            pdropdown.DataTextField = "categoryName";// text field name of table dispalyed in dropdown       
                pdropdown.DataValueField = "categoryId";
            pdropdown.DataBind();
                //get selected  value
            sqlcon.Close();
        }

        
         public void GetCategoryId(String catname)
        {
            SqlCommand sqlcom = new SqlCommand("select categoryId from CategoryMaster where categoryName='" + catname + "'",sqlcon);
            sqlcom.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sqlcom);
            da.Fill(dt);
            catID = Convert.ToInt32(dt.Rows[0]["categoryId"]);

        }
        
        public void InsertItemStock() { 
        }
        protected void Sbtbtn_Click(object sender, EventArgs e)
        {
            try
            {
                sqlcon.Open();
                GetCategoryId(pdropdown.SelectedItem.ToString());
                a = Class1.GetRandomPassword(10).ToString();
                pimg.SaveAs(Request.PhysicalApplicationPath + "./Images/" + a + pimg.FileName.ToString());
                b = "Images/" + a + pimg.FileName.ToString();

                SqlCommand cmd = sqlcon.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into ItemMaster(itemName,categoryId,itemDescription,itemWeight,itemAge,itemImage,addedDate) values('" + pname.Text + "'," + catID.ToString() + ",'" + pdesc.Text + "'," + pweight.Text + "," + page.Text + ",'" + b.ToString() + "','" + DateTime.Now.ToString("M/d/yyyy") + "')";
               
               int i= cmd.ExecuteNonQuery(); sqlcon.Close();
                if (i > 0)
                {
                    l2.Text = "cat:"+catID.ToString();
                    l3.Text = "name   :" + pdropdown.SelectedItem.Text;
                    l4.Text = "date:" + DateTime.Now.ToString("M/d/yyyy");
                    l4.Text = "dt:" + pdropdown.SelectedValue.ToString();
                    


                }
                else {
                    Response.Write("<script>alert('Error')</script>");
                }
                int id = GetItemId(pname.Text.ToString());
                InsertPrice(id, float.Parse(pprice.Text.ToString()));
                
                
            }
            
            finally
            {
                sqlcon.Close();
            }
        }
        public void InsertPrice(int id,float oprice) {

            try
            {
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("insert into ItemPricingMaster(itemId,originalPrice,discountedPrice) values(" + id+","+oprice+ "," + oprice + ")", sqlcon);
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }
           
            finally
            {
                sqlcon.Close();
            }
        }
        public int  GetItemId(String iname)
        {
            int id = 0;
            try
            {


                SqlDataAdapter da =new SqlDataAdapter("select itemId from ItemMaster where itemName='" + iname + "'", sqlcon);
                DataTable dt = new DataTable();
               da.Fill(dt);
                id = Convert.ToInt32(dt.Rows[0][0].ToString());

                sqlcon.Close(); return id;
            }
           
            finally
            {
                sqlcon.Close();
            }

           
        }
    }
}