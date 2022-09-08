part of './router.dart';

Widget notFoundPage(BuildContext context, GoRouterState state) {
  return Scaffold(
    body: Container(
      alignment: Alignment.center,
      child: const Text('Página no encontrada'),
    ),
  );
}

Widget _homePageBuilder(BuildContext context, GoRouterState state) {
  return const HomePage();
}

Widget cursosVirtualesPageBuilder(BuildContext context, GoRouterState state) {
  final curso = state.params['curso'] ?? 'todos';
  return CursosVirtualesPage(
    curso: curso,
  );
}

// Page<void> _detailPageBuilder(BuildContext context, GoRouterState state) {
//   return CustomTransitionPage(
//     child: const DetailPage(),
//     transitionDuration: const Duration(milliseconds: 200),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       final curvedAnimation =
//           CurvedAnimation(parent: animation, curve: Curves.ease);
//       return SlideTransition(
//         position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
//             .animate(curvedAnimation),
//         child: child,
//       );
//     },
//   );
// }
