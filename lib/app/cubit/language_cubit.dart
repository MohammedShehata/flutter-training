import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit(Locale locale) : super(locale);

  void changeToEnglish() => emit(Locale("en"));

  void changeToArabic() => emit(Locale("ar"));

  void triggerLanguage() {
    if (state.languageCode == "en") {
      changeToArabic();
    } else {
      changeToEnglish();
    }
  }
}
