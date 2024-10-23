<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="shoolmanage.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Details</title>
         <style>
        body {
            background: url('./hgfds.jpg') no-repeat center center;
            background-size: cover;
            height: 90vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
          .button-container {
            display: flex;             
            justify-content: center;   
            align-items: flex-start;   
                   
            margin: 0;               
        }
           .show-details-button {
            background-color: #4CAF50; 
            border: none;               
            color: white;               
            padding: 10px 20px;     
            text-align: center;     
            text-decoration: none;     
            font-size: 16px;          
            cursor: pointer;         
            border-radius: 8px;      
            transition: background-color 0.3s;
            width: 200px;            
           
        }
       

        </style>
</head>
<body>
    <form id="form1" runat="server">
              <div class="button-container">
                      <asp:Button ID="btnShowDetails" runat="server" Text="Show Details" OnClick="btnShowDetails_Click" CssClass="show-details-button" />
              </div>

        <br />

     <div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="Student Name" HeaderText="Student Name" />
              <asp:BoundField DataField="Fathers Name" HeaderText="Fathers Name" />
              <asp:BoundField DataField="Mothers Name" HeaderText="Mothers Name" />
              <asp:BoundField DataField="Gender" HeaderText="Gender" />
              <asp:BoundField DataField="Date of Birth" HeaderText="Date of Birth" />
              <asp:BoundField DataField="Email" HeaderText="Email" />
              <asp:BoundField DataField="Department" HeaderText="Department" />
              <asp:BoundField DataField="Phone" HeaderText="Phone" />
           </Columns>
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
         </asp:GridView>
            </div>
    
    </form>
</body>
</html>
