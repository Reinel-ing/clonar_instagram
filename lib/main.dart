import 'package:flutter/material.dart';
import 'widgets/top_header.dart';
import 'widgets/stories_row.dart';
import 'widgets/post_header.dart';
import 'widgets/post_image.dart';
import 'widgets/actions_bar.dart';
import 'widgets/caption_text.dart';
import 'widgets/bottom_nav_bar.dart';

void main() {
  runApp(const InstagramCloneApp());
}

class InstagramCloneApp extends StatelessWidget {
  const InstagramCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clonar Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const ProfilePostScreen(),
    );
  }
}

class ProfilePostScreen extends StatelessWidget {
  const ProfilePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const TopHeader(),
                    const SizedBox(height: 12),
                    const StoriesRow(),
                    const SizedBox(height: 12),
                    const PostHeader(),
                    const SizedBox(height: 8),
                    const PostImage(),
                    const ActionsBar(),
                    const CaptionText(),
                  ],
                ),
              ),
            ),
            const BottomNavBar(),
          ],
        ),
      ),
    );
  }
}