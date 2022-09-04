import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          child: Column(
            children: [
              Image.asset('images/logo.png',width: 200,height: 200,),
              const SizedBox(height: 10,),
              Container(
                width: 150,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius : BorderRadius.circular(100),
                ),
                child : const LinearProgressIndicator(
                  color: Colors.green,
                  backgroundColor: Color.fromARGB(255, 225, 225, 225),
                  
                ),
              )
            ],
          ),
        ),
      ),
      );
  }
}