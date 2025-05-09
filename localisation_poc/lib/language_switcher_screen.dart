import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageSwitcherScreen extends StatelessWidget {
  const LanguageSwitcherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appTitle'.tr())),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'greeting'.tr(),
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.setLocale(const Locale('en'));
              },
              child: const Text("English"),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(const Locale('it'));
              },
              child: const Text("Italiano"),
            ),
          ],
        ),
      ),
    );
  }
}
