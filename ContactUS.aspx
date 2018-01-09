<%@ Page Title="" Language="C#" MasterPageFile="~/FrameSet.Master" AutoEventWireup="true" CodeBehind="ContactUS.aspx.cs" Inherits="CreativeArt.ContactUS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 150px;
            height:50px;
            text-align: right;
        }

        .auto-style3 {
            text-align: left;
            border-color: inherit;
            border-width: medium;
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper" style="position: relative; top: 50%; left: 10%; width: 1024px; height: 400px; ">
        PHOTO CREATIVE is located in Skopje, Down Town,Kej 13 Noemvri 5/10 at City Trade Center.
        Our studio is available for use by approved photographers,and for corporate events and parties.
        For Inquiries, contact Aleksandar Slavkovikj- Studio Manager. 
        View our portfolio and you will understand why he is in such high demand!<br />
        <br />
        <div style="background-color: black; width: 500px; left: 2%; height: 250px; float: left; position: relative">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style2">Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server" Style="margin-top:0px;  Width:200px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right;">Phone:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPhone" runat="server" Style="margin-top: 0px" Width="200px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right;">E-Mail:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" runat="server" Style="margin-top: 0px" Width="200px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right;">Message:
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtMessage" runat="server" Style="margin-top: 0px" Height="100px" Width="400px" border-radius="5px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right;">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="bttnSend" runat="server" Text="Send" BackColor="Red" ForeColor="White" border="2px"	border-radius="5px" BorderColor="Red" BorderStyle="Solid" OnClick="bttnSend_Click"/>
                        <br />
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>

                </tr>
            </table>
        </div>
        <div style="background-color: gray; width: 400px; height: 325px; float: right">
            <iframe width="400" height="325" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?ie=UTF8&amp;ll=41.995174,21.434669&amp;spn=0.004362,0.010568&amp;t=m&amp;z=17&amp;output=embed"></iframe>
            <br />
            <small><a href="https://maps.google.com/maps?ie=UTF8&amp;ll=41.995174,21.434669&amp;spn=0.004362,0.010568&amp;t=m&amp;z=17&amp;source=embed" style="color: #0000FF; text-align: left">View Larger Map</a></small>
        </div>
    </div>
</asp:Content>
