import 'package:flutter/material.dart';

class TurkishFlag extends StatefulWidget {
  const TurkishFlag({super.key});

  @override
  State<TurkishFlag> createState() => _TurkishFlagState();
}

class _TurkishFlagState extends State<TurkishFlag> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
          child: ListView(
            reverse: true,
        children: List.generate(10, (index) {
          double maxFlagWidth = width * 2 / 3;

          return turkishFlag(
            g: maxFlagWidth - (index * 25),
          );
        }),
      )),
    );
  }

  Widget turkishFlag({required double g}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Stack(
        children: [
          Container(
            width: g * 1.5,
            height: g,
            color: Colors.red,
          ),
          Positioned(
            top: 0.25 * g,
            left: 0.25 * g,
            child: Container(
              width: 0.5 * g,
              height: 0.5 * g,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: 0.3 * g,
            left: 0.3625 * g,
            child: Container(
              width: 0.4 * g,
              height: 0.4 * g,
              decoration: const BoxDecoration(
                  color: Colors.red, shape: BoxShape.circle),
            ),
          ),
          Positioned(
              left: 0.7 * g,
              top: 0.375 * g,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 0.25 * g,
              )),
        ],
      ),
    );
  }
}
