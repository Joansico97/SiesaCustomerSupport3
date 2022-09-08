import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:siesa_customer_support_web_3/utils/colors.dart';
import 'package:siesa_customer_support_web_3/utils/size.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.fullWidth(context),
          padding: size.symmetric(context, .002, .003),
          color: colors.azulSiesa,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height(context, .02)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'STAND BY ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'EXCLUSIVO ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    'PARA CLIENTES SIESA ENTERPRISE Y SIESA CLOUD SBS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height(context, .001)),
              const Text(
                'Horario de atención de lunes a viernes de 5:45 p.m. a 7:15 a.m., sábados, domingos y festivos 24horas.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: size.height(context, .001)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Número celular de Soporte Stand By: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '3176426952',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height(context, .001)),
              const Text(
                '(Llamadas y WhatsApp)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: size.height(context, .06)),
              Container(
                width: size.width(context, .8),
                height: 1,
                color: Colors.white,
              ),
              SizedBox(height: size.height(context, .06)),
              const Text(
                'CALL CENTER PARA CLIENTES DE SOPORTE DE SIESA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              SizedBox(height: size.height(context, .001)),
              const Text(
                'Horario de atención de lunes a viernes de 7:15 a.m. a 5:45 p.m. y sábados de 8:00 a.m. a 12:30 p.m.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: size.height(context, .02)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Cali',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Avenida 3AN # 26N-83',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'PBX: (+57) (2) 4865888',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Contact Center: (+57) (2) 4865595',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: size.width(context, .02)),
                  Column(
                    children: const [
                      Text(
                        'Bogotá',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Calle 98A # 51 - 69',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'PBX: (+57) (1) 7455111',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Contact Center: (+57) (1) 7455222',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: size.width(context, .02)),
                  Column(
                    children: const [
                      Text(
                        'Medellín',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Carrera 48 # 20-34 | Oficina 909',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Centro Empresarial Ciudad del Río | Torre 1 ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'PBX: (+57) (4) 6040575',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Contact Center: (+57) (4) 6050070',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: size.width(context, .02)),
                  Column(
                    children: const [
                      Text(
                        'Barranquilla',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Carrera 42H # 80-48',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'PBX: (+57) (5) 3853111',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Contact Center: (+57) (5) 3852929',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: size.width(context, .02)),
                  Column(
                    children: const [
                      Text(
                        'Pereira',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Av. Circunvalar, Calle 7 # 15-37',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'PBX: (+57) (6) 3400540',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Contact Center: (+57) (6) 3400999',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height(context, .02)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        'México D.F',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Bosques de Duraznos 127',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Colonia Bosques de las Lomas.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'PBX: (+52) (55) 5093 0000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: size.width(context, .02)),
                  Column(
                    children: const [
                      Text(
                        'Caracas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Avenida Araure Entre Calles Roraima',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'y las Lomas, Quinta Trebolca.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Urbanización Chuao, ZP 1060',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'PBX: (+58) (212) 4150282 / (+58) (212) 9911604',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: size.width(context, .02)),
                  Column(
                    children: const [
                      Text(
                        'Lima',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Avenida Alfredo Benavides 2150',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Centro empresarial Benavides, oficina 502',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Miraflores – Lima',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Teléfono: +51 925 19 73 76',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height(context, .06)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      final Uri url =
                          Uri.parse('https://www.facebook.com/siesaoficial/');
                      launchUrl(url);
                    },
                    child: const Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: size.width(context, .02)),
                  InkWell(
                    onTap: () {
                      final Uri url =
                          Uri.parse('https://twitter.com/Siesa_Oficial');
                      launchUrl(url);
                    },
                    child: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: size.width(context, .02)),
                  InkWell(
                    onTap: () {
                      final Uri url =
                          Uri.parse('https://www.instagram.com/siesaoficial/');
                      launchUrl(url);
                    },
                    child: const Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: size.width(context, .02)),
                  InkWell(
                    onTap: () {
                      final Uri url = Uri.parse(
                          'https://co.linkedin.com/company/siesa?original_referer=https%3A%2F%2Fwww.siesa.com%2F');
                      launchUrl(url);
                    },
                    child: const Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: size.width(context, .02)),
                  InkWell(
                    onTap: () {
                      final Uri url = Uri.parse(
                          'https://www.youtube.com/channel/UC7IICuHmOy3caAdbQ8iUIdQ');
                      launchUrl(url);
                    },
                    child: const Icon(
                      FontAwesomeIcons.youtube,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height(context, .01)),
            ],
          ),
        ),
        Container(
          height: size.height(context, .1),
          width: size.fullWidth(context),
          padding: size.all(context, .002),
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Siesa | Siesa Customer Support',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(height: 5),
              Text(
                'Todos los derechos reservados © 2018 - 2022',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
