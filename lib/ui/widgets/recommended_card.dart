part of 'widgets.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColor.greyColor.withOpacity(0.5))),
      child: Padding(
        padding: const EdgeInsets.only(left: 18,right: 18,bottom: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 140,
                  margin: const EdgeInsets.only(top: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.yellowColor,
                  ),
                ),
                Image.asset(height: 150,width:double.infinity,"assets/images/pizza.png")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Farm Fresh Pizza",
                  style: AppTypography.blackw400,
                ),
                Text(
                  "\$20.25",
                  style: AppTypography.blackw400,
                ),
              ],
            ),
            Text(
              "Dominos",
              style: AppTypography.redw400,
            )
          ],
        ),
      ),
    );
  }
}
