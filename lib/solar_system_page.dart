import 'package:flutter/material.dart';
import 'planet_data.dart'; // Assurez-vous que le fichier planet_data.dart est correctement importé
import 'PlanetDetailPage.dart';

class SolarSystemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'النظام الشمسي',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SolarSystemSearchDelegate(),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'النظام الشمسي',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'يتكون النظام الشمسي من الشمس والكواكب التي تدور حولها. تشمل الكواكب الرئيسية مثل الأرض والمريخ والمشتري.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Ajouter ListView pour afficher les planètes
            Expanded(
              child: ListView.builder(
                itemCount: planetNames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.star, color: Colors.orange),
                    title: Text(
                      planetNames[index],
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      // Naviguer vers la page de détails de la planète
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlanetDetailPage(
                            planet: planets[index],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Liste des noms des planètes pour la recherche
final List<String> planetNames = [
  "عطارد",
  'الزهرة',
  'الأرض',
  'المريخ',
  'المشتري',
  'زحل',
  'أورانوس',
  'نبتون',
  'بلوتو',
];

// Classe pour gérer la recherche
class SolarSystemSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = ''; // Réinitialiser la recherche
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null); // Fermer la recherche
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('نتائج للبحث: "$query"'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Filtrer la liste des planètes en fonction de la recherche
    final suggestions = planetNames.where((planetName) {
      return planetName.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final planetName = suggestions[index];

        return ListTile(
          title: Text(planetName),
          onTap: () {
            // Vérifier si la planète existe avant d'utiliser firstWhere
            if (planets.any((planet) => planet.name == planetName)) {
              final selectedPlanet = planets.firstWhere(
                (planet) => planet.name == planetName,
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PlanetDetailPage(planet: selectedPlanet),
                ),
              );
            } else {
              // Afficher un message d'erreur si la planète n'est pas trouvée
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Planète non trouvée : $planetName')),
              );
            }
          },
        );
      },
    );
  }
}
