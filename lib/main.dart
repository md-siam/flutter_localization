import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'l10n/l10n.dart';
import 'page/home_page.dart';
import 'provider/locale_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, provider, child) {
        return MaterialApp(
          title: 'Flutter Localization',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.deepPurple),
          locale: provider.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate, // for android support
            GlobalCupertinoLocalizations.delegate, // for iOS support
            GlobalWidgetsLocalizations.delegate, // for arabic language
          ],
          home: const HomePage(title: 'Localization'),
        );
      },
    );
  }
}
