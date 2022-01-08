document.getElementById("btn").onclick = function(){
    var user=document.getElementById("emailORuser");
    var pass=document.getElementById("password");
    var admin_user="admin";
    var admin_pass="123";
    if((user==admin_user)&&(pass==admin_pass)){
        location.replace('/Views/User.jsp');
    }
    else{
        alert("Usuario o contraseña incorrecta");
    }
}