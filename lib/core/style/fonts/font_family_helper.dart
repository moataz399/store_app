class FontFamilyHelper {
  const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';

  static const String poppinsEnglish = 'Poppins';

  static String getLocalizedFontFamily() {
    const currentLang = 'ar';
    if (currentLang == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
