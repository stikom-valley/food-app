import 'package:flutter/material.dart';
import 'package:food_app/utils/app_color.dart';
import 'package:food_app/utils/app_typography.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/binocular girl.png"),
              Column(
                children: [
                  Text("Hi, nice to meet you!", style: AppTypography.blackw400.copyWith(fontSize: 22),textAlign: TextAlign.center,),
                  Text("Set your location to start exploring restaurants around you", style: AppTypography.greyw400.copyWith(fontSize: 18),textAlign: TextAlign.center,)
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){
                    //TODO: Call/Implement getLocation Function here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.mainColor,
                    minimumSize: const Size(double.infinity,45)
                  ), child: Text("Use current location", style: AppTypography.whitew400.copyWith(fontSize: 18),)),
                  TextButton(onPressed: (){
                    //TODO: Call/Implement setLocationManually Function here
                  },
                      child:  Text("Set your location manually",style: AppTypography.mainw400.copyWith(fontSize: 18),))
                ],
              ),
              Text("We only access your location while you are using the app to improve your experience",style: AppTypography.greyw400.copyWith(fontSize: 15),textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}
