import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextFieldComponents extends StatelessWidget {
  const TextFieldComponents({super.key});

  @override
  Widget build(BuildContext context) {
    final maskInitTask = MaskTextInputFormatter(mask: '##.##');
    final maskIntervalTask = MaskTextInputFormatter(mask: '##.##');

    return Column(
      children: [
        const Text('Tempo de execução da tarefa',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Container(
            decoration: const BoxDecoration(color:Colors.white),
            child: TextField(
              style: const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  gapPadding: 10,
                  borderSide: BorderSide(style: BorderStyle.solid, width: 70),
                ),
                labelText: "25:00",
                prefixIcon: Icon(Icons.timelapse),
                suffixText: 'minutos',
                hintText: '00.00',
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              //  controller: _height,
              inputFormatters: [maskInitTask],
            ),
          ),
        ), //TextField Height
        const Text('Tempo de intervalo da tarefa',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Container(
             decoration: const BoxDecoration(color:Colors.white),
            child: TextField(
              style: const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  gapPadding: 10,
                  borderSide: BorderSide(style: BorderStyle.solid, width: 70),
                ),
                labelText: "05:00",
                prefixIcon: Icon(Icons.timelapse),
                suffixText: 'minutos',
                hintText: '00.00',
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              //  controller: _height,
              inputFormatters: [maskIntervalTask],
            ),
          ),
        ), //TextField Height
      ],
    );
  }
}
