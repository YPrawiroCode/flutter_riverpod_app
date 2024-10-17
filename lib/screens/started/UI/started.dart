import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_apps/screens/started/controller/difficulty_provider.dart';
import 'package:quiz_apps/utilities/color_palettes.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class StartedScreen extends ConsumerStatefulWidget {
  const StartedScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StartedScreenState();
}

// class ColorItem {
//   ColorItem(this.name, this.color);
//   final String name;
//   final Color color;
// }

class _StartedScreenState extends ConsumerState<StartedScreen> {
  final List<String> list = <String>['Easy', 'Normal', 'Hard', 'Extreme'];
  late String dropdownValue = list.first;

  // final List<ColorItem> list = [
  //   ColorItem("Easy", Colors.green),
  //   ColorItem("Normal", Colors.grey),
  //   ColorItem("Hard", Colors.red),
  //   ColorItem("Extreme", Colors.black)
  // ];
  // late ColorItem dropdownValue = list[0];

  @override
  Widget build(context) {
    return Center(
      child: Column(
        // mainAxisSize: MainAxisSize.,
        children: [
          const SizedBox(height: 50),
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
            width: 150,
            color: const Color.fromARGB(197, 103, 86, 255),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 85, right: 75),
            child: DropdownButton(
                isExpanded: true,
                icon: const Icon(Icons.arrow_drop_down_circle_sharp),
                elevation: 16,
                style: const TextStyle(
                    color: Color.fromARGB(255, 61, 98, 144),
                    fontWeight: FontWeight.bold),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),

                // items: list.map<DropdownMenuItem<ColorItem>>((ColorItem item) {
                //   return DropdownMenuItem<ColorItem>(
                //     value: item,
                //     child: Container(
                //         alignment: Alignment.center,
                //         // constraints: const BoxConstraints(minHeight: 100.0),
                //         child: Text(item.name)),
                //   );
                // }).toList(),

                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    onTap: () => value,
                    child: Center(
                        // alignment: Alignment.center,
                        // constraints: const BoxConstraints(minHeight: 50.0),
                        child: Text(value,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFF1E3046),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ))),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // setState(() => dropdownValue = value!);
                  ref.read(difficultyProvider.notifier).difficultyQuiz(value);
                },

                // onChanged: (ColorItem? value) {
                //    setState(() => dropdownValue = value!),
                //   // ref.read(difficultyProvider.notifier).difficultyQuiz(value);
                // },

                // onChanged: (String? value) {
                //   // dropdownValue = value!;
                //   setState(() {
                //     dropdownValue = value!;
                //   });
                //   print(dropdownValue);
                // },
                // value: ref.watch(difficultyProvider),
                value: ref.watch(difficultyProvider)
                // value: dropdownValue,
                ),
          ),
          const SizedBox(height: 50),
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
            onPressed: widget.startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFF6C1335),
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
