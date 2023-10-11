import 'dart:io';

//'dart run <dartFileNameWithExtension>' to run a dart file from terminal

void main() async {
  print(
      'This script will generate the folder and file structure for Flutter 3. It will create some folders like assets, images, fonts, screens, controllers and some files like .env, .env.dev etc. You need .env, .env.dev, .env.example files when you use flutter_dotenv package.\n');

  var dirArray = [
    'assets',
    'assets/images',
    'assets/fonts',
    'assets/icons',
    'assets/data',
    'lib/screens',
    'lib/widgets',
    'lib/controllers',
    'lib/models',
  ];

  for (var i = 0; i < dirArray.length; i++) {
    final myDir = Directory(dirArray[i]);
    var isThere = await myDir.exists();
    if (isThere) {
      print(dirArray[i] + ' folder is already exist.');
    } else {
      var directory = await Directory(dirArray[i]).create(recursive: true);
      print(directory.path + ' folder has been created.');
    }
  }

  var fileArray = [
    '.env',
    '.env.dev',
    '.env.example',
    'lib/controllers/default_controller.dart'
  ];
  for (var i = 0; i < fileArray.length; i++) {
    final myFile = File(fileArray[i]);
    var isThere = await myFile.exists();
    if (isThere) {
      print(fileArray[i] + ' file is already exist.');
    } else {
      var file = await File(fileArray[i]).create(recursive: true);
      print(file.path + ' file has been created.');
    }
  }

  print('\nPlease, check your project for those folders and files!\n');

  print(
      'This script is created by Alin (https://www.alinsworld.com/). [version: 1.0.0, date: 12-October-2023]');
}
