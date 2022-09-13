import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../models/models.dart';
import '../../../utils/utils.dart';

class OpcionLateral extends StatefulWidget {
  const OpcionLateral({
    Key? key,
    required this.opcion,
  }) : super(key: key);

  final OpcionLateralModel opcion;

  @override
  State<OpcionLateral> createState() => _OpcionLateralState();
}

class _OpcionLateralState extends State<OpcionLateral> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          for (OpcionLateralModel element in listadoLateralCursos) {
            element.active = false;
          }
          widget.opcion.active = !widget.opcion.active!;
        });
        context.go('/cursosVirtuales/${widget.opcion.route}');
      },
      child: widget.opcion.active!
          ? Container(
              width: size.width(context, .02),
              height: size.height(context, .007),
              alignment: Alignment.center,
              color: colors.grisSiesa,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.opcion.name!,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          : Container(
              width: size.width(context, .02),
              height: size.height(context, .007),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: colors.grisSiesa),
                  left: BorderSide(width: 1.0, color: colors.grisSiesa),
                  right: BorderSide(width: 1.0, color: colors.grisSiesa),
                  bottom: BorderSide(width: 1.0, color: colors.grisSiesa),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.opcion.name!,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                  color: colors.grisSiesaTextos,
                ),
              ),
            ),
    );
  }
}
