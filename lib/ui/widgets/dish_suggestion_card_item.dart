part of 'widgets.dart';

class DishSuggestionCardItem extends StatelessWidget {
  final String dishIcon;
  final String dishName;
  final bool isSelected;
  const DishSuggestionCardItem({super.key, required this.dishIcon, required this.dishName,required this.isSelected});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.2,
      decoration: BoxDecoration(
        color: isSelected?AppColor.yellowColor:AppColor.whiteColor,
        border: Border.all(color: isSelected?AppColor.yellowColor:AppColor.whiteColor),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              blurRadius: 5, color: isSelected?AppColor.yellowColor.withOpacity(0.8):AppColor.greyColor.withOpacity(0.4), spreadRadius: 1)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
        child: Column(
          children: [
            Image.asset(dishIcon,height:40),
            Text(dishName,style: AppTypography.blackw400.copyWith(fontSize: 11),),
            const CircularIconButton(icon: Icons.arrow_forward_ios, shadowColor: Colors.transparent, iconColor: AppColor.whiteColor, radius: 12,backgroundColor: AppColor.blackColor,iconSize: 13,)
          ],
        ),
      ),
    );
  }
}