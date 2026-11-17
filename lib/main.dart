import 'package:big_project/generated/l10n.dart';
import 'package:big_project/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: const MyHomePage(),
    );
  }
}
bool isArabic() {
 return Intl.getCurrentLocale() == 'ar';
}