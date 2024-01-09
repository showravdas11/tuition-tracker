import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:poralekha/components/home_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeBanner(),
          ],
        ),
      ),
    );
  }
}
