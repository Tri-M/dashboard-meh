import "package:flutter/material.dart";
import "package:dashboard/constants.dart";
import "package:dashboard/controllers/drawer_control.dart";
import "package:dashboard/screens/main/main_screen.dart";
import "package:provider/provider.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.purple),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => DrawerControl(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}