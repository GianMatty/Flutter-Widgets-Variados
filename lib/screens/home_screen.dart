import 'package:flutter/material.dart';
import 'package:widgets_variados/routes/app_routes.dart';
import 'package:widgets_variados/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading:
              Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary),
          title: Text(AppRoutes.menuOptions[index].name),
          onTap: () {
            // nota: FORMA TEDIOSA DE RUTEO
            // final route = MaterialPageRoute(
            //   builder: (context) => const AlertScreen(),
            // );
            // Navigator.push(context, route);

            // nota: FORMA MAS AGIL CON LOS NOMBRE DE LAS RUTAS QUE SE DEFINIO
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
