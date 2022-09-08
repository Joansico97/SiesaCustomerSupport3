import 'package:flutter/material.dart';
import 'package:siesa_customer_support_web_3/global_widgets/global_widgets.dart';
import 'package:siesa_customer_support_web_3/utils/utils.dart';

class CursosVirtualesWebView extends StatelessWidget {
  const CursosVirtualesWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopPage(
      child: SizedBox(
        height: size.fullHeight(context),
        width: size.fullWidth(context),
        child: Column(
          children: [
            const Header(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
