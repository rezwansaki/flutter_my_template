import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
          child: Text(
            dotenv.env['API_BASE_URL'] ?? 'API_BASE_URL not found',
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.black,
            ),
          ),
        ));
  }
}
