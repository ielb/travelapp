import 'dart:io';

import 'package:chaty/src/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:share_plus/share_plus.dart';

class Config {
  Config._();
  static Config instance = Config._();

  // ? Data
  String appName = 'chaty';
  String baseUrl = "https://api.themoviedb.org/3/";
  String apiKey = "";
  String imageBaseUrl = "https://image.tmdb.org/t/p/";

  // *  Colors
  Color get primaryColor => const Color(0xFFFF6600);
  Color get boxColor => const Color(0xFFF0F0F0);
  Color get textColor => const Color(0xFF232323);
  Color get loaderGrey => const Color.fromRGBO(0, 0, 0, 0.07);
  Color get lightGrey => const Color(0xFFf0f0f0);
  Color get grey => const Color(0xFF808080);
  Color get black => const Color(0xFF232323);
  Color get white => const Color(0xFFFFFFFF);
  Color get blue => const Color(0xFF3498db);
  Color get green => const Color(0xFF4caf50);
  Color get placeholderTextColor => const Color(0xFF232323);
  Color get red => const Color(0xFFe52d27);
  Color get appBackgroundColor => const Color(0xfff0f0f0);
  Color get headingGrey => const Color(0xFF999999);
  Color get seperatorColorGrey => const Color(0xfff4f4f4);
  Color get googleRed => const Color(0xFFdd4b39);
  Color get facbookBlue => const Color(0xFF3B5998);
  Color get firstPackage => const Color(0xFFFFD9C0);

  // *  ThemeData
  ThemeData theme() => ThemeData(
      backgroundColor: const Color(0xFFF0F0F0),
      primaryColor: const Color(0xFFFF6600),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFFFF6600),
        onPrimary: Color(0xFFFF6600),
        error: Color(0xFFe52d27),
        secondary: Color(0xFFFF6600),
        onSecondary: Color(0xFFFF6600),
        surface: Color(0xFFF0F0F0),
        onSurface: Color(0xFFF0F0F0),
        background: Color(0xFFF0F0F0),
        onBackground: Color(0xFFF0F0F0),
        onError: Color(0xFFe52d27),
      ),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        headline2: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        headline3: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        headline4: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        headline5: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        headline6: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        subtitle1: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        subtitle2: GoogleFonts.poppins(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        bodyText1: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        bodyText2: GoogleFonts.poppins(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        button: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
        caption: GoogleFonts.poppins(
          fontSize: 8,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF232323),
        ),
      ));

  // * Assets Images
  String appIcon = "assets/images/logooo.png";
  String get appLogo => "assets/images/chaty.png";
  String get cityImage => "assets/images/agadir.png";
  String get berline => "assets/images/berline.png";

  // ! bottom bar icons

  String get homeIcon => "assets/images/home.png";
  String get searchIcon => "assets/images/search.png";
  String get profileIcon => "assets/images/profile.png";
  String get parkingIcon => "assets/images/parking.png";
  String get addCarIcon => "assets/images/addcar.png";
  String get reelsIcon => "assets/images/reels.png";
  String get facebookLogo => "assets/images/fb_logo.png";
  String get googleLogo => "assets/images/google_plus_logo.png";
  String get appleLogo => "assets/images/apple.png";

  String get sortAscendingIcon => "assets/images/sort-ascending.png";

  String get parkingBackground => "assets/images/bg-parking.png";
  String get addCarBackground => "assets/images/bg-add.png";
  String get authbg => "assets/images/bg-motif.png";

  //! languages flags

  String get ar => "assets/images/ar.png";
  String get en => "assets/images/en.png";
  String get fr => "assets/images/fr.png";

  // ? links

  String get faqLink => "https://chaty.com/en/help";
  String get privacyLink => "https://chaty.com/en/privacy";
  String get aboutLink => "https://chaty.com/about";
  String get contactLink => "https://chaty.com/en/contact-us";
  String get resetPasswordLink => "https://www.chaty.com/fr/password/reset";

  // ? sizes

  double get radius => 15;
  double get topPadding => 50;

  //! Widgtes
  Widget loader() {
    return Platform.isIOS
        ? CupertinoActivityIndicator(
            color: primaryColor,
          )
        : CircularProgressIndicator(
            color: primaryColor,
          );
  }

  showLoginDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => Center(
              child: Material(
                color: Colors.transparent,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text.rich(
                        TextSpan(
                            text: "Faire une offre",
                            style: GoogleFonts.poppins(
                                color: grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(
                                text:
                                    "\nGrace à ce service vous pourriez faire une offre afin de négocier le prix de la voiture, veuillez vous identifier pour en profiter ",
                                style: GoogleFonts.poppins(
                                    color: grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: grey.withOpacity(.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Fermer",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "S'identifier",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
  }

  share(String text) {
    Share.share(text);
  }

  // * functions

  substringPrice(double price) {
    return price == 0
        ? 'Prix non spécifié'
        : price.toString().length == 4
            ? price.toString().substring(0, 1) +
                " " +
                price.toString().substring(1, 3) +
                " MAD"
            : price.toString().length == 5
                ? price.toString().substring(0, 2) +
                    " " +
                    price.toString().substring(2, 3) +
                    " MAD"
                : price.toString().length == 6
                    ? price.toString().substring(0, 3) +
                        " " +
                        price.toString().substring(3, 3) +
                        " MAD"
                    : price.toString().length == 7
                        ? price.toString().substring(0, 1) +
                            " " +
                            price.toString().substring(1, 3) +
                            " " +
                            price.toString().substring(4, 3) +
                            " MAD"
                        : price.toString() + " MAD";
  }
}
