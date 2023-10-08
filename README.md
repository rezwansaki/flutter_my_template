# Flutter My Template - Flutter 3 Project

My own template with step by step guideline for Flutter project (for flutter3), which helps me to create a new project and build Android app easily.

![Alt text](screenshot.png "Flutter My Template - Flutter 3 Project")
_screenshot with (300 x 533) px_

### The latest update:

<ul>
    <li>1. First.</li>
    <li>2. Second.</li>
</ul>

### Features:

<ul>
    <li>1. First feature.</li>
    <li>2. Second feature.</li>
    <li>3. Third feature.</li>
</ul>

## Guidelines (How to use this template):

<small>Note: Skip this section for other project or repository.</small>

১. প্রথমে Terminal হতে Flutter Project Create করবো ‘--org’ ফ্ল্যাগ ব্যবহার করে।

```
flutter create --org com.alinsworld project_name
```

২. প্রজেক্ট Open করবো VS Code Editor এ।

৩. প্রজেক্ট ফোল্ডার এ সরাসরি ‘assets’ ফোল্ডার create করবো আর সেটা ‘pubspec.yaml’ ফাইল এ গিয়ে config করে দিবো। (শেষে ফাইল save করা -> flutter clean -> flutter pub get দিতে হবে।)

৪. flutter_screenutil এবং flutter_dotenv ফ্লাটার প্যাকেজ ইনস্টল করবো।

<ul>
<li>flutter_screenutil: ^5.9.0 (https://pub.dev/packages/flutter_screenutil)</li>
<li>flutter_dotenv: ^5.1.0 (https://pub.dev/packages/flutter_dotenv)</li>
</ul>

৫. Global variables এর জন্য এই তিনটি ফাইল তৈরি করবো প্রজেক্ট ফোল্ডারের ভিতরে সরাসরি - ‘.env’, ‘.env.dev’, ‘.env.example’ এবং pubspec.yaml ফাইলে গিয়ে বলে দেবো ‘.env’, ‘.env.dev’ এই দুইটির ফাইলের কথা। এবার '.gitignore' গিয়ে ‘.env’, ‘.env.dev’ দুইটি ফাইলকে যুক্ত করে দেবো।

এই template প্রজেক্ট এর main.dart ফাইল এর সকল কোড কপি করে লোকাল প্রজেক্ট এর main.dart ফাইল এ গিয়ে সব মুছে দিয়ে paste করবো।
(responsiveness এর জন্য) main.art ফাইল এর design এর সাইজটা বলে দিতে হবে -
designSize: const Size(360, 690),

যে কোন Size গুলো দিতে হবে এভাবে (responsiveness এর জন্য) -
width: 200.w //for width
height: 500.h //for height
fontSize: 10.sp //for font size
//for ratio 8.0.r

এই template প্রজেক্ট এর '.gitignore' ফাইল এ গিয়ে '# Manually added by me' লেখাটি সহকারে একদম নিচ পর্যন্ত কপি করে নিজের প্রজেক্ট এর '.gitignore' ফাইলে বসাতে হবে।

screens নামক একটি ফোল্ডার তৈরি করবো lib ফোল্ডার এর ভিতরে আর screens ফোল্ডার এর ভিতরে 'home_page.dart' নামক একটি স্টেটফুল অথবা স্টেটলেস ফাইল ক্রিয়েট করবো। main.dart ফাইল এ গিয়ে home_page.dart' ফাইলটি ইমপোর্ট করে দেবো।

৬. এবার কাজ শুরু করতে হবে। এ্যাপ ডিবাগ করবো টারমিনাল এ ‌‌'flutter run' কমান্ড দিয়ে আর 'r' প্রেস করে 'hot reload' করবো, তাহলে কাজ কিছুটা হলেও দ্রুত হবে। সমস্যা হলে 'Shift+r' প্রেস করবো 'Hot Restart' এর জন্য।

৭. কাজ শেষে key.properties ফাইল আর key.jks ফাইল ব্যবহার করে Sign করতে হবে। -> android/app/build.gradle ফাইল হতে minSdk, targetSdk, compileSdk ঠিক করে দিতে হবে। -> pubspec.yaml ফাইল হতে app information যেমন, app name, description এবং app version ঠিক করে দিতে হবে। -> app permission যেমন, internet permission, move to sd permission ইত্যাদি এর জন্য AndroidManifest.xml ফাইল এর ভিতরে বলে দিতে হবে। -> এ্যাপ চালু থাকলে ক্লোজ করতে হবে এবং এ্যাপ ক্লিন করে নিতে হবে এরপর নতুন করে রান করতে হবে। এবার বীল্ড করতে হবে। -> বীল্ড করার পর key.properties ফাইল সেখান হতে মুছে দিতে হবে অথবা সরিয়ে নিতে হবে। ‘key.jks’ ফাইল প্রজেক্ট এ রাখা হয় না, না হলে সেটাও সরিয়ে নিতে হবে। -> .gitignore এ গিয়ে এই ফাইলটি আর এর সাথে key.jks ফাইলটিও যুক্ত করতে হবে এবং দেখতে হবে কোন confidential information such as login information with password, restricted api ইত্যাদি থাকলে সেগুলোও পুশ যেন না হয় সেদিকে খেয়াল রাখবো। আর সেগুলো যে ছিল তার একটা hints দিয়ে sample ফাইল তৈরি করে পুশ করে দেবো, যেন পরে সেগুলো কনফিগার করা যায়। -> কাজ করবো width 1080px এ কিন্তু test করবো একদম শেষে আরও দুইটি বা তিনটি ডিভাইসে যাদের resolution 1080px হতে কম আর বেশি।

৮. এবার distribution এর জন্য যা যা করার করতে হবে। -> README.md ফাইল এ ছবিসহকারে সব কিছু গুছিয়ে লিখে রাখতে হবে যে লেখাগুলো পাবলিক হলে সমস্যা নাই। এই Template প্রজেক্ট এর README.md ফাইল ওপেন করে সকল কোড কপি করে নিয়ে আমাদের প্রজেক্ট ফোল্ডার এর README.md ফাইল এ গিয়ে paste করবো। এবার আমাদের প্রজেক্ট অনুযায়ী ফাইলটি পরিবর্তন করবো, সাজাবো। এই Template প্রজেক্ট এর 'flutter_logo.svg' ফাইলটি কপি করে আমাদের প্রজেক্ট এর ভিতরে সরাসরি রাখবো। আমাদের প্রজেক্ট এর ReadMe.md ফাইল এর 'Instruction' বিভাগ এর নিচে ছোট '<small>' ট্যাগ এর লেখাগুলো মুছে দিতে হবে। এরপর 'Guidelines (How to use this template)' এই বিভাগটি সম্পুর্ন মুছে দিতে হবে। কারন এগুলো ছিল শুধুমাত্র Template প্রজেক্টটির জন্যই।

## Instruction:

This is a flutter project, so there should be whatever you need to run the flutter project. Then after clone the project should do what to do, (এটা একটি ফ্লাটার প্রজেক্ট, তাই ফ্লাটার প্রজেক্ট রান করতে যা কিছু প্রয়োজন সেগুলো থাকতে হবে। এরপর প্রজেক্টটি clone করার পর যা করতে হবে)

<ul>
    <li>1. flutter clean</li>
    <li>2. flutter pub get</li>
    <li>3. flutter run</li>
</ul>
<small>Note: These instructions are for all other flutter repositories which I want to clone but not for this repository. Because, I will not clone it, just create and build a new flutter project using it and following its guidelines. In here, I have to follow the 'Guidelines' section.</small>

### Extra Packages used:

<ul>
    <li>1. flutter_screenutil: ^5.9.0 - for responsie app design.</li>
    <li>2. flutter_dotenv - for global environment variables</li>
</ul>

### Problems (All that work is left):

There are some issues that have not been fixed. </br>
Such as: </br>

<ul>
<li>1. Sample problem</li>
</ul>

### Requires Android:

Minimum SDK Version: 21 (Android 5.0 or, Lollipop) and Target SDK Version: 34 (Android 14)

### Tested On:

<ul>
<li>Emulator: Nexus_5X_API_29</li>
<li>Real Device: Samsung Galaxy J7</li>
</ul>

### Used tools and programming languages:

<ul>
<li>Flutter 3.13.2</li>
</ul>

### Project/App Version:

version: 1.0.0 (08-October-2023)
<small>(This information has been taken from 'pubspec.yaml' file.)</small>

### Start Date:

03-Oct-2023

### Last Update:

09-Oct-2023

### App size:

00.00 MB (After build on APK for all platform)
00.00 MB (After build on APK for specific platform)

### Developed by:

Md. Rezwan Saki Alin
https://www.alinsworld.com/

## License

Flutter is an open source framework by Google.

<p align="center"><a href="https://flutter.dev/" target="_blank"><img src="flutter_logo.svg" width="200"></a></p>
