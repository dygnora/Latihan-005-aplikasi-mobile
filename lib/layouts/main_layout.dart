import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({
    super.key,
    required this.title,
    required this.body,
    });

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: const AppDrawer(),
      body: body,
    );
  }
}