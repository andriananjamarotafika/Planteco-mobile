import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart'; //https://pub.dev/packages/nb_utils

class Inscription extends StatefulWidget {
  static String tag = '/DemoMWTextFormFieldScreen';

  const Inscription({Key? key}) : super(key: key);

  @override
  InscriptionState createState() => InscriptionState();
}

class InscriptionState extends State<Inscription> {
  var formKey = GlobalKey<FormState>();
  var autoValidate = false;

  var usernameCont = TextEditingController();
  var emailCont = TextEditingController();
  var phoneCont = TextEditingController();
  var addressCont = TextEditingController();
  var pinCont = TextEditingController();
  var pincCont = TextEditingController();


  var usernameFocus = FocusNode();
  var emailFocus = FocusNode();
  var phoneFocus = FocusNode();
  var addressFocus = FocusNode();
  var pinFocus = FocusNode();
  var pincFocus = FocusNode();


  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Inscription",
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Montserrat', fontSize: 30)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: usernameCont,
                    focusNode: usernameFocus,
                    style: const TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: appStore.iconColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: appStore.iconColor!),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide:
                            BorderSide(width: 1, color: appStore.iconColor!),
                      ),
                      labelText: 'Nom d\' utilisateur',
                      labelStyle: const TextStyle(fontSize: 16),
                    ),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.name,
                    validator: (s) {
                      if (s!.trim().isEmpty) return 'Usermame is required';
                      if (!s.trim().isAlpha()) return 'Username is not valid';
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: emailCont,
                    style: const TextStyle(fontSize: 16),
                    focusNode: emailFocus,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: appStore.iconColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: appStore.iconColor!),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(25.0),
                        borderSide:
                            BorderSide(width: 1, color: appStore.iconColor!),
                      ),
                      labelText: 'Email',
                      labelStyle: const TextStyle(fontSize: 16),
                    ),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    validator: (s) {
                      if (s!.trim().isEmpty) return 'Email est obligatoire';
                      if (!s.trim().validateEmail()) return 'Email invalide';
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: phoneCont,
                    focusNode: phoneFocus,
                    maxLength: 10,
                    style: const TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: appStore.iconColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appStore.iconColor!),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: appStore.iconColor!),
                      ),
                      counterStyle: secondaryTextStyle(),
                      labelText: 'Télephone',
                      labelStyle: const TextStyle(fontSize: 16),
                    ),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    validator: (s) {
                      if (s!.trim().isEmpty) {
                        return 'Le Numero télephone est obligatoire';
                      }
                      if (!s.trim().validatePhone()) {
                        return 'Numero télephone invalide ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                 
               
                  TextFormField(
                    controller: pinCont,
                    focusNode: pinFocus,
                    style: const TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: appStore.iconColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appStore.iconColor!),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: appStore.iconColor!),
                      ),
                      labelText: 'Mot de passe',
                      labelStyle: const TextStyle(fontSize: 16),
                    ),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    maxLength: 8,
                    validator: (s) {
                      if (s!.trim().isEmpty) return 'Mot de passe obligatoire';
                      if (!s.trim().isDigit()) return 'Mot de passe invalide';
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: pincCont,
                    focusNode: pincFocus,
                    style: const TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: appStore.iconColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: appStore.iconColor!),
                      ),
                      enabledBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(25.0),
                        borderSide:
                            BorderSide(width: 1, color: appStore.iconColor!),
                      ),
                      labelText: 'Répeter le mot de passe',
                      labelStyle: const TextStyle(fontSize: 16),
                    ),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    maxLength: 8,
                    validator: (r) {
                      if (r!.trim().isEmpty) return 'Mot de passe obligatoire';
                      if (!r.trim().isDigit()) return 'Mot de passe invalide';
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(

                    children: 
                      [
                        Theme(
                        data: ThemeData.light(),
                        child: MaterialButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Annuler', style: boldTextStyle(color: Colors.black)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Theme(
                        data: ThemeData.light(),
                        child: MaterialButton(
                          color: Colors.blue,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                            } else {
                              autoValidate = true;
                            }
                  
                            setState(() {});
                          },
                          child: Text('S\' inscrire', style: boldTextStyle(color: white)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

AppStore appStore = AppStore();

class AppStore {
  Color? textPrimaryColor;
  Color? iconColorPrimaryDark;
  Color? scaffoldBackground;
  Color? backgroundColor;
  Color? backgroundSecondaryColor;
  Color? appColorPrimaryLightColor;
  Color? textSecondaryColor;
  Color? appBarColor;
  Color? iconColor;
  Color? iconSecondaryColor;
  Color? cardColor;

  AppStore() {
    textPrimaryColor = Color(0xFF212121);
    iconColorPrimaryDark = Color(0xFF212121);
    scaffoldBackground = Color(0xFFEBF2F7);
    backgroundColor = Colors.black;
    backgroundSecondaryColor = Color(0xFF131d25);
    appColorPrimaryLightColor = Color(0xFFF9FAFF);
    textSecondaryColor = Color(0xFF5A5C5E);
    appBarColor = Colors.white;
    iconColor = Color(0xFF212121);
    iconSecondaryColor = Color(0xFFA8ABAD);
    cardColor = Color(0xFF191D36);
  }
}

