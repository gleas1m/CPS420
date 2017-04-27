<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Assignment8_9.Gallery" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div style="width:90%; text-align:left; margin-left:50px; margin-bottom:50px;" id="galleryContainer">
    <h1 class="titleStyle">PHOTO GALLARY</h1>
    <br />
        <asp:Image ID="Image_Display" runat="server" ImageUrl="#image" style="height:1000px; width:1050px; position:relative; margin-left:25%;"/>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/arrowLft.png" Height="51px" Width="57px" style="position:absolute; top: 600px; left: 331px;" OnClick="ImageButton1_Click"/>
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/arrowRt.png" Height="51px" Width="57px"  style="position:absolute; top: 600px; left: 1600px;" OnClick="ImageButton2_Click"/>
    </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder2" >
</asp:Content>


