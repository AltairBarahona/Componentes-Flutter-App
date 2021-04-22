import 'package:ComponentesApp/routes/routes.dart';
import 'package:ComponentesApp/src/pages/alert_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      title: "Por Altair",
      routes: generarRutas(),
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        // TODO: uncomment the line below after codegen
        // AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        // GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        // const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Arabic, no country code
        // const Locale.fromSubtags(
        //     languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // // ... other locales the app supports
      ],
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return AlertPage();
          },
        );
      },
    );
  }
}
