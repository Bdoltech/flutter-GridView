import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math';

void main() {
  runApp(GridViewApp());
}

class GridViewApp extends StatelessWidget {
  const GridViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              final randomColor = Color(Random().nextInt(0xFFFFFFFF));
              return Container(
                color: randomColor,
                child: Center(
                  child: Text('${index + 1}'),
                ),
              );
            },
            childCount: 50, // Increase this value to generate more grids
          ),
        ),
      ),
    );
  }
}
