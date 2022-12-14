import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/theme/theme_shelf.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/widgets/brands.dart';
import 'package:foode/views/widgets/campaign.dart';
import 'package:foode/views/widgets/recommended.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: bigBody(context, textPrimary(context)),
                    children: [
                      TextSpan(
                        text: "Hello, ",
                      ),
                      TextSpan(
                        text: "Jeya",
                        style: bigBody(context, AppColors.primary),
                      ),
                      TextSpan(
                        text: "!",
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "HOME",
                      style: label(context, AppColors.secondary),
                    ),
                    SizedBox(width: ww(context, 5)),
                    SvgPicture.asset(
                      "Location".toIcon,
                      width: ww(context, 22),
                      color: AppColors.secondary,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 10)),
          // Campaign(),
          SizedBox(height: hh(context, 20)),
          // horizontalpadding(
          //   context,
          //   child: Text(
          //     "RECOMMENDED FOR YOU",
          //     style: label(context, textPrimary(context)),
          //   ),
          // ),
          SizedBox(height: hh(context, 20)),
          Container(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // children: [
            child: GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              // childAspectRatio: 1.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 30,
              children: [
                RecpmmendedItem(
                  img: "bread",
                  name: "Bread",
                  price: "200.00",
                ),
                RecpmmendedItem(
                  img: "kimbula",
                  name: "Kimbula Banis",
                  price: "80.00",
                ),
                RecpmmendedItem(
                  img: "patties",
                  name: "Patties",
                  price: "80.00",
                ),
                RecpmmendedItem(
                  img: "rolls",
                  name: "fish Bun",
                  price: "80.00",
                ),
                RecpmmendedItem(
                  img: "sausagebuns",
                  name: "Sausage Bun",
                  price: "80.00",
                ),
                RecpmmendedItem(
                  img: "pastry",
                  name: "Pastry",
                  price: "80.00",
                ),
              ],
            ),
            // ],)
          ),
          // SizedBox(height: hh(context, 30)),

          // SizedBox(height: hh(context, 20)),
          // horizontalpadding(
          //   context,
          //   child: Text(
          //     "POPULAR IN YOUR AREA",
          //     style: label(context, textPrimary(context)),
          //   ),
          // ),
          // SizedBox(height: hh(context, 20)),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     RecpmmendedItem(
          //       img: "im2",
          //       name: "Egg Salad",
          //       price: "5.00",
          //     ),
          //     RecpmmendedItem(
          //       img: "im1",
          //       name: "Grilled Salmon",
          //       price: "15.00",
          //     ),
          //   ],
          // ),
          SizedBox(height: hh(context, 100)),
        ],
      ),
    );
  }
}
