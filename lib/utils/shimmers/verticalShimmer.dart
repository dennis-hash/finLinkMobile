import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcrypto/utils/shimmers/shimmers.dart';


import '../../common/styles/grid_view.dart';
import '../constants/sizes.dart';

class VerticalProductShimmer extends StatelessWidget {
  const VerticalProductShimmer({
    super.key,
    this.itemCount = 2,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.sm),
      child: GridLayout(
        itemCount: itemCount,
        itemBuilder: (context, index) => Container(
          width: 100,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Image
              Row(
                children: [
                  Expanded(flex: 2, child: TShimmerEffect(width: 180, height: 110)),
                  SizedBox(height: TSizes.spaceBtwItems),
                  Expanded(
                    flex: 3,
                      child:Column(

                        children: [
                          TShimmerEffect(width: 180, height: 25),
                          //
                          SizedBox(height: TSizes.spaceBtwItems / 3),
                          //
                          TShimmerEffect(width: 180, height: 25),
                          SizedBox(height: TSizes.spaceBtwItems / 3),
                          //
                          TShimmerEffect(width: 180, height: 25),


                        ],
                      ) )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
