import 'package:flutter/material.dart';
import 'package:widgets_variados/routes/app_routes.dart';
import 'package:widgets_variados/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //Aqui se pone la ruta con la q quieres comenzar
      initialRoute: AppRoutes.initialRoute,
      //Aqui se registran todas las rutas de la App
      routes: AppRoutes.getAppRoutes(),
      //Cuando no existe la ruta q se pone en el push ps entra en onGenerateRoute!!!
      onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      //"onGenerateRoute: AppRoutes.onGenerateRoute" como tiene el mismo parametro se puede acortar la linea anterior

      theme: AppTheme.lighTheme,
      // theme: ThemeData.dark(), // Es el tema oscuro para la app
    );
  }
}
