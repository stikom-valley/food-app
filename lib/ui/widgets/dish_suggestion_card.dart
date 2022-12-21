part of 'widgets.dart';

class DishSuggestionCard extends StatefulWidget {
  const DishSuggestionCard({super.key});

  @override
  State<DishSuggestionCard> createState() => _DishSuggestionCardState();
}

class _DishSuggestionCardState extends State<DishSuggestionCard> {
  int selectedItem=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
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
                child: DishSuggestionCardItem(dishIcon: Icons.ramen_dining,dishName: "Ramen", isSelected: selectedItem==3?true:false,),),
          ],
        ),
      ),
    );
  }
}


