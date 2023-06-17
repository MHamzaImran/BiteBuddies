# Flutter Food Ordering App (BiteBuddies)

This is a Flutter project for a food ordering app with a Firebase backend. The app allows users to browse food items, place orders, and manage their account. It incorporates various packages and features to provide a seamless and user-friendly experience.

## Packages Used

- **google_fonts**: Version 3.0.1 - Provides a collection of beautiful fonts for text styling.
- **fluttertoast**: Version 8.1.1 - Displays toast messages to provide feedback to users.
- **provider**: Version 6.0.5 - Implements the provider pattern for state management.
- **syncfusion_flutter_charts**: Version 20.4.53 - Enables the visualization of data through charts.
- **custom_top_navigator**: Version 0.0.3 - Custom navigation bar for easy screen switching.
- **image_picker**: Version 0.7.5+1 - Allows users to pick images from the device gallery or camera.
- **flutter_datetime_picker**: Version 1.5.1 - Displays date and time pickers for user input.
- **qr_flutter**: Version 4.0.0 - Generates QR codes for various purposes.
- **share_plus**: Version 6.3.4 - Adds sharing capabilities to the app.
- **path_provider**: Version 2.0.14 - Provides access to the device's file system.
- **qr_code_scanner**: Version 1.0.1 - Scans QR codes for processing.
- **card_loading**: Version 0.3.0 - Implements card-style loading animations.
- **flutter_paypal**: Version 0.0.8 - Integrates PayPal payment functionality.
- **dio**: Version 5.0.2 - A powerful HTTP client for making API requests.
- **shared_preferences**: Version 2.0.18 - Stores small amounts of data on the device.
- **flutter_phoenix**: Auto-restart the app after changes for a better development experience.


## Backend

The app utilizes Firebase as the backend for storing user-related data and implementing authentication functionality. Firebase offers a comprehensive suite of tools and services that simplify the development process and provide a scalable and reliable infrastructure.

### User Management

Firebase's Authentication feature enables secure user registration and login functionality. Users can create an account using their email and password or sign in using their existing credentials. The app utilizes Firebase Authentication to authenticate users and manage their sessions.

### Firestore Database

Firestore, the NoSQL cloud database provided by Firebase, is used to store user-related information, such as profile details. It offers real-time synchronization and offline support, ensuring that users' data remains up-to-date and accessible even when the device is offline.

The following aspects of user data are stored in Firestore:

#### Users Collection

The "users" collection contains documents representing each registered user. Each document contains the following fields:

- **User ID**: A unique identifier assigned to each user.
- **Name**: The user's name or username.
- **Email**: The user's email address.
- **Profile Picture**: An optional field to store the user's profile picture URL.

### Firebase Cloud Functions

Firebase Cloud Functions can be utilized for server-side logic and processing. While not explicitly mentioned, it can enhance the app by enabling additional functionality, such as order processing, notifications, and other backend operations.

## Screens

The app consists of the following screens:

### Splash Screen

The splash screen appears when the app is launched and provides a visually appealing entry point for users.

### Welcome Screen

The welcome screen greets users and provides an introduction to the app's features.

### Login and Register

The login and register screens enable users to create an account or log in using their credentials.

### Forget Password

The forget password screen allows users to reset their password if they have forgotten it.

### Home Screen

The home screen serves as the main hub for users, displaying various food items and categories.

### Latest Offers Screen

The latest offers screen showcases the app's current promotions and discounts.

### Item Details Screen

The item details screen provides a detailed view of a specific food item, including its description, price, and options.

### Menu

The menu screen displays a list of available food items and categories for users to explore.

### Profile

The profile screen allows users to manage their account information, including their name, email, and profile picture.

### More Screen

The more screen is a collection of additional features and options. It contains the following sub-screens:

- **Payment Details**: Users can add or manage their payment methods.
- **My Orders**: Displays a history of the user's past orders.
- **Notifications**: Shows notifications and updates from the app.
- **Inbox**: Handles user messages and communication.
- **About Us**: Provides information about the app or the company behind it.
- **FAQ**: Answers frequently asked questions.
- **Contact Us**: Offers a way for users to get in touch with support or customer service.


## Software Engineering Practices

### Solid State Principles

The SOLID principles, consisting of Single Responsibility, Open-Closed, Liskov Substitution, Interface Segregation, and Dependency Inversion, were diligently applied in the development of the Flutter Food Ordering App. By adhering to these principles, the codebase exhibits modular design, extensibility, and loose coupling, enabling easier maintenance, reusability of components, and promoting a robust and scalable architecture. These principles contribute to a clean and efficient codebase, enhancing the overall quality of the app.

### Code Reusability

The project emphasizes code reusability to reduce duplication and improve development efficiency. Reusable components, such as widgets, helper functions, and custom hooks, are employed throughout the app to promote modularity and facilitate code sharing.


## Conclusion

The Flutter Food Ordering App showcases the implementation of a food ordering platform using Flutter and Firebase. With its intuitive user interface, efficient state management, and integration with Firebase services, the app offers a seamless experience for users to browse food items, place orders, and manage their account.


## Firebase Integration In Android Studio

Check for keytool keyword interminal
Then run the below commands:
keytool -genkey -v -keystore debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000
keytool -list -v -keystore "C:\Users\hamza\debug.keystore" -alias androiddebugkey -storepass android -keypass androi
These commands will give the SHI Fingerprint Certificate

## Screenshots

