import 'package:flutter/material.dart';

Widget genererForfait(executedFonction, String forfait, int prix) {
  return Container(
    color: Colors.red,
    margin: const EdgeInsets.only(top: 20),
    child: ElevatedButton(
      onPressed: executedFonction,
      child: Column(
        children: [
          Text(
            forfait,
            style: const TextStyle(color: Colors.blue),
          ),
          Text(
            '$prix XFA',
            style: const TextStyle(color: Colors.red),
          ),
        ],
      ),
    ),
  );
}
