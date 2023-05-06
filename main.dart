import 'package:code/src/feature/MainScreen/db/DBhelper.dart';
import 'package:code/src/feature/MainScreen/screens/main_screen.dart';
import 'package:code/src/feature/MainScreen/screens/note_screen.dart';
import 'package:code/src/feature/authenciation/screens/login/login_screen.dart';
import 'package:code/src/feature/authenciation/screens/splash_screen/splash_screen.dart';
import 'package:code/src/feature/authenciation/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:code/src/utils/theme/theme.dart';
import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await DBhelper.initDb();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TappTheme.lightTheme,
      //darkTheme: TappTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: NotesScreen(),
      //home: LoginScreen(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(".appable/")),
      body: const Center(child: Text("home page")),
    );
  }
}
