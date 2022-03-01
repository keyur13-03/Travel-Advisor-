<%@ Page Title="" Language="C#" MasterPageFile="~/frontSide.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSlider" Runat="Server">
    <div class="slider_wrapper">
			<div id="" class="" style="height:200px !important;">
				<div data-src="images/page1_img1.jpg">
				</div>
				
			</div>
		</div></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="content"><div class="ic"></div>
			<div class="container_12">
				<div class="grid_5">
					<h3 >CONTACT INFO</h3>
					<div class="map">
						<p><span class="blog">Hotel Recommendation System </span></p>
						<div class="clear"></div>
						<figure class="">
<!--							<iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>-->
						</figure>
						<address>
							<dl>
								<dd><span>Freephone:</span>+1 800 559 6580</dd>
								<dd><span>Telephone:</span>+1 800 603 6035</dd>
								<dd><span>FAX:</span>+1 800 889 9898</dd>
								<dd>E-mail: <a href="#" class="col1">hits1602@gmail.com</a></dd>
							</dl>
						</address>
					</div>
				</div>
				<div class="grid_6 prefix_1">
					<h3>GET IN TOUCH</h3>
                   
                     <table cellspacing="10" cellspadding="10" align="center" >

                       
                   <tr height="60" width="100">
                       <td width="180"><span class="loguser2" >Name</span></td>
                       <td width="320"><asp:TextBox ID="txtinqfname" runat="server" autocomplete="off"  class="logtxtbox1" placeholder="Username"></asp:TextBox></td>
                   </tr>
            <br />

                       
                                                       
                   <tr height="60" width="100">
                       <td><span class="loguser2">Email</span></td>
                       <td><asp:TextBox runat="server" ID="txtinqemail" autocomplete="off" class="logtxtbox1" placeholder="Email"></asp:TextBox></td>
                   </tr>     
                                    
                   <tr height="60" width="100">
                       <td><span class="loguser2">City</span></td>
                       <td><asp:TextBox runat="server" ID="txtcity" autocomplete="off" class="logtxtbox1" placeholder="City"></asp:TextBox></td>
                   </tr>
                       
                  
                   <tr valign="top" height="60" width="100">
                       <td><span class="loguser2">Message</span></td>
                       <td><asp:TextBox runat="server" ID="txtmsg" TextMode="MultiLine" Rows="6" class="logtxtbox1" placeholder="Message"></asp:TextBox></td>
                   </tr>   
                                                         
                   <tr height="60" width="100">
                       <td colspan="2" align="center">
                           <asp:Button ID="Button1" runat="server" Text="Clear"  class="login100btn" />
                           <asp:Button ID="Button2" runat="server" Text="Submit"  class="login100btn" OnClick="Button2_Click"  />
                       </td>
                   </tr>

                   
               </table>
				</div>
			</div>
		</div>

</asp:Content>

