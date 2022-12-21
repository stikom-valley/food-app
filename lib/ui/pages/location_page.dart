part of 'pages.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/binocular_girl.png"),
              Column(
                children: [
                  Text(
                    "Hi, nice to meet you!",
                    style: AppTypography.blackw400.copyWith(fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Set your location to start exploring restaurants around you",
                    style: AppTypography.greyw400.copyWith(fontSize: 18),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: [
                  BaseButton(
                      textColor: AppColor.whiteColor,
                      buttonColor: AppColor.mainColor,
                      child: Text("Use current location",
                          style:
                              AppTypography.whitew400.copyWith(fontSize: 18)),
                      onTap: () {
                        //TODO: Call/Implement getLocation Function here
                      }),
                  TextButton(
                      onPressed: () {
                        //TODO: Call/Implement setLocationManually Function here
                      },
                      child: Text(
                        "Set your location manually",
                        style: AppTypography.mainw400.copyWith(fontSize: 18),
                      ))
                ],
              ),
              Text(
                "We only access your location while you are using the app to improve your experience",
                style: AppTypography.greyw400.copyWith(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
