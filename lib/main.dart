import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Step 3: Create a StateProvider for counter or you can keep it in separate class
final counterProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterApp(),
    );
  }
}

// Step 4: Build a ConsumerWidget to interact with the counterProvider
class CounterApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the counterProvider to get the current counter value
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Riverpod Counter")),
      body: Center(
        child: Text(
          '$count',
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Update the counterProvider's state when button is pressed
        onPressed: () => ref.read(counterProvider.notifier).state++,
        child: Icon(Icons.add),
      ),
    );
  }
}
