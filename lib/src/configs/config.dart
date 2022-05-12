import 'dart:io';

import 'package:chaty/src/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:share_plus/share_plus.dart';

class Config {
  Config._();
  static Config instance = Config._();

  // ? Data
  String appName = 'Travely';

  // *  Colors
  Color get primary => const Color(0xFF4A99FD);
  Color get secondary => const Color(0xFF66D2CC);
  Color get white => const Color(0x0fffffff);
  Color get black => const Color(0xFF000000);
  Color get grey => const Color(0xFFB1B1B1);
  Color get facebookColor => const Color(0xFF3C5A99);
  Color get appleColor => const Color(0xFF1F1F1F);

  // * Theme

  ThemeData get theme => ThemeData();

  // * Assets Images
  String get intro1 => 'assets/intro_1.png';
  String get intro2 => 'assets/intro_2.png';
  String get intro3 => 'assets/intro_3.png';
  String get icon => 'assets/icon.png';
  String get arrow => 'assets/arrow.png';
  //! languages flags

  // ? sizes

  double get radius => 15;
  double get topPadding => 50;

  //! Widgtes
  Widget loader() {
    return Platform.isIOS
        ? CupertinoActivityIndicator(
            color: primary,
          )
        : CircularProgressIndicator(
            color: primary,
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
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(
                                text:
                                    "\nGrace à ce service vous pourriez faire une offre afin de négocier le prix de la voiture, veuillez vous identifier pour en profiter ",
                                style: GoogleFonts.poppins(
                                    color: Colors.grey,
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
                                  color: Colors.grey.withOpacity(.4),
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
                                  color: primary,
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

}
