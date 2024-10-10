
import 'package:flutter/material.dart';
import 'package:mcrypto/utils/shimmers/shimmers.dart';

import '../../common/styles/grid_view.dart';
import '../constants/sizes.dart';

class RowShimmer extends StatelessWidget {
  const RowShimmer({super.key, this.itemCount = 2});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace / 2.5),
      child: GridLayout(
        mainAxisExtent: 60,
        itemCount: itemCount,
        itemBuilder: (context, index) =>
            const TShimmerEffect(width: 200, height: 7, radius: TSizes.cardRadiusSm,)

      ),
    );
  }
}
