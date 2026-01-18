# smart_garage

```
lib/
│── core/
│── data/
│   │── datasources/
│   │── models/
│   │── repositories/
│── domain/
│   │── entities/
│   │── repositories/
│   │── usecases/
│── presentation/
│   │── bloc/
│   │── pages/
│   │── widgets/
│── main.dart
```

## Layer Definitions:

- **Presentation Layer**: Handles UI and user interactions (Widgets, ViewModels, Bloc).
- **Domain Layer**: Business logic (UseCases, Entities).
- **Data Layer**: API calls, local database, and repositories.

`dart run build_runner watch --delete-conflicting-outputs`
