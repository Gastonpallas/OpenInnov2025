import 'package:flutter/material.dart';
import 'app_colors.dart';

class SignupPage extends StatelessWidget {
  // Déclaration des contrôleurs
  final TextEditingController nomController = TextEditingController();
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Inscription', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nomController,
              decoration: InputDecoration(
                labelText: 'Nom',
                labelStyle: TextStyle(color: AppColors.textSecondary),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary),
                ),
              ),
            ),
            TextField(
              controller: prenomController,
              decoration: InputDecoration(
                labelText: 'Prénom',
                labelStyle: TextStyle(color: AppColors.textSecondary),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary),
                ),
              ),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: AppColors.textSecondary),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary),
                ),
              ),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                labelStyle: TextStyle(color: AppColors.textSecondary),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                String nom = nomController.text;
                String prenom = prenomController.text;
                String email = emailController.text;
                String password = passwordController.text;

                print('Nom : $nom');
                print('Prénom : $prenom');
                print('Email : $email');
                print('Mot de passe : $password');

                // TODO: Logique d’inscription ici
              },
              child: Text('Créer un compte', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
