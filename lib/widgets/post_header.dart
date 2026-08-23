import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const CircleAvatar(radius: 20, backgroundImage: AssetImage('assets/images/avatar.png')),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '405roofbar y 3 más',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  '405roofbar',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Seguir'),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.menu),
        ],
      ),
    );
  }
}