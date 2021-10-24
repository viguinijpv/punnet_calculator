import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:punnett_app/screens/result/result.dart';

class EpistasiaRecessivaPage extends StatefulWidget {
  const EpistasiaRecessivaPage({
    Key? key,
  }) : super(key: key);

  @override
  _EpistasiaRecessivaPageState createState() => _EpistasiaRecessivaPageState();
}

class _EpistasiaRecessivaPageState extends State<EpistasiaRecessivaPage>
    with SingleTickerProviderStateMixin {
  final primeiroGameta = TextEditingController();
  final segundoGameta = TextEditingController();

  String predominant = 'none';

  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(75.0),
                child: Column(children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          //maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          controller: primeiroGameta,
                          keyboardType: TextInputType.text,
                          maxLength: 4,
                          decoration: InputDecoration(
                            hintText: 'Primeiro indivíduo',
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            filled: true,
                            contentPadding: const EdgeInsets.all(20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            fillColor: Colors.white70,
                          ),
                          style: const TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          //maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          controller: segundoGameta,
                          keyboardType: TextInputType.text,
                          maxLength: 4,
                          decoration: InputDecoration(
                            hintText: 'Segundo indivíduo',
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            filled: true,
                            contentPadding: const EdgeInsets.all(20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            fillColor: Colors.white70,
                          ),
                          style: const TextStyle(color: Colors.black),
                        ),
                        RadioListTile(
                          title: Row(
                            children: [
                              Text('Pelagens de camundongos',
                                  style: TextStyle(
                                      fontSize: 17.0, color: Colors.white)),
                              IconButton(
                                icon: Icon(
                                  Icons.info_outline,
                                ),
                                onPressed: () {
                                  Widget okButton = FlatButton(
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(
                                          color: Colors.green[400],
                                          fontSize: 17.3),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  );
                                  // set up the AlertDialog
                                  AlertDialog alert = AlertDialog(
                                    title: Text("Pelagens de camundongos"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "P - Selvagem ou Aguti",
                                          style: TextStyle(height: 1.8),
                                        ),
                                        Text(
                                          "p - preto",
                                          style: TextStyle(height: 1.8),
                                        ),
                                        Text(
                                          "A - Permite a pigmentação",
                                          style: TextStyle(height: 1.8),
                                        ),
                                        Text(
                                          "a - Inibe a pigmentação (epistático)",
                                          style: TextStyle(height: 1.8),
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      okButton,
                                    ],
                                    backgroundColor: Colors.white,
                                  );
                                  // show the dialog
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return alert;
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                          value: 1,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              predominant = 'recessiva_aa';
                              id = 1;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        RadioListTile(
                          title: Row(
                            children: [
                              Text('Pelagem em cães labradores',
                                  style: TextStyle(
                                      fontSize: 17.0, color: Colors.white)),
                              IconButton(
                                icon: Icon(
                                  Icons.info_outline,
                                ),
                                onPressed: () {
                                  Widget okButton = FlatButton(
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(
                                          color: Colors.green[400],
                                          fontSize: 17.3),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  );
                                  // set up the AlertDialog
                                  AlertDialog alert = AlertDialog(
                                    title: Text("Pelagem em cães labradores"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "B - Pigmento preto",
                                          style: TextStyle(height: 1.8),
                                        ),
                                        Text(
                                          "b - pigmento chocolate",
                                          style: TextStyle(height: 1.8),
                                        ),
                                        Text(
                                          "E - Permite a pigmentação",
                                          style: TextStyle(height: 1.8),
                                        ),
                                        Text(
                                          "e - Inibe a pigmentação (epistático)",
                                          style: TextStyle(height: 1.8),
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      okButton,
                                    ],
                                    backgroundColor: Colors.white,
                                  );
                                  // show the dialog
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return alert;
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                          value: 2,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              predominant = 'recessiva_ee';
                              id = 2;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 55,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF342387),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 27),
                          ),
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NextPage(
                                predominant: predominant,
                                result: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[0]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[0]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[2]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[2]
                                        : '') +
                                    '',
                                result2: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[0]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[0]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[3]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[2]
                                        : '') +
                                    '',
                                result3: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[1]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[0]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[2]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[2]
                                        : '') +
                                    '',
                                result4: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[1]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[0]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[3]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[2]
                                        : '') +
                                    '', //End of the row

                                result5: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[0]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[0]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[2]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[3]
                                        : '') +
                                    '',
                                result6: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[0]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[0]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[3]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[3]
                                        : '') +
                                    '',
                                result7: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[1]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[0]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[2]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[3]
                                        : '') +
                                    '',
                                result8: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[1]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[0]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[3]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[3]
                                        : '') +
                                    '', //End of the row

                                result9: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[0]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[1]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[2]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[2]
                                        : '') +
                                    '',
                                result10: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[0]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[1]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[3]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[2]
                                        : '') +
                                    '',
                                result11: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[1]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[1]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[2]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[2]
                                        : '') +
                                    '',
                                result12: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[1]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[1]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[3]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[2]
                                        : '') +
                                    '', //End of the row

                                result13: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[0]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[1]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[2]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[3]
                                        : '') +
                                    '',
                                result14: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[0]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[1]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[3]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[3]
                                        : '') +
                                    '',
                                result15: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[1]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[1]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[2]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[3]
                                        : '') +
                                    '',
                                result16: (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[1]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[1]
                                        : '') +
                                    (primeiroGameta.text.isNotEmpty
                                        ? primeiroGameta.text[3]
                                        : '') +
                                    (segundoGameta.text.isNotEmpty
                                        ? segundoGameta.text[3]
                                        : '') +
                                    '', //End of the row
                              ),
                              fullscreenDialog: true,
                            ),
                          ),
                          child: const Text(
                            'Calcular',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ])
                ]))));
  }
}
