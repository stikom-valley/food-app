part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Main Page",
              style: AppTypography.blackw400.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 20),
            BaseButton(
                buttonColor: AppColor.mainColor,
                child: Text(
                  "Go to Example Page",
                  style: AppTypography.whitew400,
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.examplePage,
                    arguments: "some value",
                  );
                })
          ],
        ),
      ),
    );
  }
}
