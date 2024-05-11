import 'package:store_app/core/services/shared_pref/pref_keys.dart';
import 'package:store_app/core/services/shared_pref/shared_pref.dart';

class FontFamilyHelper {
  const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';

  static const String poppinsEnglish = 'Poppins';

  static String getLocalizedFontFamily() {
    final currentLang = SharedPref().getString(PrefKeys.language);
    if (currentLang == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
