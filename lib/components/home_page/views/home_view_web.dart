part of '../home_page.dart';

class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: size.height(context, .013),
        flexibleSpace: const CustomAppBar(),
      ),
      floatingActionButton: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              onPressed: () {},
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
      body: Container(),
    );
  }
}
