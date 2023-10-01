import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const ItemCategory({Key? key, required this.title, required this.icon, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 120,
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(top: 15, right: 10, left: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).colorScheme.primary.withOpacity(.2),
                  spreadRadius: 5,
                  blurRadius: 5
                )
              ]
            ),
            child: Text(title, style: Theme.of(context).textTheme.titleMedium),
          ),
          Positioned(
            top: 0, right: 0,
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color
              ),
              child: Icon(icon, color: Colors.white, size: 40),
            ),
          )
        ],
      ),
    );
  }
}
