import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siesa_customer_support_web_3/global_widgets/app_bar.dart';
import 'package:siesa_customer_support_web_3/global_widgets/footer.dart';
import 'package:siesa_customer_support_web_3/utils/colors.dart';
import 'package:siesa_customer_support_web_3/utils/size.dart';

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
