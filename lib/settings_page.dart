// lib/settings_page.dart
import 'package:flutter/material.dart';
import 'header.dart';
import 'globals.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Map of color names to actual color values
  final Map<String, Color> colorOptions = {
    'red': Colors.red,
    'orange': Colors.orange,
    'yellow': Colors.yellow,
    'green': Colors.green,
    'blue': Colors.blue,
    'purple': Colors.purple,
    'indigo': Colors.indigo,
  };

  // Current selected values for dropdowns
  String homePageColorName = 'yellow';
  String settingsPageColorName = 'purple';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: settingsPageBackgroundColor.value,
      appBar: const Header(title: Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            DropdownButtonFormField<String>(
              value: homePageColorName,
              decoration: const InputDecoration(
                labelText: 'Home page background color',
              ),
              items: colorOptions.keys
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  homePageColorName = newValue!;
                  homePageBackgroundColor.value = colorOptions[newValue]!;
                });
              },
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: settingsPageColorName,
              decoration: const InputDecoration(
                labelText: 'Settings page background color',
              ),
              items: colorOptions.keys
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  settingsPageColorName = newValue!;
                  settingsPageBackgroundColor.value = colorOptions[newValue]!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
