part of 'widgets.dart';

class BaseButton extends StatelessWidget {
  final Color buttonColor;
  final Widget child;
  final Function onTap;
  const BaseButton({
    Key? key,
    required this.buttonColor,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
      ),
      child: child,
    );
  }
}
