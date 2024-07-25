import 'package:flutter/material.dart';
import 'package:frontend/views/pages/login.dart';
import 'package:frontend/views/pages/register.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        // background image
        Image.asset(
          "images/im1.jpeg",
          fit: BoxFit.cover,
        ),

        // le fond noir

        Container(
          color: Colors.black.withOpacity(0.6),
        ),

        // le texte
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Votre succès est notre priorité !',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Nous sommes là pour vous soutenir à chaque étape du chemin. Utilisez cette plateforme pour renforcer vos connaissances et aborder les examens d\'État en toute confiance',
                  style: TextStyle(color: Colors.grey[300], fontSize: 11),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width:
                      double.infinity, // Utilise la largeur maximale disponible
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: const Text(
                      'S\'inscrire',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    // style: ButtonStyle(),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width:
                      double.infinity, // Utilise la largeur maximale disponible
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue),
                    child: const Text(
                      'Continuer avec Google',
                      style: TextStyle(color: Colors.white),
                    ), // style: ButtonStyle(),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text(
                    'Se connecter >',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
