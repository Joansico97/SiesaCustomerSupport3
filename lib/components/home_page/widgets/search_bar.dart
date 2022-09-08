import 'package:flutter/material.dart';
import 'package:siesa_customer_support_web_3/utils/utils.dart';

import '../../../ui/input_decorations.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Expanded(
          child: Image.asset(
            'assets/images/search_banner.jpg',
            fit: BoxFit.contain,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '¿Cómo podemos ayudarle hoy?',
              style: styles.headerSearch(color: colors.azulSiesa),
            ),
            SizedBox(height: size.height(context, .07)),
            Container(
              width: size.width(context, .6),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF01003E).withOpacity(.15),
                    offset: const Offset(0, 2),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Container(
                padding: size.symmetric(context, .015, 0),
                child: TextField(
                  decoration: InputDecorations.searchInputDecoration(
                    hintText: 'Escriba su inquietud o palabra clave aquí',
                    labelText: 'Escriba su inquietud o palabra clave aquí',
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
