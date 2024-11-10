import 'package:flutter/material.dart';
import 'planetDetailPage.dart';
import 'planet_data.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("النظام الشمسي")),
      body: Padding(
        padding: EdgeInsets.all(8.0), // Ajouter du padding autour
        child: ListView.builder(
          itemCount: planets.length,
          itemBuilder: (context, index) {
            final planet = planets[index];
            return Card(
              margin:
                  EdgeInsets.symmetric(vertical: 8.0), // Marge entre les items
              child: ListTile(
                leading: Image.asset(
                  planet.image,
                  width: 50, // Largeur de l'image
                  height: 50, // Hauteur de l'image
                ),
                title: Text(planet.name),
                subtitle: Text(planet.description),
                onTap: () {
                  // Lorsque l'utilisateur appuie sur une planète, on navigue vers la page de détail
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlanetDetailPage(planet: planet),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
