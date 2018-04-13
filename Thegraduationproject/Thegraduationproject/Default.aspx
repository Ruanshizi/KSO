<%@ Page Language="C#"
    AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" 
    MasterPageFile="~/MianMaster.Master"
    Inherits="Thegraduationproject.Default1" %>

<asp:Content ID="Content" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:DataList ID="dgdShowData" runat="server" RepeatColumns="4" OnSelectedIndexChanged="dgdShowData_SelectedIndexChanged">
        <ItemTemplate>
            <div style="width:147px;background-color:pink;" onmouseover="this.style.backgroundColor='#d7d7d7';"onmouseout="this.style:backgroundColor='#C8E2B1';">
                <div style="text-align:center;vertical-align:top;">
                    <a href='<%#"MyHandler.ashx?Lphoto="+Eval("Lphoto") %>'>
                    <asp:Image ID="imCover" Width="120" Height="130" ImageUrl='<%#Eval("ISBN")+".jpg" %>' runat="server" /></a>
                </div>
                <div>
                    <a href='<%# "Lipstick.aspx?ID="+Eval("ID") %>'>
                        <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("LTitle").ToString().Length>9?Eval("LTitle").ToString().Substring(0,8)+"..":Eval("LTitle") %>'></asp:Label></a>
                </div>
                <div>
                    <asp:Label ID="lblLPrice" runat="server" Text='<%#Eval("LPrice","{0:c}") %>'></asp:Label>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:Repeater ID="dgshowKSO" runat="server">
        <ItemTemplate>
            <div style="padding:5px;width:100%;background-color:pink">
                <div style="width:110px;">
                    <a href='<%# "MyHandler.ashx?Lphoto="+Eval("Lphoto") %>'>
                      <asp:Image ID="imgCover" Width="100" Height="120" ImageUrl='<%# Eval("Lphoto") %>' runat="server" /></a>

                    <div style="text-align:left">
                    商品名字：<a href='<%#"Lipstick.aspx?LTitle="+Eval("LTitle") %>'><%#Eval("LTitle") %></a></div>
                </div>
                <div style="text-align:left">
                    商品价格：<%# Eval("LPrice") %></div>
                <div style="text-align:left">
                    颜色：<%#Eval("LColor") %></div>
            </div>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <div style="padding:5px;width:100%;background-color:pink">
                <div style="width:110px;">
                    <a href='<%# "MyHandler.ashx?Lphoto="+Eval("Lphoto") %>'>
                      <asp:Image ID="imgCover" Width="100" Height="120" ImageUrl='<%# Eval("Lphoto") %>' runat="server" /></a>

                    <div style="text-align:left">
                    商品名字：<a href='<%#"Lipstick.aspx?LTitle="+Eval("LTitle") %>'><%#Eval("LTitle") %></a></div>
                </div>
                <div style="text-align:left">
                    商品价格：<%# Eval("LPrice") %></div>
                <div style="text-align:left">
                    颜色：<%#Eval("LColor") %></div>
            </div>

        </AlternatingItemTemplate>

        <SeparatorTemplate>

            <hr />
        </SeparatorTemplate>

    </asp:Repeater>
     <div style="text-align:center">
          <asp:Button ID="butPre" runat="server" Text="上一页" OnClick="butPre_Click" />
          <asp:Label runat="server" Text="第"/>
          <asp:Label ID="lblMsg" runat="server" Text=""/>
          <asp:Label runat="server" Text="页/共"/>
          <asp:Label ID="lblCount" runat="server" Text=""/>
          <asp:Label runat="server" Text="页"/>
          <asp:Button ID="butNext" runat="server" Text="下一页" OnClick="butNext_Click1"  />
    </div>
</asp:Content>