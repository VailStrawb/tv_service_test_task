import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.color,
    required this.gradient,
  });

  final String text;
  final Color color;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: 243,
        height: 80,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: text == "Смотреть" ? gradient : null,
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 70,
              top: 20,
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
