import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'screens/my_contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Color.fromARGB(255, 3, 7, 30), // navigation bar color
        statusBarColor: Colors.black, // status bar color
        statusBarIconBrightness: Brightness.light, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
    ));
    */
    return  MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: MyContacts(),

    );
  }
}
// ctrl + d to sellect all with same name to change directly
// flutter pub add flutter_launcher_icons // to change app icon

// flutter pub run flutter_launcher_icons // after change image in pubspec.yaml
//flutter pub run flutter_launcher_icons -f pubspec.yaml
// flutter pub run flutter_native_splash:create // to change splash screen

/*
to generate apk
1- create key.properties file in android folder
2- add this line to key.properties file
storePassword=hossam652000
keyPassword=hossam652000
keyAlias=upload
storeFile=../app/upload-keystore.jks

3- run this command in terminal
keytool -genkey -v -keystore %USERPROFILE%\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload

4- will genrate file named upload-keystore.jks in C:\Users\hossam copy this file to android/app folder in our project
5- in /android/app/build.gradle put this code
def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject.file('key.properties')
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}

android {
   ...
}

6- in /android/app/build.gradle  Add the signing configuration before the buildTypes property block inside the android property block.
mean delete buildTypes and add this code
 signingConfigs {
        release {
            keyAlias = keystoreProperties['keyAlias']
            keyPassword = keystoreProperties['keyPassword']
            storeFile = keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
            storePassword = keystoreProperties['storePassword']
        }
    }

     buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now,
            // so `flutter run --release` works.
            signingConfig = signingConfigs.debug
            signingConfig = signingConfigs.release
        }
    }

7- run this command in project terminal for big size suitable for all devices
flutter build apk
or for small size
flutter build apk --split-per-abi
second for generate apk for each device type
 */
// flutter pub add rename to change package name
// flutter pub run rename setBundleId --targets android --value "com.example.contactme" // to change package name


/* to upload project to github
- create new repository in github
- copy the link of the repository
- open terminal in project folder
- run this commands
  - git config --global user.name "hossamfares180100"  
  - git config --global user.email "hossamfares180100@gmail.com"
  - git init
  - git add .       // to add all files with green color to not add one by one
  - git commit -m "first commit"  // to commit all files with message m "first commit" like tasks finished
  - git branch -M main // not neccessry now
  - git remote add origin https://github.com/hossamFares180100/contact-me.git // to add all to remote repository
  - git push -u origin master // to push all files to github
  // master is the main branch name in github but in our project can change to main by this command git branch -M main
 */

/* to make new branch in github and push to it to keep main branch clean and make updates in new branch
- git branch // to show all branches 
- git branch new_branch // to create new branch named new_branch
- git checkout new_branch // to switch to new branch
 */