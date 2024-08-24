import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sosko_app/utils/local_storage/local_storage.dart';

final selectedLanguageProvider =
    StateNotifierProvider<SelectedLanguageNotifier, String>((ref) {
  return SelectedLanguageNotifier();
});

class SelectedLanguageNotifier extends StateNotifier<String> {
  final _localStorage = LocalStorage();
  static const _languageKey = 'selected_language';

  SelectedLanguageNotifier() : super('EN') {
    _loadLanguage();
  }

  void _loadLanguage() async {
    final savedLanguage = await _localStorage.readString(_languageKey);
    if (savedLanguage != null) {
      state = savedLanguage;
    }
  }

  void setLanguage(String languageCode) {
    state = languageCode;
    _localStorage.createString(_languageKey, languageCode);
  }
}
