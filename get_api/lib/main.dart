import 'package:flutter/material.dart';
import 'package:get_api/provider/provider.dart';
import 'package:get_api/view/page/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.cyan,
      ),
      home: ChangeNotifierProvider(
          create: (_) => PostProvider(), child: const HomePage()),
    );
  }
}
