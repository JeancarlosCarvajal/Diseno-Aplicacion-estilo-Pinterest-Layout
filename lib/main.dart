import 'package:d_pinterest_clone/src/widgets/pinterest_menu.dart';
import 'package:flutter/material.dart';

import 'package:d_pinterest_clone/src/pages/pinterest_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: PinterestPage(),
    );
  }
}