import 'package:dart_basic/widget/inherited_widgets/my_inherited_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyInheritedWidget(
        color: Colors.red,
        value: 2.3,
        data: 'data dari home page',
        child: ChildWidget());
  }
}
