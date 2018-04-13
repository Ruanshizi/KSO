<%@ Page Title="" Language="C#" MasterPageFile="~/MianMaster.Master" AutoEventWireup="true" CodeBehind="indexTxt.aspx.cs" Inherits="Thegraduationproject.indexTxt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder12" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:FileUpload ID="FileUploadl" runat="server" />
            <asp:Button ID="btnUoload" runat="server" Text="上传" OnClick="btnUoload_Click" />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
</asp:Content>
