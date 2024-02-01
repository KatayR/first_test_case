# Some Totally Random Participants App 

## Overview
This Test Case App is a mobile application built with Flutter and Dart, utilizing the Riverpod package for state management. The app demonstrates the implementation of a basic authentication flow and a list display feature, pulling data from an API.

## Features
- **User Authentication**: Users can log in with their credentials. The app checks the credentials against a predefined API and navigates to the main screen upon successful authentication.
- **Participants List**: After logging in, the app fetches and displays a list of participants from an API. Each participant's details are shown in a neatly formatted list.
- **State Management**: The app uses Riverpod for managing the state, making it robust and scalable.
- **Form Validation**: Implemented custom form validation for the login screen to ensure data integrity.
- **Error Handling**: The app handles potential errors gracefully, including network errors and invalid login attempts.

## Architecture
The app follows a modified MVC (Model-View-Controller) architecture:
- **Model**: Represents the data structure (User and Participant models).
- **View**: Flutter widgets that render the UI (Login and Participants screens).
- **Controller**: Business logic (AuthController and ParticipantsController).
- **Providers**: Riverpod providers for managing and accessing state.

## Project Structure
- `lib/main.dart`: The entry point of the application.
- `lib/models/`: Data models.
- `lib/views/`: Screens and UI components.
- `lib/controllers/`: Business logic.
- `lib/providers/`: State management with Riverpod.
- `lib/services/`: API and network services.
- `lib/utils/`: Utility functions and constants.

## Setup and Run
- **Requirements**: Flutter SDK, Dart, and an emulator or mobile device.
- **Installation**: Clone the repository, navigate to the project directory, and run `flutter pub get` to fetch the dependencies.
- **Running the App**: Execute `flutter run` in the terminal.

## Dependencies
- `flutter_riverpod`: For state management.
- `http`: To make HTTP requests.
- `shared_preferences`: For local storage.
- `form_field_validator`: For form validation.

Yes, I used chatgpt to write most of this readme file buuut why waste time on unchallenging tasks while you can focus on some brain tickling problems?