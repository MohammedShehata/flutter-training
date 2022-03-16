// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_training/app/cubit/language_cubit.dart';
import 'package:flutter_training/l10n/l10n.dart';
import 'package:flutter_training/theme/app_theme.dart';
import 'package:flutter_training/ui/courses/view/courses_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit(Locale(Platform.localeName.split("_")[0])),
      child: Builder(builder: (context) {
        var locale = context.select((LanguageCubit cubit) => cubit.state);
        return MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            // for mirroring the widgets in rtl and ltr
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: const CoursesPage(),
          theme: AppTheme.light(locale),
          locale: locale,
          // home: const LoginPage(),
        );
      }),
    );
  }
}
