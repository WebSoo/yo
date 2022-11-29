const { TextInputComponent } = require("discord.js");

function somme(){
    var a = document.getElementById("inputOne").value;
    var b = document.getElementById("inputTwo").value;
    var c = Number(a) + Number(b);
result.innerText =c;
}
function soustraction(){
    var a = document.getElementById("inputOne").value;
    var b = document.getElementById("inputTwo").value;
var c = Number(a) - Number(b);
result.innerText =c;
}
function multiplication(){
    var a = document.getElementById("inputOne").value;
    var b = document.getElementById("inputTwo").value;
var c = Number(a) * Number(b);
result.innerText =c;
}
function division(){
    var a = document.getElementById("inputOne").value;
    var b = document.getElementById("inputTwo").value;
var c = Number(a) / Number(b);
result.innerText =c;
}
function pariter(){
    var v = Number(document.getElementById("inputOne").value);
    if (v % 2==0)
    result.innerText="Ce nombre est pair";
    else
    


}
function permute(){
    var v3 = ""
    a = document.getElementById("inputOne").value;
    b = document.getElementById("inputTwo").value;
    v3=a;
    a=b;
    b=v3;

    inputOne.value = a
    inputTwo.value = b
}
