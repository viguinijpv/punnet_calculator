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
  late final List<String> data = [
    widget.result,
    widget.result2,
    widget.result3,
    widget.result4,
    widget.result5,
    widget.result6,
    widget.result7,
    widget.result8,
    widget.result9,
    widget.result10,
    widget.result11,
    widget.result12,
    widget.result13,
    widget.result14,
    widget.result15,
    widget.result16,
  ];

  @override
  Widget build(BuildContext context) {
    final colors = data.map(getColorFromGen);
    final browns = colors.where((color) => color == Colors.brown).length;
    final blacks = colors.where((color) => color == Colors.black).length;
    final whites = colors.where((color) => color == Colors.white).length;
    final yellows = colors.where((color) => color == Colors.yellow).length;
    final reds = colors.where((color) => color == Colors.red).length;

    final brownBlackWhites = browns == true && blacks == true && whites == true;
    final redWhite = reds == true && whites == true;
    final brownYellowBlack =
        browns == true && yellows == true && blacks == true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              brownBlackWhites
                  ? 'Proportion: $browns agutis : $blacks pretos : $whites albinos'
                  : brownYellowBlack
                      ? 'Proportion: $yellows dourados : $blacks pretos : $browns chocolates'
                      :
                      // else if
                      redWhite
                          ? 'Proportion: $reds coloridos : $whites brancos'
                          // else
                          : 'Invalid proportion',
              style: TextStyle(
                  fontFamily: 'courier',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  height: 2.5,
                  letterSpacing: 0.7),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 4.0),
                borderRadius: BorderRadius.circular(16),
                color: Colors.lightGreen,
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              height: 300,
              child: RichText(
                  text: TextSpan(
                children: [
                  for (final gen in data)
                    TextSpan(
                      text: ' $gen ',
                      style: TextStyle(
                          color: getColorFromGen(gen),
                          fontFamily: 'courier',
                          fontSize: 20.5,
                          fontWeight: FontWeight.bold,
                          height: 2.5,
                          letterSpacing: 0.7),
                    ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

Color getColorFromGen(String gen) {
  if (gen.contains('A') && gen.contains('P')) return Colors.brown;
  if (gen.contains('A') && gen.contains('pp')) return Colors.black;
  if (gen.contains('aa')) return Colors.white;
  if (gen.contains('B') && gen.contains('E')) return Colors.black;
  if (gen.contains('bb') && gen.contains('E')) return Colors.brown;
  if (gen.contains('ee')) return Colors.yellow;
  if (gen.contains('cc')) return Colors.white;
  if (gen.contains('C') && gen.contains('ii')) return Colors.red;
  return Colors.black;
}
