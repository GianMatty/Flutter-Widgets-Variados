import 'package:flutter/material.dart';
import 'package:widgets_variados/models/models.dart';
import 'package:widgets_variados/screens/screens.dart';

// nota: NAVEGACION DE RUTA POR ITERACION
class AppRoutes {
  static final menuOptions = [
    MenuOptions(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOptions(
        route: 'listview1',
        name: 'ListView tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOptions(
        route: 'listview2',
        name: 'ListView tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOptions(
        route: 'card',
        name: 'Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card)
  ];

  // * SE USA STATIC YA QUE NO CREAREMOS NINGUNA INSTANCIA MAS DE ESTA CLASE POR ESO LO DEJAMOS TODOO ESTATICO

  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  //Cuando no existe la ruta q se pone en el push ps entra en onGenerateRoute!!!
  static onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}




// nota: NAVEGACION DE RUTA, FORMA DIRECTA DE HACE LA NAVEGACION (mas comun de usar)
// class AppRoutes {

//   // * SE USA STATIC YA QUE NO CREAREMOS NINGUNA INSTANCIA MAS DE ESTA CLASE POR ESO LO DEJAMOS TODOO ESTATICO

//   static const initialRoute = 'home';

//   static Map<String, Widget Function(BuildContext)> routes = {
//     'home': (BuildContext context) => const HomeScreen(),
//     'listview1': (BuildContext context) => const ListView1Screen(),
//     'listview2': (BuildContext context) => const ListView2Screen(),
//     'alert': (BuildContext context) => const AlertScreen(),
//     'card': (BuildContext context) => const CardScreen(),
//   };

//   //Cuando no existe la ruta q se pone en el push ps entra en onGenerateRoute!!!
//   static onGenerateRoute(RouteSettings settings) {
//     return MaterialPageRoute(
//       builder: (context) => const AlertScreen(),
//     );
//   }
// }






// ! dsfdsfsddsfdsfsddsfds
// ? dsfdsfsddsfdsfsddsfds
// * dsfdsfsddsfdsfsddsfds
// todo: dsfdsfsddsfdsfsddsfds
// //dfsdfdgfdgfdgdf
// nota: dfsdfdgfdgfdgdf