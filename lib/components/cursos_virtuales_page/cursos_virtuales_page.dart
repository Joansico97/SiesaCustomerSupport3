import 'package:flutter/material.dart';
import 'package:siesa_customer_support_web_3/components/cursos_virtuales_page/views/cursos_virtuales_web_view.dart';

class CursosVirtualesPage extends StatelessWidget {
  const CursosVirtualesPage({
    Key? key,
    required this.curso,
  }) : super(key: key);

  final String curso;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth > 1024)
            ? CursosVirtualesWebView()
            : (constraints.maxWidth > 515)
                ? Container()
                : Container();
      },
    );
  }
}
