import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siesa_customer_support_web_3/routes/router.dart';
import 'package:siesa_customer_support_web_3/services/services.dart';

import 'utils/utils.dart';
part 'config/app_config.dart';

Future<void> main() async {
  await initConfig();
  runApp(const ProviderScope(child: SiesaCustomerSupport()));
}

class SiesaCustomerSupport extends StatelessWidget {
  const SiesaCustomerSupport({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Siesa Customer Support',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      localizationsDelegates: const [
        AppLocalizationService.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
      ],
      localeResolutionCallback: _localeCallback,
      routeInformationProvider: GoRouterConfig.router.routeInformationProvider,
      routeInformationParser: GoRouterConfig.router.routeInformationParser,
      routerDelegate: GoRouterConfig.router.routerDelegate,
      scrollBehavior: _AppScrollBehavior(),
    );
  }
}
