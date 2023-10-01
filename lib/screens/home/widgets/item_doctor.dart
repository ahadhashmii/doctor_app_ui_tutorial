import 'package:doctor_app_ui_tutorial/screens/doctor/doctor_screen.dart';
import 'package:flutter/material.dart';

class ItemDoctor extends StatelessWidget {
  final String title, subtitle, image;
  final Color color;
  const ItemDoctor({Key? key, required this.title, required this.subtitle, required this.image, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => const DoctorScreen()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        margin: const EdgeInsets.symmetric(vertical: 10),
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
        child: Row(
          children: [
            Stack(
              children: [
                Positioned(
                  left: 0, right: 0,
                  child: Container(
                    height: 50, width: 50,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color
                    ),
                  ),
                ),
                Image.asset(image, width: 60, height: 60)
              ],
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleMedium,),
                  Text(subtitle, style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w300
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
