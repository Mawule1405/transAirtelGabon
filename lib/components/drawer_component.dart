import 'package:flutter/material.dart';

import '../screens/welcome_screen.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          //Drawer header
          const DrawerHeader(
            child: CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/logoRound.png'),
            ),
          ),

          //List of drawer fonctionality
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[

                
                //the profil
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: ListTile(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (c) => const WelcomeScreen())),
                    title: const Row(
                      children: <Widget>[
                        Icon(Icons.person),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Profil'),
                      ],
                    ),
                  ),
                ),

                //About
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: ListTile(
                    onTap: () {},
                    title: const Row(
                      children: <Widget>[
                        Icon(Icons.history),
                        SizedBox(
                          width: 20,
                        ),
                        Text('A propos'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
