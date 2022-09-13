import 'package:siesa_customer_support_web_3/utils/utils.dart';

import '../models/models.dart';

enum SupportType {
  actualizacionJava,
  nominaElectronica,
  documentoSoporte,
  nuevoRelease,
  chatSoporte,
  perfil,
  posEnterprise,
  cloudServices,
  facturacionElectronica,
  nominaWeb,
  crm,
  eCommerce,
  biable,
  solicitudServicios,
  solicitudRequerimiento,
  solicitudFormato,
  solicitudActualizacion,
  consultaTickets,
  consultarOP,
  pqrs,
}

enum KnowledgeType {
  autocapacitacion,
  cursosVirtuales,
  manuales,
  comunicado,
  foros,
  entrenamiento,
}

enum WarningType {
  incidenteCritico1,
  incidenteCritico2,
}

enum ProfileType {
  perfil,
  actualizacion,
  plantillas,
  cerrarSesion,
}

List<String> supportNames = [
  'Actualización JAVA 1.8 FE Siesa 8.5',
  'Nómina Electrónica',
  'Documento soporte no obligados FE',
  'Nuevo Release y mejoras Siesa 8.5 R210801',
  'Chat de Soporte',
  'Perfil Cliente',
  'Siesa POS Enterprise',
  'Siesa Cloud Services',
  'Facturación Electronica',
  'Siesa Nómina Web',
  'Siesa CRM',
  'Siesa e-Commerce',
  'Siesa Biable',
  'Solicitud de Servicios',
  'Solicitud Requerimiento',
  'Solicitud Formato',
  'Solicitud Actualización',
  'Consulta Tickets',
  'Consultar OP',
  'PQRS',
];

List<String> knowledgeNames = [
  'Autocapacitación Nómina Web',
  'Cursos Virtuales',
  'Manuales',
  'Comunicados',
  'Foros',
  'Entrenamiento Siesa E-Learning',
];

List<String> warningNames = [
  'Incidente crítico (Técnico - Siesa Cloud Services',
  'Incidente crítico (Funcional)',
];

List<String> profileNames = [
  'Perfil Cliente',
  'Actualización / Creación contactos',
  'Plantillas',
  'Cerrar Sesión',
];

List<OpcionLateralModel> listadoLateralCursos = [
  OpcionLateralModel.fromJson({
    'route': 'todos',
    'name': 'Todos los cursos virtuales',
    'active': true,
  }),
  OpcionLateralModel.fromJson({
    'route': 'noobligadosfe',
    'name': ' Errores Frecuentes Documento Soporte No Obligados FE - Siesa 8.5',
    'active': false,
  }),
  OpcionLateralModel.fromJson({
    'route': 'preg-experto-noobligadosfe',
    'name': 'Pregúntele al experto: Documento Soporte No Obligados FE',
    'active': false,
  }),
  OpcionLateralModel.fromJson({
    'route': 'reporte-evento-fe-venta',
    'name':
        'Reporte Eventos Factura Electrónica Venta / Resolución 000085 del 2022',
    'active': false,
  }),
  OpcionLateralModel.fromJson({
    'route': 'preg-experto-reporte-evento-fe-venta',
    'name':
        'Pregúntele al experto: Reporte Eventos Factura Electrónica Venta / Resolución 000085 del 2022',
    'active': false,
  }),
  OpcionLateralModel.fromJson({
    'route': 'siesaperu',
    'name': 'Siesa Perú',
    'active': false,
  }),
  OpcionLateralModel.fromJson({
    'route': 'medioscali',
    'name': 'Medios Municipales Cali',
    'active': false,
  }),
  OpcionLateralModel.fromJson({
    'route': 'mediosbogota',
    'name': 'Medios Municipales Bogotá',
    'active': false,
  }),
  OpcionLateralModel.fromJson({
    'route': 'certificados',
    'name': 'Mis Certificados',
    'active': false,
  }),
  OpcionLateralModel.fromJson({
    'route': 'cursos-grabados',
    'name': 'Cursos Grabados',
    'active': false,
  }),
];

List<LittleFiltterModel> listaOpcionespequenas = [
  LittleFiltterModel.fromJson({
    'route': 'todos',
    'text': 'todos',
    'active': true,
  }),
  LittleFiltterModel.fromJson({
    'route': 'type-85',
    'text': '8.5',
    'active': false,
  }),
  LittleFiltterModel.fromJson({
    'route': 'type-enterprise',
    'text': 'Enterprise',
    'active': false,
  }),
  LittleFiltterModel.fromJson({
    'route': 'type-nmwb',
    'text': 'Nómina Web',
    'active': false,
  }),
];

List<CursosVirtualesModel> listaCursosVirtuales = [
  CursosVirtualesModel.fromJson({
    'courseName': 'Configuración de descuentos en el pos',
    'ponenteName': 'Milena Ruiz',
    'date': 'Ago 25 2022',
    'time': '8:00 a.m. a 10:00 a.m.',
    'type': 0,
  }),
  CursosVirtualesModel.fromJson({
    'courseName': 'Transacciones de Activos Fijos Siesa Enterprise',
    'ponenteName': 'Maryudi Molina',
    'date': 'Ago 25 2022',
    'time': '8:00 a.m. a 10:00 a.m.',
    'type': 0,
  }),
  CursosVirtualesModel.fromJson({
    'courseName': 'Configuración de descuentos en el pos',
    'ponenteName': 'Milena Ruiz',
    'date': 'Ago 25 2022',
    'time': '10:00 a.m. a 12:00 p.m.',
    'type': 1,
  }),
  CursosVirtualesModel.fromJson({
    'courseName': 'Error ZB',
    'ponenteName': 'Annya Pinto',
    'date': 'Ago 26 2022',
    'time': '8:00 a.m. a 10:00 a.m.',
    'type': 1,
  }),
  CursosVirtualesModel.fromJson({
    'courseName': 'Error ZB',
    'ponenteName': 'Annya Pinto',
    'date': 'Ago 26 2022',
    'time': '8:00 a.m. a 10:00 a.m.',
    'type': 2,
  }),
  CursosVirtualesModel.fromJson({
    'courseName': 'Error ZB',
    'ponenteName': 'Annya Pinto',
    'date': 'Ago 26 2022',
    'time': '8:00 a.m. a 10:00 a.m.',
    'type': 2,
  }),
  CursosVirtualesModel.fromJson({
    'courseName': 'Error ZB',
    'ponenteName': 'Annya Pinto',
    'date': 'Ago 26 2022',
    'time': '8:00 a.m. a 10:00 a.m.',
    'type': 3,
  }),
  CursosVirtualesModel.fromJson({
    'courseName': 'Error ZB',
    'ponenteName': 'Annya Pinto',
    'date': 'Ago 26 2022',
    'time': '8:00 a.m. a 10:00 a.m.',
    'type': 3,
  }),
  CursosVirtualesModel.fromJson({
    'courseName': 'Error ZB',
    'ponenteName': 'Annya Pinto',
    'date': 'Ago 26 2022',
    'time': '8:00 a.m. a 10:00 a.m.',
    'type': 2,
  }),
  CursosVirtualesModel.fromJson({
    'courseName': 'Error ZB',
    'ponenteName': 'Annya Pinto',
    'date': 'Ago 26 2022',
    'time': '8:00 a.m. a 10:00 a.m.',
    'type': 1,
  }),
];

List<TarjetaHomeModel> tarjetasHome = [
  TarjetaHomeModel.fromJson({
    'route': 'cloudServices',
    'title': 'Siesa Cloud Services',
    'subTitle':
        'Reciba soporte técnico a sus casos y acceda a información oficial con respecto a procesos clave.',
    'backgroundColor': colors.azulSiesa,
    'imageUrl': 'assets/svg/siesa-cloud.svg',
    'buttonColor': colors.azulSecundario,
    'buttonText': 'Necesito Soporte',
  }),
  TarjetaHomeModel.fromJson({
    'route': 'facturacionElectronica',
    'title': 'Facturación Electronica',
    'subTitle':
        'Adquiera atención oportuna y efectiva, acceda a información oficial y disfrute de contenido digital clave.',
    'backgroundColor': colors.azulSecundario,
    'imageUrl': 'assets/svg/siesa-fe.svg',
    'buttonColor': colors.azulSiesa,
    'buttonText': 'Necesito Soporte',
  }),
  TarjetaHomeModel.fromJson({
    'route': 'posEnterprise',
    'title': 'Siesa POS (Siesa Enterprise)',
    'subTitle':
        'Adquiera en un mismo nivel servicio a casos funcionales y técnicos, y acceda a información y contenido digital clave.',
    'backgroundColor': colors.morado,
    'imageUrl': 'assets/svg/siesa-pos.svg',
    'buttonColor': colors.aqua,
    'buttonText': 'Necesito Soporte',
  }),
  TarjetaHomeModel.fromJson({
    'route': 'biable',
    'title': 'Siesa Biable',
    'subTitle':
        'Acceda en un mismo nivel de servicio a atención oportuna y efectiva a casos funcionales y técnicos.',
    'backgroundColor': colors.azulSecundario,
    'imageUrl': 'assets/svg/siesa-biable.svg',
    'buttonColor': colors.azulSiesa,
    'buttonText': 'Necesito Soporte',
  }),
  TarjetaHomeModel.fromJson({
    'route': 'eCommerce',
    'title': 'Siesa e-Commerce',
    'subTitle':
        'Reporte situaciones con diferentes prioridades y obtenga atención exclusiva.',
    'backgroundColor': colors.aqua,
    'imageUrl': 'assets/svg/siesa-ecommerce.svg',
    'buttonColor': colors.azulSiesa,
    'buttonText': 'Necesito Soporte',
  }),
  TarjetaHomeModel.fromJson({
    'route': 'crm',
    'title': 'Siesa CRM',
    'subTitle':
        'Reciba Soporte Tecnico y Efectivo a sus casos Siesa CRM, Siesa Fichas Técnicas, Siesa Inmobiliario, Siesa SFA.',
    'backgroundColor': colors.verde,
    'imageUrl': 'assets/svg/siesa-crm.svg',
    'buttonColor': colors.azulSiesa,
    'buttonText': 'Necesito Soporte',
  }),
];
