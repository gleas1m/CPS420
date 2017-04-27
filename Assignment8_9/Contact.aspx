<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment8_9.WebForm1" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div style="width:100%; text-align:left; margin-left:50px; margin-bottom:50px;">
    <h1 class="titleStyle">CONTACT INFO</h1>
    <br />
        <div style="text-align:left; margin-left:10%; height:100%; width:100%;">
        <h2>
            Phone Number:  (517) 899-0078
        </h2>
        <h2>
           Email:  juliannemessenger@yahoo.com
        </h2>
        <h2>
            Location:  Lansing, MI
        </h2>
        </div>
        
    </div>
    <div id="banner">
            <div class="boarderImage">
               <asp:Image ID="Image3" runat="server" src="images/mystery.jpg" style="height:100%; width:100%;"/>
            </div>
            <div class="boarderImage">
               <asp:Image ID="Image2" runat="server" src="images/sw.jpg" style="height:100%; width:100%;"/>
            </div>
            <div class="boarderImage">
              <asp:Image ID="Image4" runat="server" src="images/evie.jpg" style="height:100%; width:100%;"/>
            </div>
        </div>
</asp:Content>

