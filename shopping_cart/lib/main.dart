import 'package:flutter/material.dart';
import 'package:shopping_cart/data_class.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/home_page.dart';
import 'package:provider/provider.dart';
// import 'package:provider_test/home_page.dart';

import 'data_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataClass(),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomePage()),
    );
  }
}
