
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'book_list/book_list_page.dart';
import 'config.dart';

final configurations = Configurations();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
      apiKey: configurations.apiKey,
      appId: configurations.appId,
      messagingSenderId: configurations.messagingSenderId,
      projectId: configurations.projectId));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookListSample',
      home: BookListPage(),
    );
  }
}