<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Prac7.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 350px;
        }

        .auto-style3 {
            width: 82px;
        }

        .auto-style4 {
            width: 69px;
        }

        .auto-style5 {
            width: 208px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 100%">
            <table class="auto-style1">
                <tr>
                    <td colspan="2">User Name:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtUsername" runat="server" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" EnableViewState="False" ErrorMessage="User Name is Required" ForeColor="Tomato">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Pasword is Required" ForeColor="Tomato">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Should be Exactly 6 Character" ForeColor="Tomato" ValidationExpression="\S{6}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Age:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtAge" runat="server" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is Required" ForeColor="Tomato">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Date of Birth:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth is Required" ForeColor="Tomato">*</asp:RequiredFieldValidator>
                        <%--<asp:CompareValidator ID="cvDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date Must be before Today Date" ForeColor="Tomato" Operator="LessThan">*</asp:CompareValidator>--%>
                        <asp:CompareValidator ID="cvDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date must be lesser than Today's Date" ForeColor="Tomato" Operator="LessThan">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Credit Card Type:</td>
                    <td class="auto-style5">
                        <asp:RadioButtonList ID="rblCardType" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Visa</asp:ListItem>
                            <asp:ListItem>Master</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Credit Card Number:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtCardNum" runat="server" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCardNum" runat="server" ControlToValidate="txtCardNum" ErrorMessage="Credit Card Number is Required" ForeColor="Tomato">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regCardNum" runat="server" ControlToValidate="txtCardNum" ErrorMessage="Invalid Credit Card Number" ForeColor="Tomato" ValidationExpression="(^4\d{15})|(^5\d{15})">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CausesValidation="False" OnClick="btnClear_Click" />
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Tomato" HeaderText="Please fix the error shown:" />
        </div>
        <p>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
