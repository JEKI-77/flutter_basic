import 'package:flutter/material.dart';
import '../widget/inherited_widgets/my_inherited_widget.dart';

class ParentWidget extends StatelessWidget {
  const ParentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyInheritedWidget(
      color: Colors.red,
      value: 2.3,
      data: 'Some data',
      child: ChildWidget(),
    );
  }
}
