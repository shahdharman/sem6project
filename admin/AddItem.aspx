<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="eBuyAntiquesStore2.admin.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <h3>Add product page</h3>
<table>
    <tr>
        <td>Product Name:</td>
        <td><asp:TextBox ID="pname" placeholder="Enter Product Name" runat="server"></asp:TextBox></td>
    </tr>
    
    <tr>
        <td>Category:</td>
        <td><asp:DropDownList ID="pdropdown" runat="server" Width="150px" >  
        </asp:DropDownList>  
        </td>
    </tr>
   
            <br>
     <tr>
        <td>Product Age:</td>
        <td><asp:TextBox ID="page" placeholder="Enter Product Age" runat="server"></asp:TextBox></td>
    </tr>
                <br>
     <tr>
        <td>Product Weight:</td>
        <td><asp:TextBox ID="pweight" placeholder="Enter Product Weight" runat="server"></asp:TextBox></td>
    </tr>
                <br>
     <tr>
        <td>Product Price:</td>
        <td><asp:TextBox ID="pprice" placeholder="Enter Product Price" runat="server"></asp:TextBox></td>
    </tr>
    <br>
     <tr>
        <td >Product Description:</td>
        <td><asp:TextBox ID="pdesc" placeholder="Enter Product Description" runat="server" TextMode="MultiLine" Rows="5" Columns="20" ></asp:TextBox></td>
    </tr>
        <br>
     <tr>
        <td>Upload Image:</td>
        <td><asp:FileUpload ID="pimg" runat="server" /></td>
    </tr>
            <td>
     <tr>
        <td colspan="2" align="center"><asp:Button ID="sbtbtn" runat="server" text="Upload" OnClick="Sbtbtn_Click"/></td>
    </tr>
                <td></td><asp:Label ID="l2" runat="server"></asp:Label></td>
                <asp:Label ID="l3" runat="server"></asp:Label>
                <asp:Label ID="l4" runat="server"></asp:Label>
                </tr>
</table>
    </asp:Content>