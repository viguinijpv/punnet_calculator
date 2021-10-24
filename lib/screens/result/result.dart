// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  const NextPage({
    Key? key,
    required this.result,
    required this.result2,
    required this.result3,
    required this.result4,
    required this.result5,
    required this.result6,
    required this.result7,
    required this.result8,
    required this.result9,
    required this.result10,
    required this.result11,
    required this.result12,
    required this.result13,
    required this.result14,
    required this.result15,
    required this.result16,
    required this.predominant,
  }) : super(key: key);

  final String result,
      result2,
      result3,
      result4,
      result5,
      result6,
      result7,
      result8,
      result9,
      result10,
      result11,
      result12,
      result13,
      result14,
      result15,
      result16,
      predominant;

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage>
    with SingleTickerProviderStateMixin {
  Color checkdominantA(String predominantGamete, String resultado) {
    Color color = Colors.black;

    // Epistasia recessiva em pelagens de camundongos - Recessivo
    // P - Selvagem ou Aguti
    // p - preto
    // A - Permite a pigmentação
    // a - Inibe a pigmentação (epistático)
    if (predominantGamete == 'recessiva_aa' &&
        resultado.contains('A') &&
        resultado.contains('P')) {
      return color = Colors.brown;
    } else if (predominantGamete == 'recessiva_aa' &&
        resultado.contains('A') &&
        resultado.contains('pp')) {
      return color = Colors.black;
    } else if (predominantGamete == 'recessiva_aa' &&
        resultado.contains('aa')) {
      return color = Colors.white;
    }
    // Pelagem em cães labradores - Recessivo
    // B - Pigmento preto
    // b - pigmento chocolate
    // E - Permite a pigmentação
    // e - Inibe a pigmentação (epistático)
    else if (predominantGamete == 'recessiva_ee' &&
        resultado.contains('B') &&
        resultado.contains('E')) {
      return color = Colors.black;
    } else if (predominantGamete == 'recessiva_ee' &&
        resultado.contains('bb') &&
        resultado.contains('E')) {
      return color = Colors.brown;
    } else if (predominantGamete == 'recessiva_ee' &&
        resultado.contains('ee')) {
      return color = Colors.yellow;
    } else if (predominantGamete == 'none') {
      return color = Colors.black;

      //Plumagem em galináceos  - Dominante
      // C - Plumagem colorida
      // c - Plumagem branca
      // I - Plumagem sem pigmentos
      // i - Plumagem com pigmentos
    } else if (predominantGamete == 'dominanteC' && resultado.contains('I')) {
      return color = Colors.white;
    } else if (predominantGamete == 'dominanteC' &&
        resultado.contains('C') &&
        resultado.contains('ii')) {
      return color = Colors.red;
    } else if (predominantGamete == 'dominanteC' && resultado.contains('cc')) {
      return color = Colors.white;
    }

    return color;
  }

  String checkProportion(String predominantGamete, String resultado) {
    int countBrown = 0;
    int countBlack = 0;
    int countWhite = 0;
    while (true) {
      if (predominantGamete == 'recessiva_aa' &&
          resultado.contains('A') &&
          resultado.contains('P')) {
        countBrown += 1;
      }
      if (predominantGamete == 'recessiva_aa' &&
          resultado.contains('A') &&
          resultado.contains('pp')) {
        countBlack += 1;
      }
      if (predominantGamete == 'recessiva_aa' && resultado.contains('aa')) {
        countWhite += 1;
      }
      return 'Proportion: ${countBrown}:${countBlack}:${countWhite}';
    }
  }
  // Chamar a função 16 vezes em cada TextSpan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          checkProportion(widget.predominant, widget.result),
        ),
      ),
      body: Center(
        child: Container(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: widget.result + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                //...

                TextSpan(
                  text: widget.result2 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result2),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result3 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result3),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result4 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result4),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result5 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result5),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result6 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result6),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result7 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result7),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result8 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result8),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result9 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result9),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result10 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result10),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result11 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result11),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result12 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result12),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result13 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result13),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result14 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result14),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result15 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result15),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
                TextSpan(
                  text: widget.result16 + '  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: checkdominantA(widget.predominant, widget.result16),
                    height: 2.5,
                    letterSpacing: 0.7,
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              width: 4.0,
              color: const Color(0xFF342387),
            ),
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.green[300],
          ),
          alignment: Alignment.center,
          constraints: const BoxConstraints(minWidth: 260, maxWidth: 260),
          padding: const EdgeInsets.all(0.0),
          height: 300,
        ),
      ),
    );
  }
}
