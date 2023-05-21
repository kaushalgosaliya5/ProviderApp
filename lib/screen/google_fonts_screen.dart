import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsScreen extends StatelessWidget {
  const GoogleFontsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Fonts Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Google Fonts Lato',
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Google Fonts Alata',
              style: GoogleFonts.alata(fontSize: 30),
            ),
            Text(
              'Google Fonts Lato',
              style: GoogleFonts.roboto(fontSize: 30),
            ),
            Text(
              'Google Fonts Open Sans',
              style: GoogleFonts.openSans(fontSize: 30),
            ),
            Text(
              'Google Fonts Dancing Script',
              style: GoogleFonts.dancingScript(fontSize: 30),
            ),
            Text(
              'Google Fonts Dancing Weight',
              style: GoogleFonts.dancingScript(
                  fontWeight: FontWeight.w800, fontSize: 30),
            ),
            Text(
              'Google Fredericka The Great',
              style: GoogleFonts.frederickaTheGreat(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
