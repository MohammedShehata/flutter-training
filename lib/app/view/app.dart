// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_training/l10n/l10n.dart';
import 'package:flutter_training/theme/app_theme.dart';
import 'package:flutter_training/ui/courses/view/courses_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, navigator) {
        var locale = Localizations.localeOf(context);

        return Theme(
          data: AppTheme.light(locale),
          child: navigator!,
        );
      },
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate, // for mirroring the widgets in rtl and ltr
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CoursesPage(),
      // home: const LoginPage(),
    );
  }
}
