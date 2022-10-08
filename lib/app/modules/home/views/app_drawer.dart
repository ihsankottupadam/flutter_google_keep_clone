import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xfff8f9fd),
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 25),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: RichText(
              text: const TextSpan(
                  text: 'Google ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                  children: [
                    TextSpan(
                        text: 'Keep',
                        style: TextStyle(fontWeight: FontWeight.w300))
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
