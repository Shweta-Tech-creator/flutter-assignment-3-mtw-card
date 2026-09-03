import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/app_theme.dart';
import 'screens/identity_card_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Lock application specifically to portrait orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MTWIdentityApp());
}

class MTWIdentityApp extends StatelessWidget {
  const MTWIdentityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mumbai Tech Week 2026',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const IdentityCardScreen(),
    );
  }
}
