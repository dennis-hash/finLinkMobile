import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'package:iconsax/iconsax.dart';


import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             PrimaryHeaderContainer(
//               child: Column(
//                 children: [
//                   /// App bar
//                   TAppBar(
//                     title: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Dennis N.K',
//                           style: Theme.of(context)
//                               .textTheme
//                               .headlineSmall!
//                               .apply(color: TColors.grey),
//                         ),
//                         Text(
//                           'Contractor',
//                           style: Theme.of(context)
//                               .textTheme
//                               .labelMedium!
//                               .apply(color: TColors.grey),
//                         ),
//                       ],
//                     ),
//                     actions: [
//                       Stack(
//                         children: [
//                           IconButton(
//                               onPressed: () {},
//                               icon: const Icon(
//                                 Iconsax.notification,
//                                 color: TColors.white,
//                               )),
//                           Positioned(
//                               right: 0,
//                               child: Container(
//                                 width: 18,
//                                 height: 18,
//                                 decoration: BoxDecoration(
//                                   color: TColors.black,
//                                   borderRadius: BorderRadius.circular(100),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     '2',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .labelSmall!
//                                         .apply(
//                                             color: TColors.white,
//                                             fontSizeFactor: 0.8),
//                                   ),
//                                 ),
//                               ))
//                         ],
//                       ),
//                     ],
//                   ),
//
//                   const SizedBox(
//                     height: TSizes.spaceBtwSections,
//                   ),
//
//                   ///Search bar
//                   const SearchContainer(
//                     text: 'Search sites',
//                   ),
//                   const SizedBox(
//                     height: TSizes.spaceBtwSections,
//                   ),
//
//                   // Padding(
//                   //   padding: EdgeInsets.only(left: TSizes.defaultSpace),
//                   //   child: Column(
//                   //     children: [
//                   //       /// heading
//                   //       const SectionHeading(
//                   //           title: 'Popular cats',
//                   //           showIconButton: false,
//                   //           textColor: Colors.white),
//                   //       const SizedBox(
//                   //         height: TSizes.spaceBtwItems,
//                   //       ),
//                   //
//                   //       ///Categories
//                   //       SizedBox(
//                   //         height: 80,
//                   //         child: ListView.builder(
//                   //             shrinkWrap: true,
//                   //             itemCount: 10,
//                   //             scrollDirection: Axis.horizontal,
//                   //             itemBuilder: (_, index) {
//                   //               return  VerticalImageText(image: TImages.ikeaLogo ,title: 'ab', onTap: (){},);
//                   //             }),
//                   //       ),
//                   //
//                   //
//                   //     ],
//                   //   ),
//                   // ),
//
//                   const SizedBox(
//                     height: TSizes.spaceBtwSections,
//                   ),
//                 ],
//               ),
//             ),
//
//             ///Body white section
//             Padding(
//               padding: const EdgeInsets.all(TSizes.defaultSpace),
//               child: Container(
//
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(TSizes.md),
//                   ),
//                   child: const Image(image: AssetImage(TImages.house1))
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class VerticalImageText extends StatelessWidget {
//   const VerticalImageText({
//     super.key,
//     required this.image,
//     required this.title,
//     this.textColor = TColors.white,
//     this.backgroundColor = TColors.white,
//     this.onTap,
//   });
//
//   final String image, title;
//   final Color textColor;
//   final Color? backgroundColor;
//   final void Function()? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
//         child: Column(
//           children: [
//             ///circular icons
//             Container(
//               width: 56,
//               height: 56,
//               padding: const EdgeInsets.all(TSizes.sm),
//               decoration: BoxDecoration(
//                 color: backgroundColor,
//                 borderRadius: BorderRadius.circular(100),
//               ),
//               child: Center(
//                 child: Image(
//                   image: AssetImage(image),
//                   fit: BoxFit.cover,
//                   color: TColors.dark,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: TSizes.spaceBtwItems / 2,
//             ),
//             SizedBox(
//                 //width:5,
//                 child: Text(
//               title,
//               style: Theme.of(context)
//                   .textTheme
//                   .labelMedium!
//                   .apply(color: textColor),
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class VerticalImageText2 extends StatelessWidget {
//   const VerticalImageText2({
//     super.key,
//     required this.image,
//     required this.title,
//     this.textColor = TColors.white,
//     this.backgroundColor = TColors.white,
//     this.onTap,
//   });
//
//   final String image, title;
//   final Color textColor;
//   final Color? backgroundColor;
//   final void Function()? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
//         child: Column(
//           children: [
//             ///circular icons
//             Container(
//               width: 106,
//               height: 106,
//               padding: const EdgeInsets.all(TSizes.sm),
//               decoration: BoxDecoration(
//                 color: backgroundColor,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Center(
//                 child: Image(
//                   image: AssetImage(image),
//                   fit: BoxFit.cover,
//                   color: TColors.dark,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: TSizes.spaceBtwItems / 2,
//             ),
//             SizedBox(
//               //width:5,
//                 child: Text(
//                   title,
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelMedium!
//                       .apply(color: textColor),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SectionHeading extends StatelessWidget {
//   const SectionHeading({
//     super.key,
//     required this.title,
//     this.buttonTitle = 'View all',
//     this.showIconButton = false,
//     this.textColor,
//     this.onPressed,
//   });
//
//   final String title, buttonTitle;
//   final bool showIconButton;
//   final Color? textColor;
//   final void Function()? onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: Theme.of(context)
//                 .textTheme
//                 .headlineSmall!
//                 .apply(color: textColor),
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//           if (showIconButton)
//             Transform.scale(
//                 scaleX: 0.8,
//                 scaleY: 0.8,
//                 child: OutlinedButton(onPressed: onPressed, child: Text(buttonTitle),)),
//         ],
//       ),
//     );
//
//   }
// }
//
// class SearchContainer extends StatelessWidget {
//   const SearchContainer({
//     super.key,
//     required this.text,
//     this.icon = Iconsax.search_normal,
//     this.showBackground = true,
//     this.showBorder = true,
//     this.onTap,
//   });
//
//   final String text;
//   final IconData? icon;
//   final bool showBackground, showBorder;
//   final VoidCallback? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//
//     return GestureDetector(
//       onTap: onTap ,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace ),
//         child: Container(
//           width: TDeviceUtils.getScreenWidth(context),
//           padding: const EdgeInsets.all(TSizes.md / 2),
//           decoration: BoxDecoration(
//               color: showBackground
//                   ? dark
//                       ? TColors.dark
//                       : TColors.light
//                   : Colors.transparent,
//               borderRadius: BorderRadius.circular(TSizes.cardRadiusSm),
//               border: showBorder ? Border.all(color: TColors.grey) : null),
//           child: Row(
//             children: [
//               Icon(icon, color: TColors.darkerGrey),
//               const SizedBox(
//                 width: TSizes.spaceBtwItems,
//               ),
//               Text(
//                 text,
//                 style: Theme.of(context).textTheme.bodySmall,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class PrimaryHeaderContainer extends StatelessWidget {
//   const PrimaryHeaderContainer({
//     super.key,
//     required this.child,  this.color = TColors.primary,
//   });
//
//   final Widget child;
//   final Color color;
//
//   @override
//   Widget build(BuildContext context) {
//     return CurvedEdgesWidget(
//       child: Container(
//         color: color,
//         padding: const EdgeInsets.all(0),
//         child: SizedBox(
//           //height: 350,
//           child: Stack(
//             children: [
//               Positioned(
//                   top: -150,
//                   right: -250,
//                   child: CircularContainer(
//                     backgroundColor: TColors.textWhite.withOpacity(0.1),
//                   )),
//               Positioned(
//                   top: 100,
//                   right: -300,
//                   child: CircularContainer(
//                     backgroundColor: TColors.textWhite.withOpacity(0.1),
//                   )),
//               child,
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
// class ContainerWithCircles extends StatelessWidget {
//   const ContainerWithCircles({
//     super.key,
//     required this.child,  this.color = TColors.primary,
//   });
//
//   final Widget child;
//   final Color color;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(TSizes.cardRadiusSm),
//       ),
//       child: SizedBox(
//         //height: 350,
//         child: Stack(
//           children: [
//             child,
//             Positioned(
//                 top: -100,
//                 right: 250,
//                 child: CircularContainer(
//                   backgroundColor: TColors.textWhite.withOpacity(0.1),
//                 )),
//             Positioned(
//                 top: 60,
//                 right: 10,
//                 child: CircularContainer(
//                   backgroundColor: TColors.textWhite.withOpacity(0.1),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class CurvedEdgesWidget extends StatelessWidget {
//   const CurvedEdgesWidget({
//     super.key,
//     this.child,
//   });
//
//   final Widget? child;
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(clipper: CustomCurvedEdges(), child: child);
//   }
// }
//
// class SectionHeading2 extends StatelessWidget {
//   const SectionHeading2({
//     super.key,
//     required this.title,
//     this.buttonTitle = 'View all',
//     this.showIconButton = false,
//     this.textColor,
//     this.onPressed,
//   });
//
//   final String title, buttonTitle;
//   final bool showIconButton;
//   final Color? textColor;
//   final void Function()? onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: Theme.of(context)
//                 .textTheme
//                 .headlineSmall!
//                 .apply(color: textColor),
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//           if (showIconButton)
//             TextButton(onPressed: onPressed, child: Text(buttonTitle),),
//         ],
//       ),
//     );
//
//   }
// }
