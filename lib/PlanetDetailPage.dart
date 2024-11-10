import 'package:flutter/material.dart';
import 'package:flutter_application_solaire/planet_data.dart';

class PlanetDetailPage extends StatelessWidget {
  final Planet planet;

  PlanetDetailPage({required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name),
        backgroundColor: Color.fromARGB(255, 161, 80, 13),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Affichage de l'image de la planète
              Center(
                child: Image.asset(
                  planet.image,
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              // Titre de la planète
              Text(
                planet.name,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 161, 80, 13),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // Description de la planète
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  planet.description,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    height: 1.6,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              // Affichage de la distance du Soleil
              DetailRow(
                  label: "المسافة من الشمس:", value: planet.distanceFromSun),
              SizedBox(height: 10),
              // Affichage de la composition de la planète
              DetailRow(label: "التركيب:", value: planet.composition),
              SizedBox(height: 10),
              // Affichage de la température
              DetailRow(label: "درجة الحرارة:", value: planet.temperature),
              SizedBox(height: 10),
              // Affichage de la taille de la planète
              DetailRow(label: "حجم الكوكب:", value: planet.size),
              SizedBox(height: 10),
              // Affichage du nombre de lunes
              DetailRow(label: "عدد الأقمار:", value: planet.moons),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  DetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 161, 80, 13),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
