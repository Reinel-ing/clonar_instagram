import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class StoriesRow extends StatelessWidget {
  const StoriesRow({super.key});

  static const _nombres = ['Tu historia', 'laura.dev', 'martin_uy', 'sofia.codes'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: _nombres.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: _StoryCircle(nombre: _nombres[index]),
          );
        },
      ),
    );
  }
}

class _StoryCircle extends StatelessWidget {
  const _StoryCircle({required this.nombre});

  final String nombre;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                AppColors.storyGradientStart,
                AppColors.storyGradientMid,
                AppColors.storyGradientEnd,
              ],
            ),
          ),
          child: CircleAvatar(
            backgroundColor: colorScheme.surface,
            child: const Icon(Icons.person, size: 28),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          nombre,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}