import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_apps/screens/counter/UI/counter.dart';
import 'package:quiz_apps/screens/counter/controller/counter_provider.dart';

class HomeFloatActionButton extends ConsumerWidget {
  const HomeFloatActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: "btnIncrement",
          onPressed: ref.read(counterProvider.notifier).increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          heroTag: "btnDecrease",
          onPressed: ref.read(counterProvider.notifier).decrease,
          tooltip: 'Decrease',
          child: const Icon(Icons.remove),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          heroTag: "btnNext",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CounterScreen()),
            );
          },
          tooltip: 'Next',
          child: const Icon(Icons.arrow_circle_right_outlined),
        ),
      ],
    );
  }
}
