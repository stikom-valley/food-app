import 'package:flutter/material.dart';
import 'package:food_app/ui/widgets/circular_icon_button.dart';

import '../../utils/app_color.dart';
import '../../utils/app_typography.dart';

class RestaurantOfTheWeekCard extends StatelessWidget {
  const RestaurantOfTheWeekCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: MediaQuery.of(context).size.height * 0.23,
      decoration: BoxDecoration(
          color: AppColor.mainColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      //TODO:Like functionality
                    },
                    child: const Icon(
                      Icons.favorite_border,
                      size: 28,
                      color: AppColor.whiteColor,
                    )),
                Text(
                  "Restaurant of the week",
                  style:
                  AppTypography.whitew400.copyWith(fontSize: 14),
                ),
                Text(
                  "Hengbok Restaurant",
                  style: AppTypography.redw400.copyWith(fontWeight: FontWeight.bold,fontSize: 18),
                ),
                CircularIconButton(
                  icon: Icons.arrow_forward,
                  shadowColor: AppColor.mainColor,
                  iconColor: AppColor.blackColor,
                  radius: 19,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width:80,
                    height: 80,
                    child: Image.network("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepnglogos.com%2Fpics%2Ffood&psig=AOvVaw2rpjjXsAwOKq2RvDCgD6ZR&ust=1669301030135000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLjOh4nFxPsCFQAAAAAdAAAAABAE",fit: BoxFit.cover,)),
              ],
            )
          ],
        ),
      ),
    );
  }
}