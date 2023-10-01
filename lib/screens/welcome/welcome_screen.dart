import 'package:doctor_app_ui_tutorial/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Choose Your Desired Doctor You Want', style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                )),
                const SizedBox(height: 10),
                const Text(
                  'If you are looking for an expert doctor for your treatment then you are at the right place. Here you can find your desired doctor and discuss your issues with him/her.',
                  style: TextStyle(fontWeight: FontWeight.w300, height: 1.5),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white
                  ),
                  child: const Text('Get Started'),
                ),
              ],
            ),
          ),
          Expanded(
            child: SvgPicture.asset('assets/svg/welcome.svg'),
          ),
        ],
      ),
    );
  }
}
