import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.add, size: 28),
          Text(
            'Instagram',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const Icon(Icons.favorite_border, size: 28),
        ],
      ),
    );
  }
}