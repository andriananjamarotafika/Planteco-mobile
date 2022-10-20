// ignore_for_file: avoid_print

import 'dart:ffi';

class LinkBluetooth{
  static final LinkBluetooth _instance = LinkBluetooth._internal();

  factory LinkBluetooth() {
    return _instance;
  }

  // ignore: non_constant_identifier_names
  late String valeur_recu;
  // ignore: non_constant_identifier_names
  late String valeur_recu_accueil;
   late bool valeur_validate;

  LinkBluetooth._internal() {
    // initialization logic 
    valeur_recu = "";
    valeur_recu_accueil = "";
    valeur_validate =false;
  }

  void affiche(String text){
    valeur_recu = text;
    print( valeur_recu);
    valeur_recu_accueil = valeur_recu;
  }

  void activeLumiere(bool text){
    print( "Lum,$text");
    //valeur_recu_accueil = valeur_recu;
  }

  void activeEau(bool text){
    print( "Eau,$text");
    //valeur_recu_accueil = valeur_recu;
  }

    void activeFen(bool text){
    print( "Fen,$text");
    //valeur_recu_accueil = valeur_recu;
  }

    void activePorte(bool text){
    print( "Porte,$text");
    //valeur_recu_accueil = valeur_recu;
  }


  void sendData(){
    
  }
}