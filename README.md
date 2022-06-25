![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/iamnijat/habitonic/Flutter%20CI/master)
![GitHub forks](https://img.shields.io/github/forks/iamnijat/habitonic)
![GitHub stars](https://img.shields.io/github/stars/iamnijat/habitonic)
![GitHub watchers](https://img.shields.io/github/watchers/iamnijat/habitonic)
![GitHub contributors](https://img.shields.io/github/contributors/iamnijat/habitonic)
![GitHub last commit](https://img.shields.io/github/last-commit/iamnijat/habitonic)
![GitHub top language](https://img.shields.io/github/languages/top/iamnijat/habitonic)

# Flutter Habitonic Application


![mock](https://user-images.githubusercontent.com/42466886/173866910-cac27dec-9a74-477d-b46f-a4516591a64d.png)

## Supported Null safety

### Project architecture (Clean Architecture Approach)
##### 1. Why:
    * We want to determine what types of database that we use for storage (might want to change it later on)
    * We want to adhere to SOLID principles since we are using OOP for this project.
    * We want to ensure that UI layers do not care what is going on at the data layer at all.
    * We might want to separate each layer into different packages.
##### 2. Presentation - Domain - Data - Core - Config.
##### 3. Presentation layer consist of
    * Widgets
    * Cubits
    * Blocs
    * Cubits and blocs only manage UI state based on business logic

##### 4. Domain layer (Business logic layer)
    * Usecases (user stories)
    * Repositories interface
    * Typically one function, but can be more if functions are related.
    * Remember, one class has one responsibility only.

##### 5. Data layer (Data access layer)
    * source
        * locals (Database)
    * Repositories (Implementation from Domain layer)

##### 6. Models (The `data model` common for domain layer and data layer)
    * view_models
    * router_models

##### 7. More insight of layers
![image](https://miro.medium.com/max/772/0*sfCDEb571WD-7EfP.jpg)

### DI pattern
`Dependency Injection` is a great design pattern that allows us to eliminate rigid dependencies between elements and it makes the application more flexible, easy to expand scales and maintain.
In the project we use Plugin `get_it` to implement DI and we have also defined classes so you can easily implement `DI` in the `DI layer`.

### Routes
The project has predefined Named routes

##### Build App
You can build the app using the commands

for Android

```
## development: flutter build apk -t lib/main.dart --flavor beta

## staging: flutter build apk -t lib/main.dart --flavor prod
```

for IOS

```
## development flutter build ios -t lib/main.dart --flavor beta

## staging: flutter build ios -t lib/main.dart --flavor prod
```

### resources
      * All resources (images, fonts, videos, ...) must be placed in the assets class

### Getting started
Get dependencies and generate necessary files.

We'll handle the generation of required files for 🚀 your onboarding!


### Localization
Using this library to handle multi-languages. Follow this guide to understand and config languages files


## Visitors Count
<img height="30px" src = "https://profile-counter.glitch.me/vnapnic/count.svg" alt ="Loading">

-------

You've done entire steps correctly and I make sure that this project will have paramount effect on your progress learning `Flutter`
