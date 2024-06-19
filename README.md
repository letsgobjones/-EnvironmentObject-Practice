
# EnvironmentObjectPractice: SwiftUI Global State Management

This project demonstrates how to use `EnvironmentObject` for global state management in SwiftUI applications. 

## Key Features

* **Global State Sharing**: Effectively shares a boolean state (`isON`) across multiple views in the view hierarchy.
* **ObservableObject (AppState)**:  Creates a class that conforms to `ObservableObject` to hold and publish the shared state.
* **@Published Property (`isON`)**: Uses the `@Published` property wrapper to mark the shared state as observable, triggering UI updates when it changes.
* **EnvironmentObject Injection**:  Injects the `AppState` instance into the environment at the root of the app.
* **@EnvironmentObject Access**: Retrieves the `AppState` instance in different views to access and modify the shared state.

## Techniques Used

* **EnvironmentObject**:  The core mechanism for making state globally accessible in SwiftUI.
* **ObservableObject**: The protocol used for classes that hold observable state.
* **@Published**: Property wrapper that marks a property as published for observation.
* **View Composition**: Divides the UI into reusable components (`LightBulbView`, `LightRoomView`, `ContentView`).
* **Conditional Rendering**: Dynamically updates the light bulb's appearance and the background color based on the global state.

## Code Structure

* `AppState.swift`: Contains the `AppState` class that holds the global `isON` state.
* `LightBulbView.swift`: A reusable view for a light bulb that can be toggled on and off.
* `LightRoomView.swift`: A container view for the `LightBulbView`.
* `ContentView.swift`: The main view that sets up the environment and displays the light room.

## How it Works

1. The `App` creates an instance of `AppState` and injects it into the environment using `.environmentObject(appState)`.
2. `ContentView`, `LightRoomView`, and `LightBulbView` all declare an `@EnvironmentObject` property of type `AppState` to access the shared state.
3. The `LightBulbView` displays the light bulb and a toggle button.
4. When the toggle button is tapped, the `LightBulbView` modifies the `isON` property of the `AppState` object.
5. Because `isON` is marked with `@Published`, all views observing `AppState` (including `ContentView` and `LightBulbView`) are notified of the change and update their UI accordingly.

## Benefits of Using EnvironmentObject

* **Simplified State Management**: Eliminates the need to pass state manually through multiple views.
* **Centralized Control**: Allows you to manage global state in a single place.
* **Automatic Updates**: Ensures that views are automatically updated when the global state changes.


