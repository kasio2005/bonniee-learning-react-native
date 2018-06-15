npm install -g create-react-native-app

https://facebook.github.io/react-native/docs/getting-started.html

npm install -g react-native-cli
C:\Users\John.diana\AppData\Roaming\npm\react-native -> C:\Users\John.diana\App
ata\Roaming\npm\node_modules\react-native-cli\index.js

+ react-native-cli@2.0.1
updated 1 package in 4.717s

REM Install Android Studio -- and Android SDK 6.0 "marshmallow"
https://developer.android.com/studio/
REM (It's "only" 758 megabytes...not even 1 gigabyte...!) 
https://facebook.github.io/react-native/docs/getting-started.html

/* Or, in case you don't have 256 GB of RAM for Android Studio... */
https://medium.com/skyshidigital/install-react-native-without-android-studio-366317419e7e

>
> C:\inetpub\wwwroot\bonniee-learning-react-native>react-native init AwesomeProject
>
...
To run your app on iOS:
   cd C:\inetpub\wwwroot\bonniee-learning-react-native\AwesomeProject
   react-native run-ios
   - or -
   Open ios\AwesomeProject.xcodeproj in Xcode
   Hit the Run button

To run your app on Android:
   cd C:\inetpub\wwwroot\bonniee-learning-react-native\AwesomeProject
   Have an Android emulator running (quickest way to get started), or a device
onnected
   react-native run-android
...

>
> REM confirm USB connection with your android device... 
> adb devices
>

> 
> C:\inetpub\wwwroot\bonniee-learning-react-native\AwesomeProject>react-native run-android
> 

* What went wrong:
A problem occurred configuring root project 'AwesomeProject'.
> Could not open cp_proj remapped class cache for 7z7ums48l1vf6gtm25il5wymt (C:
Users\John.diana\.gradle\caches\2.14.1\scripts-remapped\build_2173344kd4kki6wqc
0umlowl\7z7ums48l1vf6gtm25il5wymt\cp_proj57408229).
   > Could not open cp_proj generic class cache for build file 'C:\inetpub\wwwr
ot\bonniee-learning-react-native\AwesomeProject\android\build.gradle' (C:\Users
John.diana\.gradle\caches\2.14.1\scripts\7z7ums48l1vf6gtm25il5wymt\cp_proj\cp_p
oj57408229).
      > java.io.FileNotFoundException: C:\Users\John.diana\.gradle\caches\2.14.
\scripts\7z7ums48l1vf6gtm25il5wymt\cp_proj\cp_proj57408229\cache.properties (Th
 system cannot find the file specified)

>
> rm -r -f C:/Users/John.diana/.gradle/*
>

9:16 PM: 
--------
* What went wrong:
A problem occurred evaluating project ':app'.
> java.lang.UnsupportedClassVersionError: com/android/build/gradle/AppPlugin : unsupported major.minor version 52.0

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug
option to get more log output.

BUILD FAILED

Total time: 2 mins 56.334 secs
Could not install the app on the device, read the error above for details.
Make sure you have an Android emulator running or a device connected and have
set up your Android development environment:
https://facebook.github.io/react-native/docs/getting-started.html

> C:\inetpub\wwwroot\bonniee-learning-react-native\AwesomeProject>env | grep JAVA_HOME
> JAVA_HOME=C:\PROGRA~2\Java\JDK17~1.0_2

> Try using at least JDK 1.8...
>
> set JAVA_HOME=C:\Program Files\Java\jdk-9.0.4
>

* What went wrong:
Could not determine java version from '9.0.4'.

=> The Icarus Effect...too advanced a version of Java...?
=> Java JDK 8 seems to be the preferred version for Android...

> Try using JDK 1.8...
>
> set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_144
>

9:43 PM:
--------
* What went wrong:
A problem occurred configuring project ':app'.
> SDK location not found. Define location with sdk.dir in the local.properties
ile or with an ANDROID_HOME environment variable.

>
> set ANDROID_HOME=C:\Users\John.diana\AppData\Local\Android\Sdk
>

10:02 PM: "Awesome Project" appears on Samsung Galaxy...

>
> Running C:\Users\John.diana\AppData\Local\Android\Sdk/platform-tools/adb -s 3db9fc4 reverse tcp:8081 tcp:8081
>

Had trouble copying and modifying AwesomeProject into WeatherProject, so for now just create a new one...

>
> C:\inetpub\wwwroot\bonniee-learning-react-native>react-native init WeatherProject
>
