import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:punnett_app/screens/result/result.dart';
import 'package:punnett_app/screens/herança/epistasia.dart';
import 'package:punnett_app/screens/herança/epistasia_recessiva.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  final primeiroGameta = TextEditingController();
  final segundoGameta = TextEditingController();

  String predominant = 'none';

  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Row(
          children: const [
            Text(
              'punnett calculator',
              style: TextStyle(
                fontFamily: 'OpenSansBold',
                fontSize: 26,
              ),
            ),
            SizedBox(
              width: 13.0,
            ),
            Image(
              image: AssetImage('assets/images/pea-icon.png'),
              height: 58,
              width: 58,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: 80.0,
            ),
            const Text(
              'Segregação Independente',
              style: TextStyle(fontSize: 19.0),
            ),
            const Text(
              '_____________________________',
              style: TextStyle(fontSize: 19.0),
            ),
            const SizedBox(
              height: 50.0,
            ),

            // ====== TRILHA EPISTASIA ==========

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF394885),
                padding:
                    const EdgeInsets.symmetric(horizontal: 55, vertical: 24),
              ),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EpistasiaPage(),
                  fullscreenDialog: true,
                ),
              ),
              child: const Text(
                'Epistasia',
                style: TextStyle(
                  fontSize: 17.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            // ====== TRILHA EPISTASIA ==========

            Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // RadioListTile(
                    //   title: Text('Nenhum',
                    //       style:
                    //           TextStyle(fontSize: 17.0, color: Colors.white)),
                    //   value: 5,
                    //   groupValue: id,
                    //   onChanged: (val) {
                    //     setState(() {
                    //       predominant = 'none';
                    //       id = 5;
                    //     });
                    //   },
                    // ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
