function affichage_tableau()
{
   document.write("<table width=30% border=2px;>");

                for(i=0; i<=5; i++)

                {

                    document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")

                }

                document.write("</table>");

} 
function affichage_tableau2()
{
    var ligne = prompt("donner le nombre de ligne a afficher");
    document.write("<table width=30% border=2px;>");

                for(i=0; i<ligne; i++)

                {

                    document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")

                }

              document.write("</table>");

}
function connexion() {
    var c = prompt("votre identifiant");
    var d = prompt("votre mdp");

    if (c == "admin" && d == "admin") {
        document.write("Bienvenue");
    }
    else {
        alert("acces refusé");
    }
}
function fun_switch()
{
    var color = prompt("entrez une couleur");
}    
function chaine_caractère()
{
    var chaine= prompt ("donner un mot")
document.write(chaine.toUpperCase()+"<br>");
document.write(chaine.toLowerCase()+"<br>");
document.write("la chaine contient "+ chaine.length+" caractères <br>");
document.write("la première lettre est "+chaine.substr(0,1)+"<br>");
}
function chaine_caractère2()
{
{
    var chaine= prompt ("donnez un mot")
    document.write("<b> le mot saisie est : "+chaine.toLowerCase()+"<br></b>");
    document.write("il se compose de "+chaine.length+" caractères <br>");
    document.write("la premiere lettre est "+chaine.substr(0,1) +"<br>");
    document.write("la derniere lettre est "+chaine.substr(-1) +"<br>");
}
}
var nbClic=0;
function clic(){
    nbClic++;
    if (nbClic>=3){
        alert("perdu !!! \nVous avez cliqué " +nbClic+ "fois"); 
    }
}
function raz(){
    nbClic=0;
}