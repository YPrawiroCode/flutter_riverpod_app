import 'package:flutter/material.dart';
import 'package:quiz_apps/utilities/color_palettes.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Welcome To Clash Of Brain',
              style: TextStyle(
                color: Color(0xFF1E3046),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 10),
          const Text('Select Your Class',
              style: TextStyle(
                color: Color(0xFF1E3046),
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              )),
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/cob_logo.png',
            width: 200,
            // color: const Color.fromARGB(150, 255, 255, 255),
            color: const Color.fromARGB(197, 103, 86, 255),
          ),
          const SizedBox(height: 80),
          const Text('Learn Flutter the fun way!',
              style: TextStyle(
                color: Color(0xFF1E3046),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )
              // style: GoogleFonts.lato(
              //   color: const Color.fromARGB(255, 255, 228, 228),
              //   fontSize: 24,
              // ),
              ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Color(0xFF6C1335),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: Styles.buttonTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
