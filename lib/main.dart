import 'package:flutter/material.dart';
import 'package:rest_nest_admin/pages/dashboard.dart';
import 'dart:io';
import 'package:window_size/window_size.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Rest Nest Admin');
    setWindowMaxSize(Size.infinite);
    setWindowMinSize(Size.infinite);
    setWindowFrame(Rect.fromLTWH(0, 0, 1920, 1080));
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dashboard(),
    );
  }
}
