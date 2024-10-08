import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_apps/screens/home/UI/home.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(
        title: "From Main dart",
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //       title: const Text('Counter App')),
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         const Text('You have pushed the button this many times:'),
      //         Text('0', style: Theme.of(context).textTheme.headlineMedium)
      //       ],
      //     ),
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     tooltip: 'Increment',
      //     child: const Icon(Icons.add),
      //   ),
      // )
    );
  }
}
