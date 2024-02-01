// lib/settings_page.dart
import 'package:flutter/material.dart';
import 'header.dart';
import 'globals.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: settingsPageBackgroundColor,
      appBar: const Header(title: Text('Settings')),
    );
  }
}
