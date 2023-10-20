// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MQSize {
  static double w(final BuildContext context, final double percent) =>
      MediaQuery.of(context).size.width * percent;

  static double h(final BuildContext context, final double percent) =>
      MediaQuery.of(context).size.height * percent;
}

class GFonts {
  static void addLicense() {
    LicenseRegistry.addLicense(() async* {
      final license =
          await rootBundle.loadString('assets/google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    });
  }
}
