import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vlad/providers/nav.dart';
import 'package:vlad/screens/layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows) {}

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => NavProvider())),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VLAD - Anime Downloader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutScreen(),
    );
  }
}
