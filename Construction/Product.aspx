<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Construction.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <!-- Page Title -->
    <div class="page-title dark-background" style="background-image: url(assets/img/page-title-bg.jpg);">
        <div class="container position-relative">
            <h1>Registration</h1>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="index.aspx">Home</a></li>
                    <li class="current">Product</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- End Page Title -->
     <div class="container mt-4">
        <div class="card shadow-lg p-4">
            <h2 class="text-center mb-4 text-primary">Product Registration</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <label class="form-label">Product Name:</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Product Name"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-3">
                        <label class="form-label">Product Code:</label>
                        <asp:TextBox ID="txtcode" runat="server" CssClass="form-control" placeholder="Enter Product Code"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Sale Mode:</label>
                <asp:RadioButtonList ID="rbsalemode" runat="server" CssClass="form-check">
                    <asp:ListItem CssClass="form-check-label">Wholesale</asp:ListItem>
                    <asp:ListItem CssClass="form-check-label">Retail</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div class="mb-3">
                <label class="form-label">Quantity:</label>
                <asp:TextBox ID="txtquantity" runat="server" CssClass="form-control" placeholder="Enter Quantity"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label class="form-label">Product Type:</label>
                <asp:CheckBoxList ID="chktype" runat="server" CssClass="form-check">
                    <asp:ListItem CssClass="form-check-label">Food</asp:ListItem>
                    <asp:ListItem CssClass="form-check-label">Good</asp:ListItem>
                    <asp:ListItem CssClass="form-check-label">Device</asp:ListItem>
                </asp:CheckBoxList>
            </div>

            <div class="mb-3">
                <label class="form-label">Choose City:</label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                    <asp:ListItem>--- Select ---</asp:ListItem>
                    <asp:ListItem>HeadQuater</asp:ListItem>
                    <asp:ListItem>Company</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="mb-3">
                <label class="form-label">Product Image:</label>
                <asp:FileUpload ID="imageup" runat="server" CssClass="form-control" />
            </div>

            <div class="text-center">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-warning px-4 py-2 fw-bold shadow-lg" OnClick="btnsubmit_Click" />
            </div>
        </div>
    </div>
</asp:Content>