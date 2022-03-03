import 'package:cosmetics/helpers/utils.dart';
import 'package:cosmetics/widgets/selectedCategoryPage.dart';
import 'package:cosmetics/widgets/welcome.dart';
import 'package:flutter/material.dart';
import 'package:cosmetics/Accueil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comor Cosmetics',

      debugShowCheckedModeBanner: false,
      home:

      SplashPage(duration: 5, goToPage: welcome()),
    );
  }


}








