
import 'package:flutter/material.dart';

void main() {
  runApp(const NvkStoregeApp());
}

class NvkStoregeApp extends StatelessWidget {
  const NvkStoregeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NVKSTOREGE - Butembo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NVKSTOREGE'),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Bienvenue à Butembo !',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Maisons, parcelles et boutiques à Butembo, Nord-Kivu.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 20),
          _card('Maison à Bulengera', 'Butembo - Bulengera', '350 \$ / mois', '3 chambres, salon, cuisine'),
          _card('Parcelle à Katwa', 'Butembo - Katwa', '8 500 \$', '20m x 20m, titre disponible'),
          _card('Boutique au Centre-ville', 'Butembo - Centre', '200 \$ / mois', 'Bien placée, pour commerce'),
          _card('Maison à Furu', 'Butembo - Furu', '280 \$ / mois', '2 chambres, cour clôturée'),
        ],
      ),
    );
  }

  Widget _card(String titre, String lieu, String prix, String desc) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.home, color: Colors.green, size: 40),
        title: Text(titre, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$lieu\n$desc'),
        trailing: Text(prix, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
        isThreeLine: true,
      ),
    );
  }
}
