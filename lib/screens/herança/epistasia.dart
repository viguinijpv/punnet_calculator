import 'package:flutter/material.dart';

import 'epistasia_dominante.dart';
import 'epistasia_recessiva.dart';

class EpistasiaPage extends StatefulWidget {
  const EpistasiaPage({
    Key? key,
  }) : super(key: key);

  @override
  _EpistasiaPageState createState() => _EpistasiaPageState();
}

class _EpistasiaPageState extends State<EpistasiaPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(110.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF342387),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 27),
                      ),
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              EpistasiaRecessivaPage(), // Trocar esse caminho
                        ),
                      ),
                      child: const Text(
                        'Epistasia Recessiva',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF342387),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 27),
                      ),
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              EpistasiaDominantePage(), // Trocar esse caminho
                        ),
                      ),
                      child: const Text(
                        'Epistasia Dominante',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    )
                  ],
                ))));
  }
}
