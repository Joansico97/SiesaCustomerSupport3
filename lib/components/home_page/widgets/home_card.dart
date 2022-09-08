import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.child,
    required this.color,
    required this.image,
  }) : super(key: key);

  final Widget child;
  final Color color;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height(context, .35),
      width: size.width(context, .37),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF01003E).withOpacity(.15),
            offset: const Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: size.width(context, .15),
            height: size.height(context, .35),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: FadeInImage(
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/images/no-image.jpg'),
                image: image,
              ),
            ),
          ),
          Container(
            width: size.width(context, .22),
            height: size.height(context, .35),
            padding: size.symmetric(context, .02, .01),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: color),
            child: child,
          ),
        ],
      ),
    );
  }
}
