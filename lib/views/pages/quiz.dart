import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        body: Column(
          children: [
            // Salutation et nom
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    "QUIZ",
                    style: GoogleFonts.pacifico(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  )
                ],
              ),
            ),

            const SizedBox(height: 25),
            Expanded(
                child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: ListView(
                  children: [
                    Text(
                      'Quelle est votre option ?',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                        'Ici, vous pouvez vous auto-évaluer et vous préparer efficacement pour les examens d\' État. Choisissez une votre option pour commencer.'),
                    const SizedBox(height: 15),
                    GridView.count(
                      crossAxisCount: 2,
                      children: const [Text('rrrere')],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
