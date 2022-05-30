import "package:flutter/material.dart";

class DrawerControl extends ChangeNotifier{
  GlobalKey<ScaffoldState> get _scaffoldKey => GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void ControlMenu()
  {
    if(!_scaffoldKey.currentState!.isDrawerOpen)
    {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

}