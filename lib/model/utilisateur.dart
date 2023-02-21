import 'package:flutter/material.dart';

import '../librairie/global.dart';

class Utilisateur {
// Attributs
late String id;
late String nom;
late String prenom;
late String mail;
late String avatar;
late DateTime birthday;
late Genre sexe ;

String nomComplet(){
  return prenom +" "+ nom;
}


// Constructeur:

Utilisateur(){

}

Utilisateur.empty(){
  id = "";
  nom= "";
  prenom= "";
  mail= "";
  avatar= defaultImage;
  birthday= DateTime.now();
  sexe= Genre.homme;
}




// méthode

// convertir le Genre en String :

String convertirGenreEnString(){
  switch (this.sexe){
    case Genre.homme: return "Homme";
    case Genre.femme: return "Femme";
    case Genre.other: return "Other";
  }
}

Genre convertirStringEnGenre(String variable){
  switch(variable){
    case "Homme": return Genre.homme;
    case "Femme": return Genre.femme;
    case "Other": return Genre.other;
    default: return Genre.other;
  }
}

}