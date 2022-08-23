
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

//import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String val = "";
  String nameField = "";
  String passField = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          width: 300,
          height: 600,
          // color: Colors.blue,
          padding: const EdgeInsets.only(top: 70),
          child: Expanded(
            child: Column(
              children: [
                const Text(
                  "Connectez-vous",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Entrez votre email',
                      icon: Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Icon(
                          Icons.mail,
                          color: Colors.black87,
                          size: 25,
                        ),
                      )),
                  validator: (val) =>
                      val!.isEmpty ? "Valider une adresse email" : null,
                  onSaved: (val) => nameField = val!,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: true,
                  autofocus: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Mot de passe',
                      hintText: 'Entrez votre mot de passe',
                      icon: Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black87,
                          size: 25,
                        ),
                      )),
                  validator: (val) =>
                      val!.isEmpty ? "Valider votre mot de passe" : null,
                  onSaved: (val) => passField = val!,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  autocorrect: true,
                  autofocus: true,
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueAccent,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    child: const Text(
                      'Connexion',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  height: 50,
                  child: const Text(
                    "- ou -",
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 15),
                  ),
                ),
                Container(
                  width: 300,
                  height: 75,
                  child: GoogleAuthButton(
                    onPressed: () {
                      // your implementation
                      setState(() {});
                    },
                    themeMode: ThemeMode.light,
                    isLoading: false,
                    style: const AuthButtonStyle(
                        margin: EdgeInsets.only(bottom: 18),
                        borderRadius: 50,
                        padding: EdgeInsets.only(
                            bottom: 10, top: 10, left: 25, right: 25)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Créer un compte?",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Inscrivez-vous",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
