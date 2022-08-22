import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart' as splash;

import 'item_list_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return splash.SplashScreen(
        seconds: 5,
        navigateAfterSeconds: ItemListScreen(),
      image: Image.asset('items/logo_transparent.png', fit: BoxFit.scaleDown,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.topCenter,
      ),
      backgroundColor: Colors.white,
      photoSize: 270,
      loaderColor: Colors.green,

    );
}}
