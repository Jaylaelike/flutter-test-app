import 'package:ecommerce/binding/root_binding.dart';
import 'package:ecommerce/pages/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialBinding: RootBinding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/cart', page: () => CartPage())
      ],
      home: HomePage(),
    );
  }
}
