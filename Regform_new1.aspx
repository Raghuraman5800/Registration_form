<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regform_new1.aspx.cs" Inherits="RegForm_new.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <div class="container-fluid jumbotron" style="background-color: aquamarine">
        <h3>
            <center>Welcome!Enter ur Cred's here</center>
        </h3>
    </div>

    <div class="container">
    <form class="was-validated" novalidate>
        <div class="form-row form-group justify-content-center align-items-center h-100">
            <div class="col-3">
                <label for="fname">First Name</label>
                <input type="text" class="form-control" id="fname" placeholder="fname" maxlength="10" aria-describedby="fname" required />
            </div>
            <div class="col-3">
                <label for="lname">Last Name</label>
                <input type="text" class="form-control" id="lname" placeholder="lname" maxlength="10" aria-describedby="lname" required />
            </div>
        </div>
        <div class="form-row form-group justify-content-center align-items-center h-100">
            <div class="col-3">
                <label for="age">Age</label>
                <input type="number" id="age" class="form-control" step="1" placeholder="age" max="99" aria-describedby="age" required />
            </div>
            <div class="col-3">
                <label for="phone">Contact Details</label>
                <input type="text" class="form-control" id="phone" placeholder="+91----" max="10" aria-describedby="phone" required />
            </div>
        </div>
        <div class="form-row form-group justify-content-center align-items-center h-100">
            <div class="col-3">
                <label for="dob">Date Of Birth</label>
                <input type="date" class="form-control" id="dob" aria-describedby="dob" required />
            </div>
            <div class="col-3">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Enter ur @email" maxlength="50" aria-describedby="email" required />
            </div>
        </div>
        <div class="row"></div>
        <div class="row text-center">
            <div class="col-12">
                <button type="button" class="btn btn-warning" onclick="valForm()">Submit</button>
            </div>
        </div>
    </form>
    </div>
    
    <div class="modal" id="myModal">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Verify !</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-row form-group justify-content-center align-items-center h-100">
                        <div class="col-6">
                            <label for="fname">First Name</label>
                            <input type="text" class="form-control" id="Rname" placeholder="fname" required />
                        </div>
                        <div class="col-6">
                            <label for="lname">Last Name</label>
                            <input type="text" class="form-control" id="Sname" placeholder="lname" required />
                        </div>
                    </div>
                    <div class="form-row form-group justify-content-center align-items-center h-100">
                        <div class="col-6">
                            <label for="age">Age</label>
                            <input type="number" id="Vga" class="form-control" step="1" placeholder="age" required />
                        </div>
                        <div class="col-6">
                            <label for="phone">Contact Details</label>
                            <input type="text" class="form-control" id="Call" placeholder="+91----" required />
                        </div>
                    </div>
                    <div class="form-row form-group justify-content-center align-items-center h-100">
                        <div class="col-6">
                            <label for="dob">Date Of Birth</label>
                            <input type="date" class="form-control" id="Birth" required />
                        </div>
                        <div class="col-6">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="Mail" placeholder="Enter ur @email" required />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>  
        function valForm() {
            debugger
            var fname = document.getElementById('fname').value;
            var lname = document.getElementById('lname').value;
            var age = document.getElementById('age').value;
            var phone = document.getElementById('phone').value;
            var dob = document.getElementById('dob').value;
            var email = document.getElementById('email').value;

            if (fname.trim() == "") {
                swal.fire("Fill First Name!");
            }
            else if (lname.trim() == "") {
                swal.fire("Fill Second Name!");
            }
            else if (age == "") {
                swal.fire("Enter ur Age!");
            }
            else if (phone.trim() == "") {
                swal.fire("Enter ur Phone Number!");
            }
            else if (dob == "") {
                swal.fire("Enter ur Date Of Birth!");
            }
            else if (email.trim() == "") {
                swal.fire("Enter ur Email!");
            }
            else {
                document.getElementById('Rname').value = fname;
                document.getElementById('Sname').value = lname;
                document.getElementById('Vga').value = age;
                document.getElementById('Call').value = phone;
                document.getElementById('Birth').value = dob;
                document.getElementById('Mail').value = email;
                $("#myModal").modal('show');
                 }
        }
    </script>
</body>
</html>
