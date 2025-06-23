import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  // Étape 1 : Déclarer les contrôleurs
  final TextEditingController nomController = TextEditingController();
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nomController,
              decoration: InputDecoration(labelText: 'Nom'),
            ),
            TextField(
              controller: prenomController,
              decoration: InputDecoration(labelText: 'Prénom'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Mot de passe'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Étape 2 : Récupérer les valeurs
                String nom = nomController.text;
                String prenom = prenomController.text;
                String email = emailController.text;
                String password = passwordController.text;

                // Afficher dans la console
                print('Nom : $nom');
                print('Prénom : $prenom');
                print('Email : $email');
                print('Mot de passe : $password');

                // Tu peux ajouter ici la logique d'inscription (API, validation, etc.)
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
