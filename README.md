# Cubit Counter App 🚀

This repository contains the source code for the tutorial **[Bloc Too Tough? Start with Cubit for a Smoother Ride!](https://medium.com/@tech.ramakant/bloc-too-tough-start-with-cubit-for-a-smoother-ride)** published on Medium. It demonstrates how to convert the default Flutter counter app to use **Cubit** state management, making state handling smoother and more scalable.


## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
- [Dependencies](#dependencies)
- [Code Overview](#code-overview)
- [License](#license)
- [Contribution Guidelines](#contribution-guidelines)
- [Contact](#contact)

Welcome to the **Cubit Counter App**! This project showcases how you can manage state in a Flutter application using **Cubit** from the **Bloc** package, a lightweight alternative to `setState()` that allows for better state management without the complexity of Bloc.

## Features
- 🛠 Built with **Flutter** and **Cubit**.
- 🚀 Easy to understand **counter functionality** demonstrating how Cubit works.
- 📈 Scalable state management compared to `setState()`.

## Getting Started

1. Clone this repository:
    ```bash
    git clone https://github.com/tech-ramakant/counter_app_with_cubit.git
    cd counter_app_with_cubit
    ```

2. Install the required dependencies:
    ```bash
    flutter pub get
    ```

3. Run the app:
    ```bash
    flutter run
    ```

## Dependencies

This app uses the following packages:

- **[flutter_bloc](https://pub.dev/packages/flutter_bloc)**: A predictable state management library that helps implement the Cubit pattern.
- **flutter**: The core framework for building natively compiled applications for mobile, web, and desktop.

To add these dependencies, ensure you have the following in your `pubspec.yaml`:

```yaml
dependencies:
   flutter:
      sdk: flutter
   flutter_bloc: ^8.0.0
```

## Code Overview

Here’s what we changed from the default Flutter counter app:

1. CounterCubit
   We created a CounterCubit class that extends Cubit<int>. This class contains logic to manage the counter state:

```dart
class CounterCubit extends Cubit<int> {
   CounterCubit() : super(0);

   void increment() => emit(state + 1);
}
```

2. BlocProvider
   We wrap the MyApp widget with BlocProvider, providing the CounterCubit to the entire app:

```dart
class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return BlocProvider(
         create: (_) => CounterCubit(),
         child: MaterialApp(
            home: MyHomePage(),
         ),
      );
   }
}
```

3. BlocBuilder
   We replaced the setState() logic with a BlocBuilder to automatically rebuild the UI when the state changes:

```dart
   BlocBuilder<CounterCubit, int>(
    builder: (context, count) {
     return Text('$count');
    },
  )
```

4. Increment Logic
   The increment button now directly interacts with the Cubit to update the state:

```dart
   FloatingActionButton(
    onPressed: () => context.read<CounterCubit>().increment(),
    tooltip: 'Increment',
    child: Icon(Icons.add),
  )
```

## License
This project is licensed under the MIT License. Feel free to use, modify, and distribute as needed.

For more details, check out the LICENSE file.

## Contribution Guidelines
Contributions are always welcome! If you'd like to contribute, feel free to submit a pull request or open an issue.

## Contact
- Email: [tech.ramakanttiwari@gmail.com](mailto:tech.ramakanttiwari@gmail.com)
- Medium: [@tech.ramakant](https://medium.com/@tech.ramakant)
- LinkedIn: [@tech-ramakant](https://www.linkedin.com/in/ramakant-tiwari-593479128)
- YouTube: [@Tech.Ramakant](https://www.youtube.com/@Tech.Ramakant)

Thank you for checking out the repository! 🎉
