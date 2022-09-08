part of '../home_page.dart';

class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({Key? key}) : super(key: key);

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
                  SizedBox(
                    width: size.fullWidth(context),
                    height: size.height(context, .2),
                    child: const HomeSwipper(
                        mensajePrincial: 'mensajePrincial',
                        mensajeSecundario: 'mensajeSecundario'),
                  ),
                  Container(
                    padding: size.symmetric(context, .05, .01),
                    // height: size.fullHeight(context),
                    // width: size.fullWidth(context),
                    child: Column(
                      children: [
                        const SearchBar(),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HomeCard(
                                color: colors.azulSiesa,
                                image: const AssetImage(
                                    'assets/images/stocks/stock_03.png'),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '¿Requiere solicitar un servicio al Área de Soporte?',
                                      style: styles.boldMedium(
                                        color: Colors.white,
                                      ),
                                      maxLines: 2,
                                    ),
                                    SizedBox(height: size.height(context, .03)),
                                    Column(
                                      children: [
                                        ButtonIcon(
                                          message: 'Chat de Soporte',
                                          iconButton: FontAwesomeIcons.message,
                                          color: colors.aqua,
                                          buttonFunction: () {
                                            print('hola mundo');
                                          },
                                        ),
                                        SizedBox(
                                            height: size.height(context, .02)),
                                        ButtonIcon(
                                          message:
                                              'Chat de Facturación Electrónica',
                                          iconButton: FontAwesomeIcons.message,
                                          color: colors.azulSecundario,
                                          buttonFunction: () {
                                            print('hola mundo');
                                          },
                                        ),
                                        SizedBox(
                                            height: size.height(context, .02)),
                                        ButtonIcon(
                                          message: 'Chat de Pos Enterprise',
                                          iconButton: FontAwesomeIcons.message,
                                          color: colors.morado,
                                          buttonFunction: () {
                                            print('hola mundo');
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: size.width(context, .03)),
                              HomeCard(
                                color: colors.grisSiesa,
                                image: const AssetImage(
                                    'assets/images/stocks/stock_05.png'),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '¿Necesita hacer seguimiento y/o solicitar gestión a un Ticket o una OP?',
                                      style: styles.boldMedium(),
                                      maxLines: 3,
                                    ),
                                    SizedBox(height: size.height(context, .03)),
                                    ButtonIcon(
                                      message: 'Chat de seguimiento',
                                      iconButton: FontAwesomeIcons.message,
                                      color: colors.azulSiesa,
                                      buttonFunction: () {
                                        print('hola mundo');
                                      },
                                    ),
                                    SizedBox(height: size.height(context, .01)),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        'Consulte y gestione aquí sus tickets.',
                                        style: styles.regularSmall(
                                            color: colors.azulSecundario),
                                      ),
                                    ),
                                    SizedBox(
                                        height: size.height(context, .002)),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        'Consulte aquí todas sus OPs.',
                                        style: styles.regularSmall(
                                            color: colors.azulSecundario),
                                      ),
                                    ),
                                    SizedBox(
                                        height: size.height(context, .002)),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        'Casos en los cuales sus tickets podrán ser cerrados.',
                                        style: styles.regularSmall(
                                            color: colors.azulSecundario),
                                      ),
                                    ),
                                    SizedBox(
                                        height: size.height(context, .002)),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        'Posibilidades para reabrir los tickets',
                                        style: styles.regularSmall(
                                            color: colors.azulSecundario),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 1,
                              mainAxisSpacing: 1,
                            ),
                            itemCount: tarjetasHome.length,
                            itemBuilder: (context, index) => SingleCardRow(
                              backgroundColor:
                                  tarjetasHome[index].backgroundColor!,
                              buttonColor: tarjetasHome[index].buttonColor!,
                              imageUrl: tarjetasHome[index].imageUrl!,
                              title: tarjetasHome[index].title!,
                              subTitle: tarjetasHome[index].subTitle!,
                              buttonText: tarjetasHome[index].buttonText!,
                              route: tarjetasHome[index].route!,
                            ),
                          ),
                        ),
                      ],
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
