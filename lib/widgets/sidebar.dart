import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vlad/constants/sidebar.dart';
import 'package:vlad/providers/nav.dart';

Widget sideBar(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  return Container(
    height: height,
    width: width / 4.5,
    decoration: const BoxDecoration(
      color: Color.fromRGBO(60, 13, 87, 1),
    ),
    child: ListView.builder(
      itemCount: sideBarItems.length,
      itemBuilder: (context, index) {
        String key = sideBarItems.keys.elementAt(index);
        return buildSideBarItem(context, index, key);
      },
    ),
  );
}

Widget buildSideBarItem(BuildContext context, int index, String key) {
  return GestureDetector(
    key: ObjectKey(index),
    onTap: () {
      var val = sideBarItems.keys.elementAt(index);
      debugPrint("$val is clicked");
      Provider.of<NavProvider>(context, listen: false).set(index);
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(12, 16, 8, 0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              sideBarItems[key],
              color: Colors.white70,
            ),
          ),
          Text(
            key,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ],
      ),
    ),
  );
}
