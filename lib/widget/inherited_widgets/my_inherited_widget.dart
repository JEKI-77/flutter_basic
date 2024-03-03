import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final String data;
  final double value;
  final Color color;

  const MyInheritedWidget({
    super.key,
    required this.data,
    required this.value,
    required this.color,
    required super.child,
  });

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return data != oldWidget.data ||
        value != oldWidget.value ||
        color != oldWidget.color;
  }

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedData = MyInheritedWidget.of(context).data;
    return Scaffold(
      body: Center(
        child: Text(inheritedData),
      ),
    );
  }
}


// Ya, data yang diteruskan melalui InheritedWidget bisa bersifat dinamis. InheritedWidget memungkinkan Anda untuk meneruskan objek yang berisi data ke widget di bawahnya dalam pohon widget. Data ini bisa berupa objek apapun, termasuk data yang dinamis yang mungkin berubah seiring waktu.

// Misalnya, Anda dapat menggunakan InheritedWidget untuk meneruskan status aplikasi yang berubah, seperti informasi otentikasi pengguna, tema aplikasi yang dipilih, bahasa aplikasi yang sedang digunakan, atau bahkan data yang berasal dari database atau jaringan.

// Ketika data yang diteruskan melalui InheritedWidget berubah, semua widget yang menggunakan data tersebut akan secara otomatis diperbarui. Ini membuatnya menjadi alat yang kuat untuk mengelola keadaan aplikasi yang dinamis dan berbagi data di seluruh pohon widget dengan mudah.