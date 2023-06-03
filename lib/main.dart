import 'package:flutter/material.dart';
import 'package:flutter_supabase_my_chat_app/utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_supabase_my_chat_app/pages/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://bpswsmmvplzzjgdwsuea.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJwc3dzbW12cGx6empnZHdzdWVhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODU3NTAxMDQsImV4cCI6MjAwMTMyNjEwNH0.jTWg0C2AXC5ZbKFvsiEuguYlrCZgwpyJZc3rxoeMn9o',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
