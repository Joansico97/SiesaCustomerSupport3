import 'package:flutter/material.dart';
import 'package:siesa_customer_support_web_3/utils/utils.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    Key? key,
    required this.message,
    required this.iconButton,
    required this.buttonFunction,
    required this.color,
  }) : super(key: key);

  final String message;
  final IconData iconButton;
  final Function buttonFunction;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        buttonFunction();
      },
      child: Container(
        padding: size.symmetric(context, .01, .005),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              iconButton,
              color: Colors.white,
              size: 15,
            ),
            SizedBox(width: size.width(context, .005)),
            Text(
              message,
              overflow: TextOverflow.ellipsis,
              style: styles.boldSmall(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
