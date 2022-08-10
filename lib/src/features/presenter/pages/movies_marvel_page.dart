import 'package:flutter/material.dart';
import 'package:movies_marvel/src/features/presenter/controllers/movies_marvel_controller.dart';
import 'package:provider/provider.dart';

class MoviesMarvelPage extends StatefulWidget {
  const MoviesMarvelPage({Key? key}) : super(key: key);

  @override
  State<MoviesMarvelPage> createState() => _MoviesMarvelPageState();
}

class _MoviesMarvelPageState extends State<MoviesMarvelPage> {
  late final MoviesMarvelController controller;
  @override
  void initState() {
    controller = context.read<MoviesMarvelController>();
    controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
