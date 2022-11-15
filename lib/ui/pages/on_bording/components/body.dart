import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/on_bording/components/on_bording_content.dart';
import 'package:food_app/ui/widgets/widgets.dart';
import 'package:food_app/utils/app_color.dart';
import 'package:food_app/utils/app_size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title": "Select a restaurant",
      "text": "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
      "image": "assets/images/onbording1.png"
    },
    {
      "title": "Order food you like",
      "text": "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
      "image": "assets/images/onbording2.png"
    },
    {
      "title": "Deliver to your home",
      "text": "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
      "image": "assets/images/onbording3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => OnBordingContent(
                image: splashData[index]["image"],
                title: splashData[index]['title'],
                text: splashData[index]['text'],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  const Spacer(flex: 3),
                  BaseButton(
                      buttonColor: AppColor.mainColor,
                      child: Container(
                        width: 270,
                        child: const Center(
                          child: Text("Continue"),
                        ),
                      ),
                      onTap: () {}),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? AppColor.mainColor : AppColor.mainColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
