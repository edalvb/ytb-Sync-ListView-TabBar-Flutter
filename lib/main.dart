import 'package:flutter/material.dart';
import 'package:ytb_sync_list_view_tabbar/rappi_concept/main_rappi_concept_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sync Lis View Tab bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainRappiConceptApp(),
    );
  }
}
