import 'package:cart_management/cart_provider.dart';
import 'package:cart_management/product_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CartProvider(),
        child: Builder(
          builder: (BuildContext context) {
            return MaterialApp(
              title: "Cart Management",
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const ProductListScreen(),
            );
          },
        ));
  }
}
