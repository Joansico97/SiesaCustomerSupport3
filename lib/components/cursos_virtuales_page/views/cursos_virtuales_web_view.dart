part of "../cursos_virtuales_page.dart";

class CursosVirtualesWebView extends StatelessWidget {
  const CursosVirtualesWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopPage(
      child: SizedBox(
        height: size.fullHeight(context),
        width: size.fullWidth(context),
        child: Column(
          children: [
            const Header(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  Row(
                    children: [
                      Expanded(flex: 1, child: Container()),
                      Expanded(
                        flex: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width(context, .016),
                              color: Colors.white,
                              child: Column(
                                children: [
                                  ...List<Widget>.of(
                                    listadoLateralCursos.map(
                                      (OpcionLateralModel value) {
                                        return OpcionLateral(
                                          opcion: value,
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ...List<Widget>.of(
                                        listaOpcionespequenas.map(
                                          (LittleFiltterModel value) {
                                            return LittleFiltter(
                                              opcion: value,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                children: [
                                  Container(
                                    color: colors.grisSiesa,
                                    padding: EdgeInsets.all(5),
                                    child: GridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        childAspectRatio: 2 / 3,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                      ),
                                      itemCount: listaCursosVirtuales.length,
                                      itemBuilder: (context, index) =>
                                          CourseCardWeb(
                                        modelo: CursosVirtualesModel.fromJson(
                                          {
                                            'courseName':
                                                listaCursosVirtuales[index]
                                                    .courseName!,
                                            'ponenteName':
                                                listaCursosVirtuales[index]
                                                    .ponenteName!,
                                            'date': listaCursosVirtuales[index]
                                                .date!,
                                            'time': listaCursosVirtuales[index]
                                                .time!,
                                          },
                                        ),
                                        image: listaImagenes[
                                            listaCursosVirtuales[index].type!],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
