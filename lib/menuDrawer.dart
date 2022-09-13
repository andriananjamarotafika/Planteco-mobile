import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 20,),
          SizedBox(
            height: 150,
            child: Container(
              padding: EdgeInsets.all(20),
                // ignore: prefer_const_constructors
              child: CircleAvatar(
              backgroundColor: Colors.black,
              child: const Text(
                'AH',
                style: TextStyle(color: Colors.white),
              ),
            )),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.only(left: 30),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: ListTile(
              leading: const Icon(
                Icons.help,
                size: 30,
                color: Colors.black,
              ),
              title: const Text(
                'Aides',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.only(left: 30),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: ListTile(
              leading: const Icon(
                Icons.language,
                size: 30,
                color: Colors.black,
              ),
              title: const Text(
                'Langues',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.only(left: 30),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: ListTile(
              leading: const Icon(
                Icons.call,
                size: 30,
                color: Colors.black,
              ),
              title: const Text(
                'Contacts',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.only(left: 30),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: ListTile(
              leading: const Icon(
                Icons.account_box_rounded,
                size: 30,
                color: Colors.black,
              ),
              title: const Text(
                'A propos',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.only(left: 30),
            height: 70,
            decoration: BoxDecoration(
              color: Color.fromARGB(190, 244, 67, 54),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: ListTile(
              leading: const Icon(
                Icons.logout_outlined,
                size: 30,
                color: Colors.white,
              ),
              title: const Text(
                'Quitter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                ),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
