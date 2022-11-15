# Food App

Food App is Online Food Delivery App developed with Flutter. Created with Flutter 💙 version 3 with a good design source. We are open and welcome any contribution to this project. Before you start to contribute, you can read all the documentation below. Happy coding 👊🏻

![food-app-thumbnail](https://user-images.githubusercontent.com/44092368/201588790-236a3c05-2eb1-45ba-8528-8e8ac4425f0e.png)

## Getting Started

**Development Environment Preparation**

1. Install [Flutter](https://docs.flutter.dev/get-started/install), we recommend installing Flutter with version 3 or higher.
2. Install [Android Studio](https://developer.android.com/studio?hl=id) to get the SDK and to be able to use the emulator for running the App.
3. Download the UI design on this [link](https://www.figma.com/file/3t50dDJpIiBs44tvMZop9r/Online-food-delivery-app-(With-vectors-of-illustrations)-(Community)?node-id=0%3A1).
4. Congrats! You are ready to make a contribution. [How can I contribute?](https://github.com/stikom-valley/food-app#how-can-i-contribute)

## Project structure

**Directory Structure**  
This is the directory structure of the Food App. Currently, we have 2 main folders inside the lib folder, ui and utils folder. It can be added depending on what we need on the projects, for example, the data or repository folder.

<img width="218" alt="Screen Shot 2022-11-14 at 12 17 17" src="https://user-images.githubusercontent.com/44092368/201581125-692563b1-3959-420b-9bfa-2ab4984ef1cf.png">

This is a brief explanation about the folder.
|Directory | Description |
|--------------------------|--------------------------------------------------------------------|
|lib/ | Application  core scripts |
|lib/ui | Application  UI screens/pages widgets and widgets |
|lib/ui/pages | All UI screens/pages widgets |
|lib/ui/widgets | All UI widgets |
|lib/utils | Application  styles  related scripts and Miscellaneous utility script |

## Project dependencies

We can use dependencies/packages from any source such as [pub.dev](https://pub.dev/). This is a list of packages that currently we used on the project.
|Dependency |Description |
|----------------------------|-------------------------------------------------------------------|
|[cupertino_icons](https://pub.dev/packages/cupertino_icons) | iOS style icons (Dependency packaged with flutter sdk) |
|[google_fonts](https://pub.dev/packages/google_fonts) | A Flutter package to use fonts from fonts.google.com |

## Application Routing
All apps will use routing for navigating to some screen or page. This is our routes on the project.
| **Route**                | **Key**                      | **Screen**                     | **Related screen**                                                                           |
| ------------------------ | ---------------------------- | ------------------------------ | -------------------------------------------------------------------------------------------- |
| examplePage                   | example_page                       | ExamplePage                   | Example Screen for displaying app color and app typography                                                                        |
| mainPage                | main_page                    | MainPage                | Main Page screen or we can call it home screen                                                                      |
## Utility
In this project, we try to organize all the base sources like color, routes, and typography as well as we can. So we can easily use them for any screen widgets or widgets we want. The developer should follow the below-mentioned instruction when developing a new widget or modifying any part of the Food App.

1.  **AppColors** (`lib/utils/app_color.dart`) **:-** This is the primary script/code that manages the application color scheme. Therefore, the developer should stick with the pre-defined color scheme. If there is a need to introduce a new color, it must be handled through this script. We can declare a new color in this file.

2.  **AppRouter** **:-** We can declare all the screens with each data for what we need on this file to make it easy to implement the navigation.

3.  **AppTypography :-** This is the primary script/code that manages the application typography. We used Poppins as a base font family. If there is a need to introduce a new font family or font size and color to easily use it, it must be handled through this script.

This the example page looks like:

<img width="207" alt="Example Page" src="https://user-images.githubusercontent.com/44092368/201589731-12cd8c92-207c-4f55-a297-f70ee134f2bd.png">

## [How can I contribute?](https://github.com/stikom-valley/food-app/blob/master/CONTRIBUTING.md)

Before you start making contribution make these things clear 

1) Dont make spam PR's like just add adding (.) and spaces in the file.
2) Make sure you add some value to the repository.
3) Spam PR's wont get merged
4) Go click and check the link above "How can I contribute?" 🙌

### NOTE

- Make Sure you commit your changes in a new branch.
- Make Sure you Give proper name to your files describing the addition.
- Also Make Sure you comment your code wherever necessary.
- And last but not least, don't forget to read and keep updated with the documentation of the project [above](https://github.com/stikom-valley/food-app#project-structure) after you made your changes/modifications.

After a valid pull request, your code will be carefully reviewed and if it matches the rule then it will be accepted otherwise you need to generate a new file. This process may take some time but don't worry.

## REPO STATUS

![GitHub PR Open](https://img.shields.io/github/issues-pr/stikom-valley/food-app?style=for-the-badge&color=aqua)
![GitHub PR closed](https://img.shields.io/github/issues-pr-closed-raw/stikom-valley/food-app?style=for-the-badge&color=blue)
![GitHub language count](https://img.shields.io/github/languages/count/stikom-valley/food-app?style=for-the-badge&color=brightgreen)
<br><br>

## Our Contributors
<a href="https://github.com/stikom-valley/food-app/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=stikom-valley/food-app" />
</a>
