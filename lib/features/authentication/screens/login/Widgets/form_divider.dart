import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';



class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.Ttext,
  });

  final String Ttext;

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? TColors.darkerGrey:TColors.grey , thickness: 0.5, indent: 60, endIndent: 5,)),
        Text(Ttext,style: Theme.of(context).textTheme.labelMedium, ),
        Flexible(child: Divider(color: dark ? TColors.darkerGrey:TColors.grey , thickness: 0.5, indent: 5, endIndent: 60,))
      ],
    );
  }
}