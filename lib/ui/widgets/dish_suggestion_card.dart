import 'package:flutter/material.dart';
import 'package:food_app/ui/widgets/circular_icon_button.dart';
import 'package:food_app/ui/widgets/dish_suggestion_card_item.dart';
import 'package:food_app/utils/app_color.dart';

class DishSuggestionCard extends StatefulWidget {
  @override
  State<DishSuggestionCard> createState() => _DishSuggestionCardState();
}

class _DishSuggestionCardState extends State<DishSuggestionCard> {
  int selectedItem=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: (){
                  setState(() {
                    selectedItem=0;
                  });
                },
                child: DishSuggestionCardItem(dishIcon: Icons.local_pizza,dishName: "Pizza", isSelected: selectedItem==0?true:false,),),
            GestureDetector(
                onTap: (){
                  setState(() {
                    selectedItem=1;
                  });
                },
                child: DishSuggestionCardItem(dishIcon: Icons.add,dishName: "Burger", isSelected: selectedItem==1?true:false,),),
            GestureDetector(
                onTap: (){
                  setState(() {
                    selectedItem=2;
                  });
                },
                child: DishSuggestionCardItem(dishIcon: Icons.add,dishName: "Sweet", isSelected: selectedItem==2?true:false,),),
            GestureDetector(
                onTap: (){
                  setState(() {
                    selectedItem=3;
                  });
                },
                child: DishSuggestionCardItem(dishIcon: Icons.ramen_dining,dishName: "Pizza", isSelected: selectedItem==3?true:false,),),
          ],
        ),
      ),
    );
  }
}


