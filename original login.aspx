<%@ Page Language="C#" AutoEventWireup="true" CodeFile="original login.aspx.cs" Inherits="original_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script>
        function valid() {
            //alert("hello");
            var user = document.getElementById('<%=txtemail.ClientID%>').value;

            var psw = document.getElementById('<%=txtpsw.ClientID%>').value;
            
            if (user.length == 0) {
                alert("Enter Email");
                document.getElementById('<%=txtemail.ClientID%>').focus();
                return false;
            }

            if (psw.length == 0) {
                alert("Enter Password");
                document.getElementById('<%=txtpsw.ClientID%>').focus();
                return false;
            }
            return true;
        }
    </script>
</head>
<%--     var user = document.getElementById('<%=txtemail.ClientID%>').value;--%>
    <%--if (user.length == 0) {
                alert("Enter Email");
                document.getElementById('<%=txtemail.ClientID%>').focus();
                return false;
            }--%>

<body>
    <div class="tagline" >
  
          <div class="container_12">
           <form id="form1" runat="server">
          <div align="center" class="logbox" style="background-image:url(images/images/123.jpg)">
            
             <table  width="100%" class="tblpad"  >
                 <tr height="50">
                     <td colspan="2" align="center" class="originallogin">LOGIN</td>
                 </tr>
                   <tr height="50">
                       <td width="100"><span class="loguser">Email</span></td>
                       <td width="300"><asp:TextBox ID="txtemail" runat="server" class="logtxtbox"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter email" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr height="50">
                       <td><span class="loguser">Password</span></td>
                       <td><asp:TextBox ID="txtpsw"  runat="server" class="logtxtbox" TextMode="Password"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please cheak your password" ControlToValidate="txtpsw"></asp:RequiredFieldValidator>
                       </td>

                   </tr>
                 <tr height="30">
            <td colspan="2" align="center">
                <asp:Label ID="lbllogerr" runat="server" Text="" Visible="false"></asp:Label>
            </td>
        </tr>

                   <tr height="50">
                       <td colspan="2" align="center">
                       <asp:HyperLink ID="hyperforgot" runat="server" NavigateUrl="~/forgetpwd.aspx" Text="Forgot Password" class="login100btn"></asp:HyperLink>
                           </td>

                      <%-- <td width="220"><a href="agencyforgotpsw.aspx"><img src="images/forgotpsw.jpg" height="50" /></a></td>
                       <td width="180"><a href="agencyregister.aspx"><img src="images/registermember.jpg" /></a></td>--%>
                   </tr>
                  <tr height="50">
                      <td colspan="2" align="center">
                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Member register.aspx" Text="Register Now"  class="login100btn"></asp:HyperLink>
                          </td>
</tr>
                   <tr height="50">
                       <td colspan="2" align="center">
                           <asp:Button ID="Button1" runat="server" Text="Log In" class="login100btn" OnClick="Button1_Click"  />
                           <asp:Button ID="Button2" runat="server" Text="Reset" class="login100btn" />
                       </td>
                   </tr>

                   
               </table>
              </div>
               </form>
           </div>
          </div>
</body>
</html>
