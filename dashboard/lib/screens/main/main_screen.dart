import "package:flutter/material.dart";
import "package:dashboard/responsiveness.dart";
import "package:dashboard/controllers/drawer_control.dart";
import "package:provider/provider.dart";
import "components/side_menu.dart";
import "package:dashboard/screens/dashboard/dashboard_screen.dart";

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: context.read<DrawerControl>().scaffoldKey,
        drawer: SideMenu(),
        body: SafeArea(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsiveness.isDesktop(context)) Expanded(child: SideMenu()),
            Expanded(
              child: DashboardScreen(),
              flex: 5,
            )
          ],
        )));
  }
}
