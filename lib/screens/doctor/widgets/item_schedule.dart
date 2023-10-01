import 'package:flutter/material.dart';

class ItemSchedule extends StatelessWidget {
  final String day, dayName, monthName;
  final Color color;
  const ItemSchedule({Key? key, required this.day, required this.dayName, required this.monthName, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: color.withOpacity(.2)
            ),
            child: Column(
              children: [
                Text(day, style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold
                ),),
                Text(monthName, style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: color
                ),)
              ],
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Consultation', style: Theme.of(context).textTheme.titleMedium),
                Text('$dayName 9am - 11am', style: const TextStyle(fontWeight: FontWeight.w300))
              ],
            ),
          )
        ],
      ),
    );
  }
}
