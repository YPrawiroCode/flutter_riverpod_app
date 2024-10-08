import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_apps/screens/counter/controller/counter_provider.dart';
import 'package:quiz_apps/screens/started/UI/started.dart';
import 'package:quiz_apps/utilities/color_palettes.dart';
import 'package:quiz_apps/widgets/buttons/home_float_action.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key, this.title});

  final String? title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomeState();
}

class _MyHomeState extends ConsumerState<HomeScreen> {
  var activeScreen = 'start-screen';
  // List<String> selectedAnswer = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    // final counter = ref.watch(counterProvider);
    Widget screenWidget = StartedScreen(switchScreen);
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //     // title: title != null ? Text(title!) : const Text("Home Screen")),
        //     title: Text(title!)),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorPallete.deepColor1, ColorPallete.deepColor2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       const Text(
        //         'You have pushed the button this many times:',
        //       ),
        //       Text(
        //         '$counter',
        //         style: Theme.of(context).textTheme.headlineMedium,
        //       ),
        //     ],
        //   ),
        // ),
        // floatingActionButton: const Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     HomeFloatActionButton(),
        //   ],
        // ),
      ),
    );
  }
}
