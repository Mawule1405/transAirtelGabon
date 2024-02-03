import 'package:flutter/material.dart';

//Charging of screens and components
import '../components/drawer_component.dart';
import '../screens/airtel_forfait_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Accueil',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      drawer: const DrawerComponent(),
      body: _welcomeBody(context),
    );
  }

  Widget _welcomeBody(BuildContext c) {
    double widthScreen = MediaQuery.of(c).size.width;
    // double heightScreen = MediaQuery.of(c).size.height;
    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      child: CustomScrollView(slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          //Airtels forfaits
          ListTile(
            onTap: () => Navigator.push(c,
                MaterialPageRoute(builder: (c) => const AirtelForfaitScreen())),
            title: Card(
              color: Colors.red,
              child: Column(
                children: [
                  Icon(
                    Icons.payment,
                    size: widthScreen / 2,
                    color: Colors.white,
                  ),
                  Text(
                    'Airtel Forfaits',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontSize: widthScreen / 10),
                  ),
                ],
              ),
            ),
          ),

          //Do Airtel Money transactions
          ListTile(
            onTap: () {},
            title: Card(
              color: Colors.red,
              child: Column(
                children: [
                  Icon(
                    Icons.money,
                    size: widthScreen / 2,
                    color: Colors.white,
                  ),
                  Text(
                    "Airtel Money",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontSize: widthScreen / 10),
                  ),
                ],
              ),
            ),
          ),
        ]))
      ]),
    );
  }
}
