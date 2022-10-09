
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:planteco/auth_service.dart';
import 'inscription.dart';
import '../Navibar.dart';

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
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: NavStyle2(),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: HexColor("#85B86B"),
                ),
              ),
              ClipPath(
                clipper: NavStyle1(),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 90, 185, 93),
                    Color.fromARGB(255, 18, 123, 22)
                  ])),
                  child: Image.asset(
                    'images/fond.png',
                    fit: BoxFit.cover,
                    color: Colors.green.withOpacity(0.1),
                    colorBlendMode: BlendMode.modulate,
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  child: Image.asset('images/logorond.png',
                      width: 70, height: 70)),
            ],
          ),
          SizedBox(
            height: 450,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                const SizedBox(
                  child: Text(
                    "Connectez-vous",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Email",
                                hintText: 'Entrez votre email',
                                icon: Icon(
                                  Icons.mail,
                                  color: Colors.black87,
                                  size: 20,
                                )),
                            validator: (val) => val!.isEmpty
                                ? "Valider une adresse email"
                                : null,
                            onSaved: (val) => nameField = val!,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'Mot de passe',
                                hintText: 'Entrez votre mot de passe',
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.black87,
                                  size: 20,
                                )),
                            validator: (val) => val!.isEmpty
                                ? "Valider votre mot de passe"
                                : null,
                            onSaved: (val) => passField = val!,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            autocorrect: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //------------DIFFERENT BOUTON---------------//
                //CONNEXION
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    shape: const StadiumBorder(),
                    minimumSize: const Size(300, 60),
                    maximumSize: const Size(300, 60),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Navibar()),
                    );
                  },
                  child: const Text(
                    'Connexion',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        //fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),

                //OU
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: const Text(
                    "- ou -",
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 15),
                  ),
                ),

                //GOOGLE AUTHENTIFICATION
                SizedBox(
                  child: GoogleAuthButton(
                    onPressed: () {
                      // your implementation
                      setState(() {
                        AuthService().signInWithGoogle();
                      });
                    },
                    themeMode: ThemeMode.light,
                    isLoading: false,
                    style: const AuthButtonStyle(
                        borderRadius: 30,
                        padding: EdgeInsets.only(
                            bottom: 15, top: 15, left: 40, right: 40)),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                //DERNIER TEXTE
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Créer un compte?",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Inscription()),
                        );
                      },
                      child: Text(
                        "Inscrivez-vous",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class NavStyle1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(
        size.width / 4, size.height - 130, size.width / 2, size.height - 75);
    path.quadraticBezierTo(size.width - size.width / 4, size.height, size.width,
        size.height - 120);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class NavStyle2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 100, size.width / 2, size.height - 50);
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
