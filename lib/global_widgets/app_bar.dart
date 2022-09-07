import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/utils.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height(context, .04),
          width: size.fullWidth(context),
          color: colors.azulSecundario,
          padding: size.symmetric(context, .01, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  print('hola mundo');
                },
                child: const Text(
                  'Comunicados',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: size.width(context, .01)),
              InkWell(
                onTap: () {
                  print('hola mundo');
                },
                child: const Text(
                  'Manuales',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: size.width(context, .01)),
              InkWell(
                onTap: () => context.go('/cursosVirtuales/todos'),
                child: const Text(
                  'Cursos virtuales',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: size.width(context, .01)),
              Container(
                height: 20,
                width: 1,
                color: Colors.white,
              ),
              SizedBox(width: size.width(context, .01)),
              InkWell(
                onTap: () {
                  final Uri url =
                      Uri.parse('https://www.facebook.com/siesaoficial/');
                  launchUrl(url);
                },
                child: Icon(
                  FontAwesomeIcons.facebook,
                  size: 20,
                  color: colors.azulSiesa,
                ),
              ),
              SizedBox(width: size.width(context, .01)),
              InkWell(
                onTap: () {
                  final Uri url =
                      Uri.parse('https://twitter.com/Siesa_Oficial');
                  launchUrl(url);
                },
                child: Icon(
                  FontAwesomeIcons.twitter,
                  size: 20,
                  color: colors.azulSiesa,
                ),
              ),
              SizedBox(width: size.width(context, .01)),
              InkWell(
                onTap: () {
                  final Uri url =
                      Uri.parse('https://www.instagram.com/siesaoficial/');
                  launchUrl(url);
                },
                child: Icon(
                  FontAwesomeIcons.instagram,
                  size: 20,
                  color: colors.azulSiesa,
                ),
              ),
              SizedBox(width: size.width(context, .01)),
              InkWell(
                onTap: () {
                  final Uri url = Uri.parse(
                      'https://co.linkedin.com/company/siesa?original_referer=https%3A%2F%2Fwww.siesa.com%2F');
                  launchUrl(url);
                },
                child: Icon(
                  FontAwesomeIcons.linkedin,
                  size: 20,
                  color: colors.azulSiesa,
                ),
              ),
              SizedBox(width: size.width(context, .01)),
            ],
          ),
        ),
        Container(
          // height: size.height(context, .09),
          color: colors.azulSiesa,
          padding: size.symmetric(context, .02, .01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              InkWell(
                onTap: () => context.go('/home'),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: SvgPicture.asset('assets/svg/Logo-Siesa-02.svg'),
                ),
              ),
              Expanded(child: Container()),
              InkWell(
                onTap: () => context.go('/home'),
                child: const Text(
                  'Inicio',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              PopupMenuButton<SupportType>(
                offset: Offset(0, 30),
                tooltip: '',
                itemBuilder: (BuildContext context) =>
                    SupportType.values.map((SupportType value) {
                  return PopupMenuItem<SupportType>(
                    value: value,
                    onTap: () => context.go('/${value.name}'),
                    child: Text(supportNames[value.index]),
                  );
                }).toList(),
                child: Row(
                  children: const [
                    Text(
                      'Soporte',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(width: size.width(context, .02)),
              PopupMenuButton<KnowledgeType>(
                offset: Offset(0, 30),
                tooltip: '',
                onSelected: (KnowledgeType result) {
                  switch (result) {
                    case KnowledgeType.autocapacitacion:
                      context.go('/autocapacitacion');
                      break;
                    case KnowledgeType.comunicado:
                      context.go('/comunicado');
                      break;
                    case KnowledgeType.cursosVirtuales:
                      context.go('/cursosVirtuales/todos');
                      break;
                    case KnowledgeType.entrenamiento:
                      context.go('/entrenamiento');
                      break;
                    case KnowledgeType.foros:
                      context.go('/foros');
                      break;
                    case KnowledgeType.manuales:
                      context.go('/manuales');
                      break;
                    default:
                  }
                },
                itemBuilder: (BuildContext context) =>
                    KnowledgeType.values.map((KnowledgeType value) {
                  return PopupMenuItem<KnowledgeType>(
                    value: value,
                    child: Text(knowledgeNames[value.index]),
                  );
                }).toList(),
                child: Row(
                  children: const [
                    Text(
                      'Conocimiento',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(width: size.width(context, .02)),
              PopupMenuButton<WarningType>(
                offset: Offset(0, 30),
                tooltip: '',
                itemBuilder: (BuildContext context) =>
                    WarningType.values.map((WarningType value) {
                  return PopupMenuItem<WarningType>(
                    value: value,
                    onTap: () => context.go('/${value.name}'),
                    child: Text(warningNames[value.index]),
                  );
                }).toList(),
                child: Row(
                  children: const [
                    Icon(
                      Icons.warning,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Incidente Crítico',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              PopupMenuButton<ProfileType>(
                offset: Offset(0, 30),
                tooltip: '',
                itemBuilder: (BuildContext context) =>
                    ProfileType.values.map((ProfileType value) {
                  return PopupMenuItem<ProfileType>(
                    value: value,
                    onTap: () => context.go('/${value.name}'),
                    child: Text(profileNames[value.index]),
                  );
                }).toList(),
                child: Row(
                  children: const [
                    Text(
                      'Perfil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(width: size.width(context, .02)),
              InkWell(
                onTap: () => context.go('/conocimiento'),
                child: Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'En vivo',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ],
    );
  }
}
