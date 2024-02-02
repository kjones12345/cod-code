// lib/home_page.dart
import 'package:flutter/material.dart';
import 'globals.dart';
import 'header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homePageBackgroundColor.value,
      appBar: const Header(title: Text('Home')),
    );
  }
}
