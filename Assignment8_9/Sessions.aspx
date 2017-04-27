<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeBehind="Sessions.aspx.cs" Inherits="Assignment8_9.Sessions" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $("#sessDate").datepicker();
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    
    <div style="width:100%; text-align:left; margin-left:50px; margin-bottom:50px;">
    <h1 class="titleStyle">SESSION INFORMATION</h1>
    <br />
    <h1>Photography Rates</h1>
    <ul style="list-style:none;">
        <li>
            <h2>            
                All packages include additional unedited pictures, rights to your photos, session at the location of your choice and typical session time is 1 hour. The session fee is $50.
            </h2>
        </li>
        <li>
            <h2>
                $150 (session fee included in prices) for 4-5 fully edited pictures (lighting,color, skin retouching, etc.).
            </h2>
        </li>
        <li>
            <h2>
                $200 for 8-10 fully edited pictures.
            </h2>
        </li>
        <li>
            <h2>
                $250 for 18-20 fully edited pictures.
            </h2>
        </li>
        <li>
            <h2>
                If these packages do not meet your needs we can make a custom package.
                </h2>
        </li>
    </ul>
    
    <div>
        <div>
            <br />
            <table id="sessionSchedule" style="width: 749px">
                <tr>
                    <td colspan="3" id="sessForm">
                        <h2 style="text-align:center;">Photography Session Scheduling Request Form</h2>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                       <h3 class="tableHead">First Name</h3> 
                    </td>
                    <td style="width: 10px">
                        :</td>
                    <td style="width: 262px">
                        <asp:TextBox ID="firstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h3 class="tableHead">Last Name</h3>
                    </td>
                    <td style="width: 10px">
                        :</td>
                    <td style="width: 262px">
                        <asp:TextBox ID="lastName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h3 class="tableHead">Contact Number</h3>
                    </td>
                    <td style="width: 10px">
                        :</td>
                    <td style="width: 262px">
                        <asp:TextBox ID="phNum" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h3 class="tableHead">Email</h3>
                    </td>
                    <td style="width: 10px">
                        :</td>
                    <td style="width: 262px">
                        <asp:TextBox ID="email" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h3 class="tableHead">Date</h3>
                    </td>
                    <td style="width: 10px">
                        :</td>
                    <td style="width: 262px">
                        <asp:TextBox ID="sessDate" runat="server" ClientIdMode="static"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3 class="tableHead">Time</h3>
                    </td>
                    <td style="width: 10px">
                        :</td>
                    <td style="width: 262px">
                        <asp:DropDownList ID="sessTime" runat="server">
                            
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="height: 21px">
                        &nbsp;</td>
                    <td style="width: 10px; height: 21px">
                    </td>
                    <td style="width: 262px; height: 21px">
                        <asp:Label ID="confirm" runat="server" Text="Request Submitted Successfully!" Visible="False"
                            Width="152px" style="text-align:center;"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td style="width: 10px; text-align: center">
                    </td>
                    <td style="width: 262px">&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit Request" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <h3 style="text-align:center">*Sessions scheduled online are not a definite and may require changing. 
            I will contact you within 48 hrs of your session request being submitted to confirm your session time and date.</h3>
       </div>

    </div>
</asp:Content>

