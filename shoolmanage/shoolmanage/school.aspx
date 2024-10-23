<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="school.aspx.cs" Inherits="schoolmanage.school" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
     <style>
        body {
            display: flex;
           
            margin: 30px;
             height: 90vh;

            background:url('./dddddd.jpg') no-repeat;
            background-size: cover;
            justify-content: center;
            align-items: center;

            
        }

        .registration-form {
            background-color: rgba(255, 255, 255, 0.5); 

            border-radius: 15px; 
            padding: 20px;
            box-shadow: 0 0px 20px rgba(0, 0, 0, 0.5);
            width: 550px; 
            height: 50%;
           

        }
         h1 {
            text-align: center; 
            margin-bottom: 20px; 
            color: #333;
            font-size: 44px;
            margin-top: 14px;
        }

          table {
            width: 100%; 
            border-collapse: collapse; 
           
        }
            td {
            padding: 12px;
             text-align: center;
             font-size: 20px; 
        }
        input[type="text"], 
        input[type="email"], 
        select {
            width: 100%; 
            padding: 6px; 
            border: 1px solid #ccc;
            border-radius: 5px; 
            box-sizing: border-box; 
          
        }
         .radio-group {
             display: flex; 
             align-items: center;
         }
         .gender-radio {
    text-align: left; 
}
         input[type="submit"] {
             background-color: #4CAF50; 
             color: black;
             cursor: pointer;
             width: 50%;
             font-size: 18px;
             border-radius: 8px;
             transition: background-color 0.3s ease;
             border-bottom-left-radius;
         }
           input[type="submit"]:hover {
            background-color: #45a049; 
             width: 60%; 

        }


         .auto-style1 {
             width: 181px;
         }
         .auto-style2 {
             width: 190px;
         }
         .auto-style3 {
             width: 111px;
         }
         .auto-style4 {
             margin-left: 68px;
         }
         .auto-style5 {
             width: 100%;
         }
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="registration-form">
         <h1 >Registration Form</h1>
        <table class="auto-style5">
            <tr>
                <td class="auto-style1"><b>Student Name</b></td>
                <td class="auto-style2">
                  <asp:TextBox ID="Textname" runat="server" placeholder="Full Name" autocomplete="off" onpaste="return false" MaxLength="15" />


                </td>
                <td>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Textname" ErrorMessage="not in format" ValidationExpression="^[A-Za-z]+([ '-][A-Za-z]+)*$"></asp:RegularExpressionValidator>

                </td>
            </tr>
             <tr>
                <td class="auto-style1"><b>Fathers Name</b></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextFname" runat="server" placeholder="Fathers Name" onpaste="return false"  autocomplete="off" MaxLength="15" />

                </td>
                 <td>

                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextFname" ErrorMessage="not in format" ValidationExpression="^[A-Za-z]+([ '-][A-Za-z]+)*$"></asp:RegularExpressionValidator>

                 </td>
            </tr>
            <tr>
                <td class="auto-style1"><b>Mothers Name</b></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextMname" runat="server" placeholder="Mothers Name" MaxLength="15" />

                </td>
                <td>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextMname" ErrorMessage="not in format" ValidationExpression="^[A-Za-z]+([ '-][A-Za-z]+)*$"></asp:RegularExpressionValidator>

                </td>
            </tr>
           <tr>
                  <td class="auto-style1"><b>Gender</b></td>
                 <td style="text-align: left" class="auto-style2">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="gender-radio" AutoPostBack="True" Width="129px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem runat="server" Text="Male" value="Male" />
                            <asp:ListItem runat="server" Text="Female" value="Female" />
                            <asp:ListItem runat="server" Text="Others" value="Others" />
                             </asp:RadioButtonList>
                      </td>
               <td class="auto-style3">

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Required *" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textdate" ErrorMessage="DOB *" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextEmail" ErrorMessage="Email *" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Textphone" ErrorMessage="Phone" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textname" ErrorMessage="Name" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextFname" ErrorMessage="Fname *" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextMname" ErrorMessage="Mname *" ForeColor="Red"></asp:RequiredFieldValidator>

               </td>
                 </tr>

            <tr>
                <td class="auto-style1"><b>Date of Birth</b></td>
                <td class="auto-style2"> 
                     <asp:TextBox ID="Textdate" runat="server" MaxLength="16"></asp:TextBox>
                    </td>
                <td class="auto-style3">

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textdate" ErrorMessage="Invalid DOB" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-(19|20)\d{2}$"></asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style1"><b>Email</b></td>
                      <td class="auto-style2"> 
                          <asp:TextBox ID="TextEmail"  runat="server" autocomplete="off" MaxLength="15"></asp:TextBox>
                    
                         </td>
                <td class="auto-style3">
                          <asp:RegularExpressionValidator ID="revEmailValidator" runat="server" ControlToValidate="TextEmail"  ErrorMessage="Invalid email " ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>
                    </td>

            </tr>
            <tr>
                <td class="auto-style1"><b>Department</b></td>
                <td class="auto-style2">

                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Mechanical</asp:ListItem>
                        <asp:ListItem>Civil</asp:ListItem>
                        <asp:ListItem>AIML</asp:ListItem>
                        <asp:ListItem>Aero</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td class="auto-style1"><b>Phone</b></td>
                <td class="auto-style2">
                    <asp:TextBox ID="Textphone" runat="server" MaxLength="10"></asp:TextBox>
                </td>
                <td>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Textphone" ErrorMessage="Invalid" ValidationExpression="^[56789]\d{9}$"></asp:RegularExpressionValidator>

                </td>
            </tr>
             <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="auto-style4" />
                    </td>
               </tr>
           
        </table>

    </div>
       
    </form>
   
</body>
</html>
