import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/data/model/tourism_spot.dart';
import 'package:flutter_codelab_1/presentation/components/spot_detail_mobile.dart';
import 'package:flutter_codelab_1/presentation/components/spot_detail_web.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.spot});

  final TourismSpot spot;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return SpotDetailWeb(spot: spot);
      } else {
        return SpotDetailMobile(spot: spot);
      }
    });
  }
}
