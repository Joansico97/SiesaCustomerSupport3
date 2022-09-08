import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:siesa_customer_support_web_3/utils/utils.dart';

class SingleCardRow extends StatelessWidget {
  const SingleCardRow({
    Key? key,
    required this.backgroundColor,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.buttonColor,
    required this.buttonText,
    required this.route,
  }) : super(key: key);

  final Color backgroundColor;
  final Color buttonColor;
  final String imageUrl;
  final String title;
  final String subTitle;
  final String buttonText;
  final String route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push('/${route}'),
      child: Container(
        margin: size.all(context, .015),
        padding: size.all(context, .015),
        // height: 400,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF01003E).withOpacity(.15),
              offset: const Offset(0, 2),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              height: 50,
              imageUrl,
              fit: BoxFit.cover,
            ),
            SizedBox(height: size.height(context, .02)),
            Text(
              title,
              style: styles.boldLarge(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              subTitle,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: styles.regularMedium(color: Colors.white),
            ),
            Expanded(child: Container()),
            Container(
              padding: size.symmetric(context, .002, .003),
              // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: buttonColor,
              ),
              alignment: Alignment.center,
              child: Text(
                buttonText,
                style: styles.regularMedium(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
