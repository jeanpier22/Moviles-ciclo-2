import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/add_name.dart';

// Paquetes de Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
 	  options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Corregido: el constructor debe usar llaves y el nombre `super.key`

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/' : (context) => const MyHomePage(),
        '/add' : (context) => const AddNamePage(),

      },
    );
  }
}

