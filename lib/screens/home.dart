import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vlad/constants/sidebar.dart';
import 'package:vlad/providers/nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int sideBarIndex = Provider.of<NavProvider>(context).index;

    return SingleChildScrollView(
      child: Text(
        sideBarItems.keys.elementAt(sideBarIndex),
      ),
    );
  }
}
