import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue,
              icon: Icons.account_box_outlined,
              text: 'User'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.account_tree_outlined,
              text: 'Pipeline'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue,
              icon: Icons.account_box_outlined,
              text: 'User'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.account_tree_outlined,
              text: 'Pipeline'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue,
              icon: Icons.account_box_outlined,
              text: 'User'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.account_tree_outlined,
              text: 'Pipeline'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue,
              icon: Icons.account_box_outlined,
              text: 'User'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.account_tree_outlined,
              text: 'Pipeline'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue,
              icon: Icons.account_box_outlined,
              text: 'User'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.account_tree_outlined,
              text: 'Pipeline'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue,
              icon: Icons.account_box_outlined,
              text: 'User'),
          _SingleCard(
              color: Colors.pink,
              icon: Icons.account_tree_outlined,
              text: 'Pipeline'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  text,
                  style: TextStyle(color: color, fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
