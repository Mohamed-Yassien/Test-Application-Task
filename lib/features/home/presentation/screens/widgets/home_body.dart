import 'package:flutter/material.dart';
import 'package:test_application/core/app_strings.dart';


/// home screen body
class HomeBody extends StatelessWidget {
  /// home body constructor
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Text(
        AppStrings.homeScreenText,
        style:  TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
