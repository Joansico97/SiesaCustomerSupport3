part of '../home_page.dart';

class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({Key? key}) : super(key: key);

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
      body: SizedBox(
        height: size.fullHeight(context),
        width: size.fullWidth(context),
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    padding: size.symmetric(context, .05, .01),
                    height: size.fullHeight(context),
                    width: size.fullWidth(context),
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
