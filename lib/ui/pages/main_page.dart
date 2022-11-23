part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircularIconButton(
                        icon: Icons.person_outline,
                        iconColor: AppColor.greyColor,
                        shadowColor: AppColor.greyColor.withOpacity(0.6),
                        radius: 21,
                        onPressed: () {
                          //TODO:Navigate to user profile screen
                        },
                      ),
                      Column(
                        children: const [
                          Text(
                            'Delivering to',
                            style: TextStyle(
                                color: AppColor.blackColor, fontSize: 15),
                          ),
                          Text(
                            "Leonard",
                            style: TextStyle(
                                color: AppColor.redColor, fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CircularIconButton(
                            icon: Icons.search,
                            iconColor: AppColor.greyColor,
                            shadowColor: AppColor.greyColor.withOpacity(0.6),
                            radius: 21,
                            onPressed: () {
                              //TODO:Implete search functionality
                            },
                          ),
                          CircularIconButton(
                            icon: Icons.shopping_cart_outlined,
                            iconColor: AppColor.greyColor,
                            shadowColor: AppColor.greyColor.withOpacity(0.6),
                            radius: 21,
                            onPressed: () {
                              //TODO:Navigate to cart screen
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Let\'s Eat !!!",style: AppTypography.blackw400.copyWith(fontSize: 15),),
                      RestaurantOfTheWeekCard(),
                      Text("What are you craving for ?",style: AppTypography.blackw400.copyWith(fontSize: 15),),
                      DishSuggestionCard(),
                      Row(
                        children: [
                          Text("Recommended ",style: AppTypography.blackw400.copyWith(fontSize: 15),),
                          Icon(Icons.local_pizza_outlined,size: 30,),
                        ],
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


