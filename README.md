# Riverpod Counter App 🚀

This repository contains the source code for the tutorial **[State Management in Flutter: Unleashing the Power of Riverpod!](https://medium.com/@tech.ramakant/state-management-in-flutter-unleashing-the-power-of-riverpod-04069a6baf6b)** published on Medium. This code demonstrates how to manage state effectively in Flutter apps using the Riverpod package, making complex state management a breeze.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting started)
- [Dependencies](#dependencies)
- [Code Overview](#code overview)
- [License](#license)
- [Contribution Guidelines](#contribution guidelines)
- [Contact](#contact)

## Introduction

Welcome to the **Riverpod Counter App**! This is a simple Flutter application demonstrating state management using **Riverpod**, an alternative to the popular **Provider** package for managing state in Flutter apps.

## Features
- 🛠 Built with **Flutter** and **Riverpod**.
- 🚀 Simple **counter functionality** to demonstrate state management.
- 👀 Clean separation of logic and UI using `StateProvider` and `ConsumerWidget`.

## Getting Started

1. Clone this repository:
    ```bash
    git clone https://github.com/tech-ramakant/counter_app_with_riverpod.git
    cd counter_app_with_riverpod
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

- **[flutter_riverpod](https://pub.dev/packages/flutter_riverpod)**: The state management solution powering this app.
- **flutter**: The core framework for building natively compiled applications for mobile, web, and desktop.

To add these dependencies, ensure you have the following in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.0.0
```

## Code Overview

State Management
The state is managed by Riverpod's StateProvider. This ensures that the app remains performant and easy to manage, regardless of its size and complexity.

Here’s a quick breakdown of the main components:

1. counterProvider:
```dart
final counterProvider = StateProvider<int>((ref) => 0);
```

A simple state provider that initializes the counter to 0 and can be updated.

2. ConsumerWidget:
```dart
class CounterApp extends ConsumerWidget {
```

The ConsumerWidget allows the UI to listen for changes in the counterProvider and update accordingly.

3. UI Updates:
```dart
   final count = ref.watch(counterProvider);
```

This line allows the widget to reactively display the current state of the counter.

4. Updating State:
```dart
   ref.read(counterProvider.notifier).state++;
```

This method increments the counter by updating the provider's state.

## License
This project is licensed under the MIT License. Feel free to use, modify, and distribute as needed.

For more details, check out the LICENSE file.

## Contribution Guidelines
Contributions are always welcome! If you'd like to contribute, feel free to submit a pull request or open an issue.

Contact 📬
- Email: [tech.ramakanttiwari@gmail.com](mailto:tech.ramakanttiwari@gmail.com)
- Medium: [@tech.ramakant](https://medium.com/@tech.ramakant)
- LinkedIn: [@tech-ramakant](https://www.linkedin.com/in/ramakant-tiwari-593479128)
- YouTube: [@Tech.Ramakant](https://www.youtube.com/@Tech.Ramakant)

Thank you for checking out the repository! 🎉
