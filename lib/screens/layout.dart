import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vlad/providers/nav.dart';
import 'package:vlad/screens/download.dart';
import 'package:vlad/screens/home.dart';
import 'package:vlad/screens/setting.dart';
import 'package:vlad/widgets/sidebar.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  double height = 0, width = 0;

  @override
  Widget build(BuildContext context) {
    int sideBarIndex = Provider.of<NavProvider>(context).index;

    return Scaffold(
      body: Row(
        children: [
          // SideNavBar
          sideBar(context),

          // Main Panel
          getScreen(sideBarIndex),
        ],
      ),
    );
  }

  Widget getScreen(int sideBarIndex) {
    switch (sideBarIndex) {
      case 1:
        return const DownloadScreen();
      case 2:
        return const SettingScreen();
      default:
        return const HomeScreen();
    }
  }
}
