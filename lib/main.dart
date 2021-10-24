import 'package:flutter/material.dart';
import 'screens/home/home.dart';

void main() => runApp(const PunnettCalc());

class PunnettCalc extends StatefulWidget {
  const PunnettCalc({Key? key}) : super(key: key);

  @override
  _PunnettCalcState createState() => _PunnettCalcState();
}

class _PunnettCalcState extends State<PunnettCalc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green[400],
        scaffoldBackgroundColor: Colors.green[400],
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      home: const TelaPrincipal(),
    );
  }
}
