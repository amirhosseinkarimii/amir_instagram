import 'package:flutter/material.dart';
import 'package:instagram_app/Inatagram_Post/Instagram_List.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(child: Instagram_List())
      ],
    );
  }
}

