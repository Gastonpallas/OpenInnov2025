import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // Étape 1 : Déclaration des contrôleurs
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Étape 2 : Liaison des contrôleurs aux TextField
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
                // Étape 3 : Récupération des valeurs saisies
                String email = emailController.text;
                String password = passwordController.text;

                //TODO Apel API

                //TODO SI OK

                //TODO SI ERREUR
                },
              child: Text('Se connecter'),
            ),
          ],
        ),
      ),
    );
  }
}
