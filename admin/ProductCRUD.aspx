<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="ProductCRUD.aspx.cs" Inherits="eBuyAntiquesStore2.admin.ProductCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="itemId" DataSourceID="SqlDataSource3" OnRowDataBound="GridView1_RowDataBound" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" ShowFooter="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="itemId" InsertVisible="False" SortExpression="itemId">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("itemId") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("itemId") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="insert" onclick="insert_Click1" ValidationGroup="Insert"  runat="server">Insert</asp:LinkButton>
                </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="itemName" SortExpression="itemName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("itemName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditName" runat="server" 
                    ErrorMessage="Name is a required field"
                    ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("itemName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="itmName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" 
                    ErrorMessage="Name is a required field"
                    ControlToValidate="itmName" ValidationGroup="Insert"  Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="itemDescription" SortExpression="itemDescription">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("itemDescription") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditDesc" runat="server" 
                    ErrorMessage="Description is a required field"
                    ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("itemDescription") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="itmDesc" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertDesc" runat="server" 
                    ErrorMessage="Description is a required field" ValidationGroup="Insert" 
                    ControlToValidate="itmDesc" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="itemWeight" SortExpression="itemWeight">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("itemWeight") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditWeight" runat="server" 
                    ErrorMessage="Weight is a required field"
                    ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("itemWeight") %>'></asp:Label>
                    
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="itmWeight" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertWeight" runat="server" 
                    ErrorMessage="Weight is a required field" ValidationGroup="Insert" 
                    ControlToValidate="itmWeight" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="itemAge" SortExpression="itemAge">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("itemAge") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEditAge" runat="server" 
                    ErrorMessage="Age is a required field"
                    ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("itemAge") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="itmAge" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvInsertAge" runat="server" 
                    ErrorMessage="Age is a required field" ValidationGroup="Insert" 
                    ControlToValidate="itmAge" Text="*" ForeColor="Red">
                         </asp:RequiredFieldValidator> 
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="updatedBy" HeaderText="updatedBy" SortExpression="updatedBy" />
            <asp:BoundField DataField="updatedOn" HeaderText="updatedOn" SortExpression="updatedOn" />
            <asp:BoundField DataField="addedDate" HeaderText="addedDate" SortExpression="addedDate" />
            <asp:TemplateField HeaderText="currencyCode" SortExpression="currencyCode">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("currencyCode") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("currencyCode") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="itmCC" runat="server"></asp:TextBox>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="boughtFromCustomer" SortExpression="boughtFromCustomer">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("boughtFromCustomer") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("boughtFromCustomer") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="itmBfc" runat="server"></asp:TextBox>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="customerID" HeaderText="customerID" SortExpression="customerID" />
            <asp:TemplateField HeaderText="quantity" SortExpression="quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEditQuan" runat="server" 
                    ErrorMessage="quantity is a required field"
                    ControlToValidate="TextBox7" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="itmQuan" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvInsertQuan" runat="server" 
                    ErrorMessage="quantity is a required field" ValidationGroup="Insert" 
                    ControlToValidate="itmQuan" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="itemPrice" SortExpression="itemPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("itemPrice") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvEditPrice" runat="server" 
                    ErrorMessage="Price is a required field"
                    ControlToValidate="TextBox8" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("itemPrice") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="itmPrice" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvInsertPrice" runat="server" 
                    ErrorMessage="Price is a required field" ValidationGroup="Insert" 
                    ControlToValidate="itmPrice" Text="*" ForeColor="Red">
                           </asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
           
           
               
           
            <asp:TemplateField HeaderText="Category">
               
            <ItemTemplate>
                <asp:DropDownList id="category" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server" 
                    ErrorMessage="category is a required field" Text="*" ValidationGroup="Insert" 
                    ControlToValidate="category" ForeColor="Red">
                </asp:RequiredFieldValidator>
                    </ItemTemplate>

           </asp:TemplateField>
               
           
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:ValidationSummary ValidationGroup="Insert"  ID="ValidationSummary1" ForeColor="Red" runat="server" />
    
    <asp:ValidationSummary   ID="ValidationSummary2" ForeColor="Red" runat="server" />
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ebuyAntiquesStoreConnectionString %>" SelectCommand="SELECT [itemId], [itemName], [itemDescription], [itemWeight], [itemAge], [updatedBy], [updatedOn], [addedDate], [currencyCode], [boughtFromCustomer], [customerID], [quantity], [itemPrice] FROM [ItemMaster]" DeleteCommand="DELETE FROM [ItemMaster] WHERE [itemId] = @itemId" InsertCommand="INSERT INTO [ItemMaster] ([itemName], [itemDescription], [itemWeight], [itemAge], [updatedBy], [updatedOn], [addedDate], [currencyCode], [boughtFromCustomer], [customerID], [quantity], [itemPrice]) VALUES (@itemName, @itemDescription, @itemWeight, @itemAge, @updatedBy, @updatedOn, @addedDate, @currencyCode, @boughtFromCustomer, @customerID, @quantity, @itemPrice)" UpdateCommand="UPDATE [ItemMaster] SET [itemName] = @itemName, [itemDescription] = @itemDescription, [itemWeight] = @itemWeight, [itemAge] = @itemAge, [updatedBy] = @updatedBy, [updatedOn] = @updatedOn, [addedDate] = @addedDate, [currencyCode] = @currencyCode, [boughtFromCustomer] = @boughtFromCustomer, [customerID] = @customerID, [quantity] = @quantity, [itemPrice] = @itemPrice WHERE [itemId] = @itemId">
        <DeleteParameters>
            <asp:Parameter Name="itemId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="itemName" Type="String" />
             <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="itemDescription" Type="String" />
            <asp:Parameter Name="itemWeight" Type="Single" />
            <asp:Parameter Name="itemAge" Type="Int32" />
            <asp:Parameter Name="updatedBy" Type="Int32" />
            <asp:Parameter DbType="Date" Name="updatedOn" />
            <asp:Parameter DbType="Date" Name="addedDate" />
            <asp:Parameter Name="currencyCode" Type="String" />
            <asp:Parameter Name="boughtFromCustomer" Type="Byte" />
            <asp:Parameter Name="customerID" Type="Int32" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="itemPrice" Type="Single" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="itemName" Type="String" />
            <asp:Parameter Name="itemDescription" Type="String" />
            <asp:Parameter Name="itemWeight" Type="Single" />
            <asp:Parameter Name="itemAge" Type="Int32" />
            <asp:Parameter Name="updatedBy" Type="Int32" />
            <asp:Parameter DbType="Date" Name="updatedOn" />
            <asp:Parameter DbType="Date" Name="addedDate" />
            <asp:Parameter Name="currencyCode" Type="String" />
            <asp:Parameter Name="boughtFromCustomer" Type="Byte" />
            <asp:Parameter Name="customerID" Type="Int32" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="itemPrice" Type="Single" />
            <asp:Parameter Name="itemId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
 
</asp:Content>
 