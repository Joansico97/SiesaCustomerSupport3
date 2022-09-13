import 'package:flutter/material.dart';

import '../../global_widgets/global_widgets.dart';
import '../../models/models.dart';
import '../../utils/utils.dart';
import 'widgets/course_card_web.dart';
import 'widgets/little_filtter.dart';
import 'widgets/opcion_lateral.dart';

part "./views/cursos_virtuales_web_view.dart";

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
