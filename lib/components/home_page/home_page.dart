import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:siesa_customer_support_web_3/utils/utils.dart';

import '../../global_widgets/global_widgets.dart';
import 'widgets/button_icon.dart';
import 'widgets/home_card.dart';
import 'widgets/home_swipper.dart';
import 'widgets/search_bar.dart';
import 'widgets/single_card_row.dart';

part './views/home_view_web.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.fullHeight(context),
          width: size.fullWidth(context),
          child: LayoutBuilder(builder: (context, constraints) {
            return (constraints.maxWidth >= 1024)
                ? HomeViewWeb()
                : Container(color: colors.morado);
          }),
        ),
      ),
    );
  }
}
