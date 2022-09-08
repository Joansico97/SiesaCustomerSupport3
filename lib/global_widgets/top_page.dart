import 'package:flutter/material.dart';

import '../utils/utils.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: colors.azulSiesa,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              child: RotatedBox(
                quarterTurns: -1,
                child: Container(
                  width: 200,
                  height: 50,
                  margin: const EdgeInsets.all(18),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: colors.azulSecundario,
                  ),
                  child: const Text(
                    'Chat de ayuda - Página',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: child,
    );
  }
}
