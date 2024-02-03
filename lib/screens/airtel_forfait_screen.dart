import 'package:flutter/material.dart';
// import 'package:flutter_table/cell_alignments.dart';
// import 'package:flutter_table/cell_dimensions.dart';
// import 'package:flutter_table/table_sticky_headers.dart';

//Charging of components , fonctions
import '../components/drawer_component.dart';
import '../fonctions/airtel_forfait_fonctions.dart';

class AirtelForfaitScreen extends StatelessWidget {
  const AirtelForfaitScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Airtel forfaits',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      drawer: const DrawerComponent(),
      body: myAirtelForfaitBody(context),
    );
  }

  Widget myAirtelForfaitBody(BuildContext c) {
    return CustomScrollView(slivers: [
      SliverList(
        delegate: SliverChildListDelegate([
          //Presentation des forfaits disponibles
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Les forfaits disponibles',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(20, 2, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  //Presentation des forfaits appels
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Les forfaits appels',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                    //Boutons d'achats des forfaits appels
                    genererForfait(() {}, '5 min\t20 Mo', 200),
                    genererForfait(() {}, '7 min\t40 Mo', 500),
                    genererForfait(() {}, '6 min\t30 Mo', 250),
                  ],
                ),

                //Presentation des forfaits internets
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Les forfaits internets',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      )
    ]);
  }
}
