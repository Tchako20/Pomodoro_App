import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String title;
  final String subTitle;
  const HeaderComponent(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            subTitle,
            style: const TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
