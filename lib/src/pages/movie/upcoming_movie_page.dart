import 'package:flutter/material.dart';

class UpcomingMoviePage extends StatefulWidget {
  const UpcomingMoviePage ({super.key});

  @override
  State<UpcomingMoviePage> createState() => _UpcomingMoviePage();
}

class _UpcomingMoviePage extends State<UpcomingMoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Movie'),),);
  }
}
