import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/view/main_page.dart';
import 'view_model/store_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider.value(
        value: StoreModel(),
        child: MainPage(),
      )
    );
  }
}