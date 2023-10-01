import 'package:doctor_app_ui_tutorial/screens/doctor/widgets/item_schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              children: [
                const SizedBox(height: 50),
                SvgPicture.asset('assets/svg/doctor.svg', height: 220),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)
                    ),
                    color: Colors.white
                  ),
                )
              ],
            )
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          left: 0, right: 0,
                          child: Container(
                            height: 70, width: 70,
                            margin: const EdgeInsets.only(top: 10),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.indigo
                            ),
                          ),
                        ),
                        Image.asset('assets/images/doctor1.png', width: 80, height: 80)
                      ],
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Dr. Shahid Hussain', style: Theme.of(context).textTheme.titleLarge,),
                          Text('Heart Surgeon - Hadi Hospital', style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w300
                          )),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.indigo.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Icon(Icons.phone, color: Colors.indigo, size: 18),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Colors.amber.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Icon(Icons.message, color: Colors.amber, size: 18),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Icon(Icons.video_camera_back, color: Colors.deepOrangeAccent, size: 18),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('About Doctor', style: Theme.of(context).textTheme.titleLarge,),
                ),
                const Text(
                  'Dr. Shahid Hussain is the top most heart surgeon in Hadi hospital. He has done over 100 successful surgeries within past 3 years. He has achieved several awards for his wonderful contribution in his own field. He is available for private consultations for given schedules.',
                  style: TextStyle(fontWeight: FontWeight.w300, height: 1.5),
                ),
                const SizedBox(height: 15),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Upcoming Schedules', style: Theme.of(context).textTheme.titleLarge,),
                ),
                const Column(
                  children: [
                    ItemSchedule(day: '01', dayName: 'Sun', monthName: 'Oct', color: Colors.indigo),
                    ItemSchedule(day: '02', dayName: 'Mon', monthName: 'Oct', color: Colors.amber),
                    ItemSchedule(day: '03', dayName: 'Tue', monthName: 'Oct', color: Colors.brown),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
