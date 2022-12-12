import 'package:flutter/material.dart';
import 'package:food_app/ui/widgets/circular_icon_button.dart';
import 'package:food_app/utils/app_typography.dart';

import '../../utils/app_color.dart';

class RestaurantCard extends StatelessWidget {
  final String restaurantName;
  final String foods;
  final String price;
  final String timeForDelivery;
  final String rating;
  final String imagePath;

  const RestaurantCard({super.key, required this.restaurantName, required this.foods, required this.price, required this.timeForDelivery, required this.rating,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.whiteColor,

        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              color: AppColor.greyColor.withOpacity(0.5),
              spreadRadius: 1)
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imagePath)
                  )
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: CircularIconButton(
                  icon: Icons.bookmark_border,
                  shadowColor: Colors.transparent,
                  iconColor: AppColor.blackColor,
                  radius: 15,
                  iconSize: 20,
                ),
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 8),
                    child: Text("${price} Mins",style: AppTypography.blackw400.copyWith(fontSize: 12),),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(restaurantName,style: AppTypography.blackw400.copyWith(fontSize: 17),), Container(
                    decoration: BoxDecoration(
                      color: AppColor.greenColor,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 4),
                      child: Row(
                        children: [
                          Text(rating,style: AppTypography.whitew400.copyWith(fontSize: 11),),
                          Icon(Icons.star,color: AppColor.whiteColor,size: 17,)
                        ],
                      ),
                    ),
                  )],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(foods,style: AppTypography.greyw400.copyWith(fontSize: 11),),
                    Text("\$${price} for one",style: AppTypography.greyw400.copyWith(fontSize: 11),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
