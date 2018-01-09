<%@ Page Title="" Language="C#" MasterPageFile="~/FrameSet.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="CreativeArt.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="wrapper" style="position: relative; width: 1024px; height: 400px; top: 50%; left: 10%; ">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="4000" OnDataBinding="Timer1_Tick" OnTick="Timer1_Tick"></asp:Timer>
                <asp:Image ID="Image1" Width="500px" Height="300px" runat="server" />
                <asp:Label ID="LabelImageName" runat="server"></asp:Label><br />
                <asp:Label ID="LabelImageOrder" runat="server" Text="Label" Font-Size="X-Large" ForeColor="SkyBlue" Font-Underline="True" Font-Italic="True" Style="font-family: 'Times New Roman'"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
    </div>
</asp:Content>
