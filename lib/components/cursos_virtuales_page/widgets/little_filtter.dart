import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../models/little_filtter_model.dart';
import '../../../utils/utils.dart';

class LittleFiltter extends StatefulWidget {
  const LittleFiltter({
    Key? key,
    required this.opcion,
  }) : super(key: key);

  final LittleFiltterModel opcion;

  @override
  State<LittleFiltter> createState() => _LittleFiltterState();
}

class _LittleFiltterState extends State<LittleFiltter> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          for (LittleFiltterModel element in listaOpcionespequenas) {
            element.active = false;
          }
          widget.opcion.active = !widget.opcion.active!;
        });

        context.push('/cursosVirtuales/${widget.opcion.route}');
      },
      child: widget.opcion.active!
          ? Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              margin: const EdgeInsets.symmetric(horizontal: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colors.azulSiesa,
              ),
              child: Center(
                child: Text(
                  widget.opcion.text!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              margin: const EdgeInsets.symmetric(horizontal: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: colors.azulSiesa,
                ),
              ),
              child: Center(
                child: Text(
                  widget.opcion.text!,
                  style: TextStyle(
                    color: colors.azulSiesa,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
    );
  }
}
