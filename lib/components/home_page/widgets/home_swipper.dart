import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:siesa_customer_support_web_3/utils/utils.dart';

class HomeSwipper extends StatelessWidget {
  const HomeSwipper({
    Key? key,
    required this.mensajePrincial,
    required this.mensajeSecundario,
  }) : super(key: key);

  final String mensajePrincial;
  final String mensajeSecundario;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Swiper(
        itemCount: 8,
        layout: SwiperLayout.STACK,
        itemWidth: size.fullWidth(context),
        itemBuilder: (_, int index) {
          return InkWell(
            onTap: () {
              print('presiono el index: ${index}');
            },
            child: Stack(
              children: [
                SizedBox(
                  width: size.fullWidth(context),
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    placeholder: AssetImage('assets/images/no-image.jpg'),
                    image: AssetImage(
                        'assets/images/stocks/stock_0${index + 1}.png'),
                  ),
                ),
                Container(
                  width: size.fullWidth(context),
                  color: Colors.black38,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          mensajePrincial,
                          textAlign: TextAlign.center,
                          style: styles.headerTwo(color: Colors.white),
                        ),
                        SizedBox(height: size.height(context, .01)),
                        Text(
                          mensajeSecundario,
                          textAlign: TextAlign.center,
                          style: styles.regularMedium(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
