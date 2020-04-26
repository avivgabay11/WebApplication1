
function validate() {

    var userNameOk = validateUserName();
    var pswOk = validatePassword();
    var firstnOK = validatefirstName();
    var lastnOK = validatelastName();
    var emailOK = validateEmail();
    // return userNameOk && pswOk && firstnOK && lastnOK && emailOK;
    return userNameOk && pswOk && firstnOK && lastnOK && emailOK;


}

function validateUserName() {
    var username = document.getElementById("username");
    if (username.value.length * 1 < 4) {

        username.style.borderColor = "red";
        var error = document.getElementById("userNameErr");
        error.innerText = "Username must to be longer than 4 letters";
       
        return false;
    }
    return true;
}


function validatePassword() {
    var password = document.getElementById("password").value;

    if (password.length * 1 < 6) {

        document.getElementById("PasswordErr").innerText = "Password must to be longer than 5 letters";

        return false;
    }
    return true;

}


function validatefirstName() {
    var firstName = document.getElementById("firstname").value;

    if (firstName.length * 1 < 1) {

        document.getElementById("firstNameErr").innerText =  "First Name must to be longer than 1 letters";

        return false;
    }
    return true;
}


function validatelastName() {
    var lastName = document.getElementById("lastname").value;

    if (lastName.length * 1 < 1) {

        document.getElementById("lastNameErr").innerText = "Last Name must to be longer than 1 letters";

        return false;
    }
    return true;
}


function validateEmail() {
    var email = document.getElementById("email");
    var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (!emailPattern.test(email.value)) {

        document.getElementById("emailErr").innerText = "email address is not legal!";
        return false;
    }
    return true;
}







function Logout() {
    var uName = '<%= Session["LoggedIn"]%>'
    if (uName != null && uName != "") {
        if (document.getElementById("Login").innerHTML == "uName") {
            document.getElementById("Login").href = "Login.aspx";
            document.getElementById("Login").innerHTML = "Login";
        }
        else {
            document.getElementById("Login").href = "Logout.aspx";
            document.getElementById("Login").innerHTML = "uName"
        }
    }
}
