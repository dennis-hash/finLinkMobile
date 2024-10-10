import 'package:flutter/material.dart';
import 'package:mcrypto/utils/shimmers/shimmers.dart';


import '../constants/sizes.dart';

class TRowShimmer extends StatelessWidget {
  const TRowShimmer({
    super.key,
    this.itemCount = 3,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, _) => const SizedBox(width: TSizes.spaceBtwItems),
        itemBuilder: (context, _) => const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imoge
            TShimmerEffect(width: 55, height: 55, radius: 55),
            // SizedBox(height: TSizes.spaceBtwItems / 2),
            //
            // // Text
            // TShimmerEffect(width: 55, height: 8),
          ],
        ),
      ),
    );
  }
}
