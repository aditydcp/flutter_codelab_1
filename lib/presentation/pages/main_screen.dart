import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/presentation/components/tourism_spot_grid.dart';
import 'package:flutter_codelab_1/presentation/components/tourism_spot_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const TourismSpotGrid();
        } else {
          return const TourismSpotList();
        }
      }),
    );
  }
}
