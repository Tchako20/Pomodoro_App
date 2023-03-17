import 'package:flutter/material.dart';

class ButtonsComponent extends StatelessWidget {
  final String text;
  const ButtonsComponent({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: buttonNavigation(Colors.white, text,
          const TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.w700)),
    );
  }

  InkWell buttonNavigation(Color color, String text, TextStyle style) {
    return InkWell(
      onTap: (() {}),
      child: SizedBox(
        height: 60,
        width: 300,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: color,
          child: Center(
            child: Text(
              text,
              style: style,
            ),
          ),
        ),
      ),
    );
  }
}
