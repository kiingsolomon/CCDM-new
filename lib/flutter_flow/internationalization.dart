import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'de', 'fr', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? deText = '',
    String? frText = '',
    String? esText = '',
  }) =>
      [enText, deText, frText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // WatchVideo
  {
    'bxxsn0ym': {
      'en': 'Watch Video',
      'de': '',
      'es': '',
      'fr': '',
    },
    'he4a4c1q': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // HomePage
  {
    '6h1ez9o5': {
      'en': 'JOIN LIVESTREAM',
      'de': '',
      'es': '',
      'fr': '',
    },
    's3kancby': {
      'en': 'Services for you',
      'de': '',
      'es': '',
      'fr': '',
    },
    'gvlix07r': {
      'en': 'MOUNTAIN MONTHLY PROGRAMME',
      'de': '',
      'es': '',
      'fr': '',
    },
    't3n2eibm': {
      'en': 'Monthly',
      'de': '',
      'es': '',
      'fr': '',
    },
    '878pzcr1': {
      'en': '8:00 - 11:00',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0oufxonc': {
      'en': 'WAKATI ITUSILE\n',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1uctwkdb': {
      'en': 'Weekly',
      'de': '',
      'es': '',
      'fr': '',
    },
    '2e761256': {
      'en': '9:00 - 11:00',
      'de': '',
      'es': '',
      'fr': '',
    },
    'df06rrj9': {
      'en': '21 DAYS-COVENANT \n-VIGIL',
      'de': '',
      'es': '',
      'fr': '',
    },
    'plccmpjm': {
      'en': 'Every July',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0nfn8m3k': {
      'en': '22:00 - 02:00',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qjac76dz': {
      'en': '21 DAYS-COVENANT\n- FASTING',
      'de': '',
      'es': '',
      'fr': '',
    },
    'h6vtnoit': {
      'en': 'Every Feb.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'glpw64be': {
      'en': '00:00 -00:00',
      'de': '',
      'es': '',
      'fr': '',
    },
    'fwweqnoh': {
      'en': 'CCDM TV Broadcast',
      'de': '',
      'es': '',
      'fr': '',
    },
    'z4n0k7xz': {
      'en': 'Watch more',
      'de': '',
      'es': '',
      'fr': '',
    },
    'm7b3043d': {
      'en': 'Wakati itusile 2nd Annual convention\nJINGLE',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9bjfkpoy': {
      'en': '05/08/2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ti1o6t0e': {
      'en':
          'PROPHETIC PRAYER TO THE MONTH - 31st \nJuly 2023 WITH VEN TUNDE BAMIGBOYE',
      'de': '',
      'es': '',
      'fr': '',
    },
    'jqz1fj9g': {
      'en': '02/08/2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'yvqlc35w': {
      'en': 'BREAKTHROUGH PRAYERS WITH \nVEN TUNDE BAMIGBOYE',
      'de': '',
      'es': '',
      'fr': '',
    },
    '3djrh99d': {
      'en': '01/08/2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'in2fy2s8': {
      'en': 'Welcome,',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5yrtv176': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // Donation
  {
    '0t8ohnkx': {
      'en': 'Offering/Donation',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ik0dscw9': {
      'en': 'Outreach',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7954lw4r': {
      'en':
          'Every donation, regardless of size, is a precious gift that enables us to continue fulfilling our divine calling. Your willingness to share your blessings will ripple through our community, touching hearts and souls in ways beyond measure.\n\nTo contribute to our ongoing efforts, please visit our website or use the provided donation methods here. We deeply appreciate your generosity and commitment to our shared journey of faith.\n\nMay your contributions be blessed, and may you continue to be a source of inspiration and light in our church family.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'nkz7fxv1': {
      'en': 'WAKATI ITUSILE NAIRA ACCOUNT ',
      'de': '',
      'es': '',
      'fr': '',
    },
    'juh30pob': {
      'en': 'GTB 0494119674\nCHRIST COVENANT DELIVERANCE MINISTRY',
      'de': '',
      'es': '',
      'fr': '',
    },
    'aj8ypuyk': {
      'en': 'WAKATI ITUSILE DOLLAR ACCOUNT ',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9zh7t5wb': {
      'en':
          'GUARANTY TRUST BANK -0494271752\n SORT CODE- 058152036\n SWIFT CODE- GTBINGLA\n BANK ADDRESS - 2 TINUBU STREET LAGOS ISLAND,  LAGOS',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ehoz6ume': {
      'en': 'Donate With PayPal',
      'de': '',
      'es': '',
      'fr': '',
    },
    'giplgy4s': {
      'en': 'Offering',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // WatchVideo2
  {
    'mdysd4ev': {
      'en': 'Watch Video',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ue0x84o2': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // WatchVideo3
  {
    'pgsg0hx0': {
      'en': 'Watch Video',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zdilu1m6': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // WatchVideo4
  {
    '1qtiv49l': {
      'en': 'Watch Video',
      'de': '',
      'es': '',
      'fr': '',
    },
    't060fl9j': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // WatchVideo5
  {
    '1g266of0': {
      'en': 'Watch Video',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vweb6yv4': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // WatchVideo6
  {
    '4fmvrqcj': {
      'en': 'Watch Video',
      'de': '',
      'es': '',
      'fr': '',
    },
    'lkm0ayee': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // PodcastPage
  {
    '8du4b3ij': {
      'en': 'Recent Podcasts',
      'de': '',
      'es': '',
      'fr': '',
    },
    'fsbkand5': {
      'en': '01:20',
      'de': '',
      'es': '',
      'fr': '',
    },
    'nypfnnkm': {
      'en': 'Adura fun ojo oni',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ijpjdhdm': {
      'en': 'Pst. Tunde Bamigboye',
      'de': '',
      'es': '',
      'fr': '',
    },
    'cs3dbihw': {
      'en': '02:28',
      'de': '',
      'es': '',
      'fr': '',
    },
    'bkswg7rh': {
      'en': 'Adura Asotele',
      'de': '',
      'es': '',
      'fr': '',
    },
    'k0sy3imx': {
      'en': 'Pst. Tunde Bamigboye',
      'de': '',
      'es': '',
      'fr': '',
    },
    'onu6wl9i': {
      'en': '13:59',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rgflldha': {
      'en': 'Adura Iseju mewa',
      'de': '',
      'es': '',
      'fr': '',
    },
    'w69bepud': {
      'en': 'Pst. Tunde Bamigboye',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vz9gir76': {
      'en': '08:30',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4a1hk9wz': {
      'en': 'Adura Iseju Mewa (2)',
      'de': '',
      'es': '',
      'fr': '',
    },
    'oj8iyj9z': {
      'en': 'Pst. Tunde Bamigboye',
      'de': '',
      'es': '',
      'fr': '',
    },
    'm24ygg95': {
      'en': '14:00',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9u2e0ueu': {
      'en': 'Adura Iseju Mewa (3)',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7mtcs3v5': {
      'en': 'Pst. Tunde Bamigboye',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dk74zr2g': {
      'en': 'See more podcasts',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ahit7lot': {
      'en': 'Podcasts',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // Login
  {
    'nmsiay23': {
      'en': 'Sign In',
      'de': '',
      'es': '',
      'fr': '',
    },
    'lbrvpno7': {
      'en': 'Email Address',
      'de': '',
      'es': '',
      'fr': '',
    },
    'lw43qohw': {
      'en': 'Enter your email...',
      'de': '',
      'es': '',
      'fr': '',
    },
    '02ycbgmn': {
      'en': 'Password',
      'de': '',
      'es': '',
      'fr': '',
    },
    'q49fjug6': {
      'en': 'Enter your password...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kg5sazmk': {
      'en': 'Sign In',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hegwx5va': {
      'en': 'Sign Up',
      'de': '',
      'es': '',
      'fr': '',
    },
    'f3kxw3kp': {
      'en': 'Username',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7fo33fln': {
      'en': 'Enter your username...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'g16v36xk': {
      'en': 'Email Address',
      'de': '',
      'es': '',
      'fr': '',
    },
    'q5xq4bjp': {
      'en': 'Enter your email...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'v0e7njub': {
      'en': 'Password',
      'de': '',
      'es': '',
      'fr': '',
    },
    'q4ha4qh5': {
      'en': 'Enter your password...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'lltzamyq': {
      'en': 'Create Account',
      'de': '',
      'es': '',
      'fr': '',
    },
    'bo4gqj62': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // Profile05
  {
    'f0g3r0f0': {
      'en': 'Make a Donation',
      'de': '',
      'es': '',
      'fr': '',
    },
    'f1uho4uj': {
      'en': 'Learn More',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xagul572': {
      'en': 'Contact Us',
      'de': '',
      'es': '',
      'fr': '',
    },
    'foomfp94': {
      'en': 'Log Out',
      'de': '',
      'es': '',
      'fr': '',
    },
    'z6rbg6tf': {
      'en': 'Profile',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // Videos
  {
    'saq1dcbu': {
      'en': 'CCDM TV Broadcast',
      'de': '',
      'es': '',
      'fr': '',
    },
    'e6x4m2la': {
      'en': 'Wakati itusile 2nd Annual convention JINGLE',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xu9quby4': {
      'en': '05/08/2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ry4rsikl': {
      'en': 'Play',
      'de': '',
      'es': '',
      'fr': '',
    },
    'tfu14lxw': {
      'en':
          'PROPHETIC PRAYER TO THE MONTH - 31st July 2023 WITH VEN TUNDE BAMIGBOYE',
      'de': '',
      'es': '',
      'fr': '',
    },
    't60wxlf4': {
      'en': '02/08/2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rzt67dok': {
      'en': 'Play',
      'de': '',
      'es': '',
      'fr': '',
    },
    'uz7jlkl1': {
      'en': 'BREAKTHROUGH PRAYERS WITH VEN TUNDE BAMIGBOYE',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5npgzf1t': {
      'en': '01/08/2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'fmtxqkkp': {
      'en': 'Play',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ribk52gr': {
      'en': 'OWO OLUWA DA SI ORO MI - VEN TUNDE BAMIGBOYE MINISTERING AT',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kgfv9o8y': {
      'en': '25/07/2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'gihktjqh': {
      'en': 'Play',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4z79filf': {
      'en': 'ONLINE WEEKLY VIGIL WITH VEN TUNDE BAMIGBOYE',
      'de': '',
      'es': '',
      'fr': '',
    },
    '20ujhmml': {
      'en': '22/07/2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9whk30hx': {
      'en': 'Play',
      'de': '',
      'es': '',
      'fr': '',
    },
    'tcimfqto': {
      'en': 'DAY 18 ANNUAL 21DAYS VIGIL WITH VEN TUNDE BAMIGBOYE',
      'de': '',
      'es': '',
      'fr': '',
    },
    '10yr9fhc': {
      'en': '15/07/2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'i27wm02x': {
      'en': 'Play',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4b2h4ews': {
      'en': 'Watch more',
      'de': '',
      'es': '',
      'fr': '',
    },
    'z0a7co51': {
      'en': 'Youtube Videos',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // MainHomeCopy
  {
    'vswf4xw4': {
      'en': 'Welcome,',
      'de': '',
      'es': '',
      'fr': '',
    },
    'e5xsjnrm': {
      'en': 'WATCH LIVE',
      'de': '',
      'es': '',
      'fr': '',
    },
    'pw2ud67s': {
      'en': 'PROGRAMME',
      'de': '',
      'es': '',
      'fr': '',
    },
    'bp6incrc': {
      'en': 'CCDM TV BROADCAST',
      'de': '',
      'es': '',
      'fr': '',
    },
    'u0yuvirt': {
      'en': 'CCDM TV BROADCAST',
      'de': '',
      'es': '',
      'fr': '',
    },
    '720h1wsa': {
      'en': 'CCDM TV BROADCAST',
      'de': '',
      'es': '',
      'fr': '',
    },
    'oe30lbo8': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    'pyz9t7s6': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '28o38vcn': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '11xje1zf': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '3rvkv4so': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'izwjhwit': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'cqlkroyv': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '547znbpt': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'r5rs4tqd': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1snyat3z': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '3pxwkr6r': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'p4wb3yb1': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'oib1nwir': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ysxbqnr4': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4keuidw6': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'k143l1pv': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'pu7mn393': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'e097778o': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ykiy85sb': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7jm7auaj': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '80vjkp1l': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kgfueeq8': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '46sfydmp': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rcbptg3o': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
