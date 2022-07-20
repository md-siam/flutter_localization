import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widget/language_picker_widget.dart';
import '../widget/language_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        actions: const [LanguagePickerWidget()],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LanguageWidget(),
            const SizedBox(height: 30),
            Text(
              AppLocalizations.of(context)!.language,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              AppLocalizations.of(context)!.hello('Siam'),
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
