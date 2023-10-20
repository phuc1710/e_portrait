import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/config/router/app_router.dart';
import 'src/core/utils.dart';

void main() {
  GFonts.addLicense();

  runApp(const EPortrait());
}

class EPortrait extends StatefulWidget {
  const EPortrait({super.key});

  @override
  State<EPortrait> createState() => _EPortraitState();
}

class _EPortraitState extends State<EPortrait> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(final BuildContext context) => MaterialApp.router(
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          primaryColor: const Color(0xff90dbd6),
          textTheme: GoogleFonts.margarineTextTheme(),
        ),
      );
}
