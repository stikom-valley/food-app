part of 'widgets.dart';

class RestaurantOfTheWeekCard extends StatelessWidget {
  const RestaurantOfTheWeekCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: MediaQuery.of(context).size.height * 0.23,
      decoration: BoxDecoration(
          color: AppColor.mainColor,
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Padding(
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
                    const CircularIconButton(
                      icon: Icons.arrow_forward,
                      shadowColor: AppColor.mainColor,
                      iconColor: AppColor.blackColor,
                      radius: 19,
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: -75,
            top: MediaQuery.of(context).size.height*0.01,
            child: SizedBox(
                width:180,
                height: MediaQuery.of(context).size.height*0.24,
                child: Image.asset("assets/images/noodles.png")),
          ),
        ],
      ),
    );
  }
}