# Flutter Project Structure

A Flutter project template demonstrating a **Domain-Driven Design (DDD)** architecture with **Provider** for state management. This repository provides a clean, scalable, and maintainable structure for building Flutter applications, suitable for small to medium-sized projects.

## Table of Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Folder Structure](#folder-structure)
- [Setup and Installation](#setup-and-installation)
- [Dependencies](#dependencies)
- [Usage](#usage)
- [Contributing](#contributing)
- [Contact](#contact)

## Overview

This project is a boilerplate for Flutter applications, implementing a **DDD** architecture to separate business logic, data access, and presentation layers. It uses **Provider** for lightweight state management, making it ideal for developers who want a simple yet robust structure without the complexity of BLoC or other heavy state management solutions.

The project includes example features:

- **User Login**: Authenticate users via a mock API.
- **Product Listing**: Fetch and display a list of products.

## Architecture

The project follows a **Domain-Driven Design (DDD)** approach, organized into three main layers:

1. **Domain Layer**:

   - Contains core business logic, independent of any framework.
   - Includes:
     - **Entities**: Immutable business objects (e.g., `User`, `Product`).
     - **Repositories**: Abstract interfaces for data access.
     - **Use Cases**: Business rules and operations (e.g., `Login`, `GetProducts`).
   - Ensures business logic is testable and reusable.

2. **Infrastructure Layer**:

   - Implements the details of data access and external services.
   - Includes:
     - **Data Sources**: Handle API calls or local storage (e.g., `UserRemoteDataSource`).
     - **Repositories**: Concrete implementations of repository interfaces.
     - **Models**: Data transfer objects for mapping API responses to entities.

3. ## **Presentation Layer**:

   - Manages the UI and state management using **Provider**.
   - Includes:
     - **Pages**: UI screens (e.g., `LoginPage`, `ProductListPage`).
     - **Widgets**: Reusable UI components.
     - **Providers**: Manage app state and notify UI of changes (e.g., `AppProvider`).

**Provider** is used for state management, providing a simple way to propagate data and state changes to the UI. Dependency injection is handled with **get_it** to ensure loose coupling between layers.

## Folder Structure

```
lib/
├── core/                     # Shared utilities and configurations
│   ├── error/                # Error handling (exceptions, failures)
│   ├── usecases/             # Base use case
│   └── utils/                # Common utilities (e.g., logger)
├── domain/                   # Business logic (DDD core)
│   ├── entities/             # Business entities (User, Product)
│   ├── repositories/         # Repository interfaces
│   └── usecases/             # Business use cases (Login, GetProducts)
├── infrastructure/           # Data access and external services
│   ├── datasources/          # API or local data sources
│   ├── repositories/         # Repository implementations
│   └── models/               # Data models for API mapping
├── presentation/             # UI and state management
│   ├── pages/                # Screen widgets
│   ├── widgets/              # Reusable UI components
│   └── providers/            # Provider for state management
├── injection_container.dart  # Dependency injection setup
├── main.dart                 # App entry point
└── routes/                   # Navigation configuration
```

## Setup and Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/nghiemledo/flutter-project-structure.git
   cd flutter-project-structure
   ```

2. **Install dependencies**:

   ```bash
   flutter pub get
   ```

3. **Initialize dependency injection**:
   Ensure `injection_container.dart` is configured. Run:

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

   (If using code generation for DI, e.g., with `injectable`).

4. **Run the app**:
   ```bash
   flutter run
   ```

Ensure you have Flutter and Dart installed. See the [Flutter installation guide](https://flutter.dev/docs/get-started/install) for details.

## Dependencies

The project uses the following packages:

- `provider`: For state management.
- `http`: For API calls.
- `dartz`: For functional programming (Either type for error handling).
- `get_it`: For dependency injection.

Check `pubspec.yaml` for the full list:

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.5
  http: ^0.13.5
  dartz: ^0.10.1
  get_it: ^7.2.0
```

## Usage

1. **Login Feature**:

   - Navigate to `LoginPage` to enter email and password.
   - The `AppProvider` handles authentication via a mock API.
   - Success or error messages are displayed based on the response.

2. **Product Listing**:
   - Navigate to `ProductListPage` to fetch and display products.
   - Use the refresh button to trigger the `GetProducts` use case.

To add new features:

1. Define new entities and use cases in `domain/`.
2. Implement data sources and repositories in `infrastructure/`.
3. Update `AppProvider` in `presentation/providers/` to handle new state.
4. Create new pages or widgets in `presentation/`.

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit (`git commit -m 'Add your feature'`).
4. Push to your branch (`git push origin feature/your-feature`).
5. Open a pull request.

Please ensure your code follows the project's style and includes tests where applicable.

## Contact

If you have any questions, feel free to reach out:

- Nghiem Le Do - [nghiemledo@gmail.com](mailto:nghiemledo@gmail.com)
