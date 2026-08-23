import 'package:flutter/material.dart';

class CaptionText extends StatelessWidget {
  const CaptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: const [
              TextSpan(
                text: '405roofbar  ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: 'Vamos pa lante 🩷'),
            ],
          ),
        ),
      ),
    );
  }
}