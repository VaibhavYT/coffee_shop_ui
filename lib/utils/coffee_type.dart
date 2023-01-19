// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_label

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeType extends StatelessWidget {
  // const CoffeType({super.key});
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;

  CoffeeType({
    required this.coffeeType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Text(
          coffeeType,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 18,
            // fontFamily: GoogleFonts.lato(),
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.amber[900] :  Colors.white,
          ),
        ),
      ),
    );
  }
}
