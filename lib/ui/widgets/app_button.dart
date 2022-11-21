part of 'widgets.dart';

class BaseButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final Widget child;
  final Function onTap;
  final Size minimumSize;
  const BaseButton({
    Key? key,
    this.textColor = AppColor.whiteColor,
    this.buttonColor = AppColor.mainColor,
    required this.child,
    required this.onTap,
    this.minimumSize = const Size(double.infinity,45)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        foregroundColor: MaterialStateProperty.all(textColor),
          minimumSize: MaterialStateProperty.all(minimumSize)
      ),
      child: child,
    );
  }
}
