part of 'pages.dart';

class ExamplePage extends StatelessWidget {
  final String argsExample;
  const ExamplePage({
    Key? key,
    required this.argsExample,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> appColorList = [
      _colorPlate(
        title: "bg app",
        color: AppColor.bgAppColor,
      ),
      _colorPlate(
        title: "black",
        color: AppColor.blackColor,
      ),
      _colorPlate(
        title: "blue",
        color: AppColor.blueColor,
      ),
      _colorPlate(
        title: "green",
        color: AppColor.greenColor,
      ),
      _colorPlate(
        title: "grey",
        color: AppColor.greyColor,
      ),
      _colorPlate(
        title: "light yellow",
        color: AppColor.lightYellowColor,
      ),
      _colorPlate(
        title: "main color",
        color: AppColor.mainColor,
      ),
      _colorPlate(
        title: "red",
        color: AppColor.redColor,
      ),
      _colorPlate(
        title: "white",
        color: AppColor.whiteColor,
      ),
      _colorPlate(
        title: "yellow",
        color: AppColor.yellowColor,
      ),
    ];

    List<Widget> appTypographyList = [
      const Text(
        "Default Font Roboto Black",
      ),
      Text(
        "Poppins Normal Black Color",
        style: AppTypography.blackw400,
      ),
      Text(
        "Poppins Normal Red Color",
        style: AppTypography.redw400,
      ),
      Text(
        "Poppins Normal White Color",
        style: AppTypography.whitew400,
      ),
      Text(
        "Poppins Normal Blue Color",
        style: AppTypography.bluew400,
      ),
      Text(
        "Poppins Normal Grey Color",
        style: AppTypography.greyw400,
      ),
    ];
    return Scaffold(
      backgroundColor: AppColor.purpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: appColorList,
            ),
            const SizedBox(height: 50),
            ...appTypographyList
          ],
        ),
      ),
    );
  }

  Widget _colorPlate({required String title, required Color color}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                spreadRadius: 0,
                offset: const Offset(0, 4),
                color: const Color(0xff828282).withOpacity(0.25),
              )
            ],
          ),
        ),
        Text(
          title,
          style: AppTypography.blackw400,
        ),
      ],
    );
  }
}
