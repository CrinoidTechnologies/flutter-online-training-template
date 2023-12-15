## Table of Contents
1. [General Info](#general-info)
2. [Screenshots](#screenshots)
3. [Features](#features)
4. [Architecture Layers](#architecture-layers)
5. [Design Resources](#design-resources)
6. [Folder Structure](#folder-structure)
7. [Test Cases](#test-cases)
8. [Installation Instructions](#installation-instructions)
9. [Security](#security)
10. [Performance](#performance)
11. [Technologies](#technologies)

### General Info
***
# Online Training Template
This is a template project which basically explores list of courses & there details. 
A UI interface to view course full details is also implemented.
Following is the list of some modules included in this project.

1. Home
2. Course Details

### Screenshots
***

| `Light Mode`                              |
| Login Page                                |Signup Page                                 | Home Page                           | Course Details Page                     
| -----------                               |---------                                   | -----------                         | -----------------              
| ![](/screenshots/login_page.png)          | ![](/screenshots/signup_page.png)          | ![](/screenshots/home.png)          | ![](/screenshots/course_details.png) 

| `Dark Mode`                               |
| Login Page                                |Signup Page                                 | Home Page                           | Course Details Page                     
| -----------                               |---------                                   | -----------                         | -----------------              
| ![](/screenshots/login_page_drk.png)      | ![](/screenshots/signup_page_drk.png)      | ![](/screenshots/home_drk.png)      | ![](/screenshots/course_details_drk.png)



### Features
***

This project is build to Showcase following things implemented in this project.

1. Transition animations.
2. Basic code structure.
3. Localisation.


### Architecture Layers
***
## 1. Clean Architecture
Clean architecture promotes separation of concerns, making the code loosely coupled. This results in a more testable and flexible code.

![](/screenshots/onboarding.png)

The core principles of the clean approach can be summarized as follows:

    1. The application code is separated into layers inside the code base.
    2. The layers follow a strict dependency rule, they can only interact 
    with the layers below it.
    3. As we move toward the bottom layer — the code becomes generic -
    The bottom layers dictate policies and rules, and the upper layers dictate implementation
    details such as the database, networking manager, and UI.

The 3 modules of architecture are:

    * Presentation: Layer with the Android Framework, the MVVM pattern and the DI module. 
    Depends on the domain to access the use cases and on di, to inject dependencies.
    * Domain: Layer with the business logic. Contains the use cases, in charge of calling 
    the correct repository or data member.
    * Data: Layer with the responsibility of selecting the proper data source for the domain layer.
    It contains the implementations of the repositories declared in the domain layer.
    It may, for example, check if the data in a database is up to date, and retrieve it 
    from the service if it’s not.


### Design Resources
***

Here are some design resources used for creating the designs for this template.

1. (https://uizard.io/templates/mobile-app-templates/flight-ticket-mobile-app/)
2. (https://uizard.io/templates/mobile-app-templates/event-booking-mobile-app/)

### Folder Structure
***

```
.
├── app
│   └── di
│       └── dependency_injection.dart
├── generated
│   ├── intl
│   │   ├── messages_all.dart
│   │   └── messages_en_US.dart
│   └── l10n.dart
├── l10n
│   └── intl_en_US.arb
├── main.dart
├── modules
│   ├── course_details
│   │   ├── domain
│   │   │   └── entities
│   │   └── presentation
│   │       ├── bindings
│   │       │   └── course_info_binding.dart
│   │       ├── pages
│   │       │   └── course_info_page.dart
│   │       └── widgets
│   ├── home
│   │   ├── domain
│   │   │   └── entities
│   │   │       └── category_entity.dart
│   │   └── presentation
│   │       ├── bindings
│   │       │   └── home_binding.dart
│   │       ├── pages
│   │       │   └── home_page.dart
│   │       └── widgets
│   │           ├── category_list_widget.dart
│   │           └── popular_course_list_widget.dart
│   ├── login
│   │   ├── domain
│   │   │   └── entities
│   │   │       └── login_entity.dart
│   │   └── presentation
│   │       ├── bindings
│   │       │   └── login_binding.dart
│   │       ├── pages
│   │       │   └── login_page.dart
│   │       └── widgets
│   └── signup
│       ├── domain
│       │   └── entities
│       │       └── signup_entity.dart
│       └── presentation
│           ├── bindings
│           │   └── signup_binding.dart
│           ├── pages
│           │   └── signup_page.dart
│           └── widgets
├── ui
│   ├── app_theme.dart
│   ├── color_helper.dart
│   ├── controllers
│   │   └── theme_controller.dart
│   ├── routes
│   │   ├── app_pages.dart
│   │   └── app_routes.dart
│   ├── styles.dart
│   └── text_styles.dart
└── validators
    ├── login_validator.dart
    └── signup_validator.dart

```

### Test Cases
***

Basic Unit/Integration Test cases are implemented in this app to showcase how testcases helps to improve the quality & speed of the development.

#### Steps to run the testcases

1. Connect simulator or connect real device.
2. Select the desired test case from the dropdown shown in reference below.
   ![](/screenshots/select_testcase.png)
3. Click on the "Run" button.
4. After completing the test successfully you will see the output like shown in reference below.
   ![](/screenshots/test_result.png)

#### Note: You can find the test cases files by following the below mentioned folder structure.

````
├── test
│   ├── login_test.dart
│   ├── signup_test.dart
│   └── widget_test.dart
└── test_driver
    └── integration_driver.dart

````


### Installation Instructions
***

For development, the latest version of Android Studio is required. The latest version can be downloaded from [here](https://developer.android.com/studio?gclid=CjwKCAiAjfyqBhAsEiwA-UdzJL6PSj-kSHbT1kVELCLlfYCfj0AI1xeaxlntfr_A5OflgFY_ZAEaJxoCSU0QAvD_BwE&gclsrc=aw.ds).
App uses latest version of flutter & dart SDK.
* Open Android studio
* Install the required plugins as mentioned below if not installed.
    1. Dart
    2. Flutter
    3. Flutter Intl
* Restart the android studio.


### Security
***

* Use HTTPS for all network communication to encrypt data in transit.
* Use secure storage, such as the flutter_secure_storage package, to store sensitive information on the device.
* Implement authentication and authorization mechanisms to control access to sensitive data and functions.
* Regularly update dependencies and use a dependency management tool, such as pub, to keep track of known vulnerabilities.
* Use a code obfuscation tool to make it harder for attackers to reverse-engineer the app and understand its inner workings.
* Implement an encryption library and use it to encrypt sensitive data at rest.
* Use input validation and sanitization to protect against injection attacks.
* Use Firebase Authentication for user authentication.
* Use Firebase Security Rules for database security.
* Use Firebase Cloud Messaging for secure messaging.

### Performance
***

#### Do Not Rebuild Widgets
Too often, we see widget rebuild as a typical performance anti-pattern. Every user interaction with the widget will refresh the whole view. That, in turn, will impact the scaffold and the background widget, which only delays the app's ability to load fully. It is better to limit the rebuild process to the things you need to update. You can use the Bloc pattern to rebuild the necessary parts.

#### Async/Await
When developing an app, it is essential to verify if the code is synchronous or asynchronous. You can start writing codes asynchronously using the Async/Await app. By inserting "await" after an async function, the following lines wait for the Future's results, so the operation appears synchronous. Of course, it is not easy to update or debug the Async code.

#### Only Render Visible Widgets
When there's a long horizontal or vertical list of widgets, you want to control how many widgets appear on the screen simultaneously. You can do that using the ListView.builder, one of Flutter's best practices.

For instance, you can use ListView.builder when planning to develop a timeline of 50 posts. Instead, if you use a column or ListView constructor, there's a good chance that all posts will be created simultaneously once the app starts.

#### Avoid Using Columns For Longer Lists
Again, ListView.builder can help. If you can't see the entire list on a single screen page, it's better to use the ListView.builder than a column.

Why? Because only elements visible on the screen occupy memory space, and if they are not on the screen, the memory space will remain free. That's highly effective in optimizing memory and boosting performance.

#### Use Stateless Widgets to Avoid Splits
If the building method has different nesting levels, you can consider splitting the widget into multiple methods. This can dramatically affect the CPU's performance because Flutter has to rebuild all the small widgets, including the static ones, every time the main widget is rebuilt. To maintain the CPU's efficiency, you should use stateless widgets.

#### Use Flutter's Latest Version
The latest version is always improved and packed with new and enticing features. Flutter is a framework that is active and updated on a regular basis. Staying in tune with the recent version and implementing it into your development ensures the performance optimization of your project.

#### Utilize a State Management Library
State management is a non-negotiable factor for developing highly-performing flutter apps. Centralize your app's state and witness a fall in the rebuilds needed for UI updates. Multiple libraries are available, like Bloc, Redux, and Provider, with their own set of pros and cons. So, pick one that works well for your project. 


### Technologies
***

Following technologies are used in this project.

1. [intl](https://pub.dev/packages/intl) : version ^0.18.1
2. [intl_utils](https://pub.dev/packages/intl_utils) : version ^2.8.5
3. [integration_test] (flutter sdk)
4. [flutter_test] (flutter sdk)
5. [flutter_localizations] (flutter sdk)
6. [cupertino_icons](https://pub.dev/packages/cupertino_icons) : version ^1.0.4
7. [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter) : version ^9.2.0
8. [flutter_rating_bar](https://pub.dev/packages/flutter_rating_bar) : version ^4.0.1
9. [smooth_page_indicator](https://pub.dev/packages/smooth_page_indicator) : version ^1.0.0+2


