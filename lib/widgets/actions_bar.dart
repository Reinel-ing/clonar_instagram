import 'package:flutter/material.dart';
import 'triangle_icon.dart';

class ActionsBar extends StatelessWidget {
  const ActionsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          const Icon(Icons.favorite_border),
          const SizedBox(width: 4),
          const Text('226'),
          const SizedBox(width: 16),
          const Icon(Icons.mode_comment_outlined),
          const SizedBox(width: 4),
          const Text('27'),
          const SizedBox(width: 16),
          const Icon(Icons.sync),
          const SizedBox(width: 4),
          const Text('35'),
          const SizedBox(width: 16),
          const TriangleIcon(size: 22),
          const SizedBox(width: 4),
          const Text('69'),
          const Spacer(),
          const Icon(Icons.bookmark_border),
        ],
      ),
    );
  }
}