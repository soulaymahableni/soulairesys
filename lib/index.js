/*const express = require('express');
const cors = require('cors');
const admin = require('firebase-admin');
const app = express();
const PORT = 3000;

// Initialiser Firebase Admin avec la clé de service
const serviceAccount = require('./serviceAccountKey.json');
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});
const db = admin.firestore();

app.use(cors());
app.use(express.json());

// Route pour obtenir toutes les planètes
app.get('/planets', async (req, res) => {
  try {
    const planetsSnapshot = await db.collection('planets').get();
    const planetsList = planetsSnapshot.docs.map(doc => doc.data());
    res.status(200).json(planetsList);
  } catch (error) {
    res.status(500).send('Erreur lors de la récupération des données des planètes');
  }
});

// Route pour ajouter une planète
app.post('/planets', async (req, res) => {
  try {
    const newPlanet = req.body;
    await db.collection('planets').add(newPlanet);
    res.status(201).send('Nouvelle planète ajoutée avec succès');
  } catch (error) {
    res.status(500).send('Erreur lors de l’ajout de la planète');
  }
});

app.listen(PORT, () => {
  console.log(`Serveur en cours d'exécution sur http://localhost:${PORT}`);
});*/
