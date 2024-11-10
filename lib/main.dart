import 'package:flutter/material.dart';
import 'solar_system_page.dart';
// ignore: unused_import
//import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'النظام الشمسي',
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Utilisation de `HomePage` comme écran principal
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image en arrière-plan
          Image.asset(
            'android/assets/img/solaire.jpg',
            fit: BoxFit.cover,
          ),
          // Un filtre de couleur sombre sur l'image pour améliorer la lisibilité du texte
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Contenu de la page
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبا بك في النظام الشمسي',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black38,
                      offset: Offset(3.0, 3.0),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Naviguer vers la page du système solaire
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SolarSystemPage(),
                    ),
                  );
                },
                child: Text(
                  'اكتشف النظام الشمسي',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
