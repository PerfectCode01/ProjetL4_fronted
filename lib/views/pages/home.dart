import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/views/widget/option.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.lightBlue.withOpacity(0.1),
        onTabChange: (value) => {print(value)},
        color: Colors.lightBlue,
        activeColor: Colors.lightBlue,
        gap: 8,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.text_snippet,
            text: 'Test',
          ),
          GButton(
            icon: Icons.settings,
            text: 'parametres',
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'images/bg.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                ),
                Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                width: 30,
                                height: 30,
                                color: Colors.white,
                                child: const Center(child: Text("B")),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Expanded(
                              child: SizedBox(
                                height: 30,
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: 'Recherche',
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 2),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Testez vos compétences et améliorez-vous chaque jour",
                          style: GoogleFonts.poppins(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlue),
                                child: const Text(
                                  'Plus',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                height: double.infinity,
                color: Colors.white,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Center(
                        child: GridView.count(
                          crossAxisCount: 4,
                          children: [
                            Option(
                              texte: 'Scientifique',
                              icons: Icons.science,
                              color: Colors.lightBlue[800],
                            ),
                            Option(
                              texte: 'Pedagogie',
                              icons: Icons.perm_data_setting_sharp,
                              color: Colors.yellow[800],
                            ),
                            Option(
                              texte: 'Electricite',
                              icons: Icons.electrical_services_outlined,
                              color: Colors.lightBlue[800],
                            ),
                            Option(
                              texte: 'Electronique',
                              icons: Icons.explicit_rounded,
                              color: Colors.yellow[800],
                            ),
                            Option(
                              texte: 'Literraire',
                              icons: Icons.book,
                              color: Colors.red[800],
                            ),
                            Option(
                              texte: 'Construction',
                              icons: Icons.house,
                              color: Colors.red[800],
                            ),
                            Option(
                              texte: 'Mecanique',
                              icons: Icons.car_crash,
                              color: Colors.yellow[800],
                            ),
                            Option(
                              texte: 'Commercial',
                              icons: Icons.attach_money,
                              color: Colors.lightBlue[800],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.blue,
                          height: 100,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Image.asset(
                                  'images/bg.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
