import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class trainingList extends StatefulWidget {
  const trainingList({Key? key}) : super(key: key);


  @override
  _trainingListState createState() => _trainingListState();
}

class _trainingListState extends State<trainingList> {
  List <String> nom = ["heriniaina","hobilalaina","Hasina"];
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('View Listview Animation'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SlideAnimation4()),
            );
          },
        ),
      ),
    );
  }
}

class SlideAnimation4 extends StatelessWidget {
  const SlideAnimation4({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final Page entry;
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Go Back"),
        centerTitle: true,
        // brightness: Brightness.dark,
      ),
      body: AnimationLimiter(
        child: ListView.builder(  
          padding: EdgeInsets.all(_w / 30),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: const Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: const Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FadeInAnimation(
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: const Duration(milliseconds: 2500),
                  child: Container(
                    margin: EdgeInsets.only(bottom: _w / 20),
                    height: _w / 4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



