<%@ Page Title="" Language="C#" MasterPageFile="~/frontSide.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" Runat="Server">
      <div id="" class="" style="height:200px !important;">
				<div data-src="images/page1_img1.jpg">
				</div>
				
			</div>
		
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="tagline" style="background-color:white;">
  <div class="row" style="height:auto !important" >
    <div class="columns large-12" style="height:auto !important">
      <div class="center">         
        <%-- <h1>Hello</h1>
            <p>How</p>--%>
          <div class="container_12">
           <div class="memreg" align="center">
                                 <div class="originallogin" style="font-size:30px";>Enter your review</div>   <br /><br />

               <table>
                   <tr align="top" height="50">
                       <td><span class="loguser1">Review</span></td>
                       <td><asp:TextBox runat="server" ID="txtmemaddress"  class="logtxtbox1" TextMode="MultiLine" Rows="6"></asp:TextBox></td>
                   </tr>    
                   
                   <tr height="50">
                       <td colspan="2" align="center">
                           <asp:Button ID="Button1" runat="server" Text="Submit" class="login100btn" OnClick="Button1_Click" />
                       </td>
                   </tr>

                   
               </table>
               </div>
           </div>
      </div>
    </div>
  </div>
</div>

</asp:Content>

