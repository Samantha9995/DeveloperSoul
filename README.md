# Developer Soul

This Flutter project is a simple quiz application designed to test your knowledge and determine your "programmer soul type." It features a clean UI with a start screen, question screen, and a results screen that provides a personalized assessment based on your answers.

This project is deployed on GitHub Pages and can be accessed at (https://samantha9995.github.io/DeveloperSoul/).

## Features

*   **Interactive Quiz:** Engaging quiz format with multiple-choice questions.
*   **Dynamic UI:** Utilizes Flutter's widgets to create a responsive and visually appealing interface.
*   **Personalized Results:** Provides a unique "programmer soul type" based on the quiz results.
*   **About Page:** Includes an "About the developer" section accessible via a popup menu.

## Technologies Used

*   **Flutter**
*   **Dart**

## State Management

This project primarily uses `StatefulWidget` and `setState` for state management. 

## Project Structure
```
developersoul/ 
├── lib/
│ ├── data/ 
│ │ └── question.dart 
│ ├── models/ 
│ │ └── answer_type.dart
│ │ └── quiz_question.dart
│ ├── question_screen.dart 
│ ├── quiz.dart
│ └── results_screen.dart  
│ ├── main.dart
│ ├── main_quiz.dart 
│ ├── answer_button.dart 
├── assets/ 
│ └── images/ 
│ │ └──quiz-logo.png 
│ │ └──github-icon.png 
├── pubspec.yaml  
└── README.md
```

## Dependencies

*   **flutter:**  Flutter SDK.
*   **google\_fonts:** For using custom fonts (Lato).

## Installation

1.  **Clone the repository:**

    ```bash
    git clone git@github.com:Samantha9995/DeveloperSoul.git
    cd developer_soul
    ```

2.  **Install dependencies:**

    ```bash
    flutter pub get
    ```

3.  **Run the app:**

    ```bash
    flutter run
    ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

Apache License Version 2.0

## Copyright

Copyright (c) 2025 SADev. All rights reserved.