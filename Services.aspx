<%@ Page Title="" Language="C#" MasterPageFile="~/FrameSet.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="CreativeArt.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 1000px;
            height: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper" style="position: relative; width: 1024px; height: 400px; top: 50%; left: 10%;">
        <div style="float: left; width: 520px; text-align: justify;">
            <br />
            <img class="auto-style1" src="Images/services.jpg" style="width: 100%; height: 100%; vertical-align: middle;" />
        </div>
        <div style="float: right; width: 420px; text-align: justify;">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="XmlDataSource1">
                <LayoutTemplate>
                    <div id="itemPlaceHolderContainer" runat="server">
                        <span id="itemPlaceHolder" runat="server"></span>
                    </div>
                </LayoutTemplate>
                <ItemTemplate>
                    <%#XPath("service")%>
                    <p><%#XPath("serviceText2")%></p>
                </ItemTemplate>
            </asp:ListView>
            
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Data/Services.xml"></asp:XmlDataSource>

            <br />
        </div>
    </div>

</asp:Content>
