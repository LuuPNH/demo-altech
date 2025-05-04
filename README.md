# My Messages

- This is demo project, development with basic source and cover happy case.
- I hope you verify only structure and code style
- Thank for reviewer. Best regards.

## Development information

- Device: Macbook Chip M2
- MacOS: 15.2 (24C101)
- Mobile device development: Iphone 16 Pro Max

## Getting Started

- Install FVM and use `fvm install` or install version flutter `3.29.3`

- Run `./run_build_runner.sh` to generate essential classes or use make file `make init`

# 🧠 Word Match Game

A fun Flutter game where players match English words with their French equivalents. This project demonstrates state management, custom widgets, and clean architecture principles in a playful setting.

## 🚀 Features

- 🎮 Interactive word-matching gameplay
- 🔄 Shuffle functionality
- 🧱 Modular architecture (Data, Domain, Presentation layers)
- 🧪 Easily extendable for drag-drop, scoring, or multiplayer

## 📦 Project Structure

```
lib/
├── features/
│   ├── word_match/
│   │   ├── data/
│   │   │   ├── models/
│   │   │   ├── repositories/
│   │   │   └── datasources/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── usecases/
│   │   │   └── repositories/
│   │   ├── presentation/
│   │   │   ├── screens/
│   │   │   ├── widgets/
│   │   │   └── state_management/
├── core/
│   ├── local_data/
│   ├── constants/
│   ├── network/
│   └── network/
└── main.dart
```