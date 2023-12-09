import 'package:flutter/material.dart';
import 'package:flutter_my_template/constant/variables.dart';
import 'package:flutter_my_template/controllers/default_controller.dart';
import 'package:flutter_my_template/widgets/alert_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Home Page'),
          ),
          body: Center(
            child: Column(
              children: [
                Text(
                  '$API_BASE_URL/endPoint',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    DefaultController.showMe();
                  },
                  child: const Text(
                    'Press Me',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    DialogBox.showAlertDialog(
                        context, "This is title", "This is message!");
                  },
                  child: const Text(
                    'Alert Dialog',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
