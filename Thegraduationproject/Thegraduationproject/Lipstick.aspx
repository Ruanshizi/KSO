<%@ Page Language="C#"
    AutoEventWireup="true"
    CodeBehind="Lipstick.aspx.cs"
    masterPageFile="~/MianMaster.Master"
    Inherits="Thegraduationproject.Lipstick" %>


<asp:Content ID="Conten1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%;padding:5px;">
        <div style="text-align:center;">
        <asp:Image ID="imgCover" runat="server" />
        </div>
    </div>
    <div>
        <div style="text-align:right;width:200px">
            商品名字：
            <asp:Label ID="lblames" runat="server" Text=""></asp:Label>
        </div>
        <div style="text-align:right;width:200px;height:20px">
            商品价格：
            <asp:Label ID="lblpice" runat="server" Text=""></asp:Label>
        </div>
        <div style="text-align:right;width:195px; height:16px">颜色：
            <asp:Label ID="lblLColor" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div>

    </div>

</asp:Content>
