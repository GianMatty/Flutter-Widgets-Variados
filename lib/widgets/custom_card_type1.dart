import 'package:flutter/material.dart';
import 'package:widgets_variados/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un título'),
            subtitle:
                Text('lorem impum blablaa lablaba lbalab albala blabalbaalb'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  // nota: Para Cambiar el color del texto y el efecto del boton 2 formas. al final se uso se congfiguro en el "AppTheme" general
                  // style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo)),
                  // style: TextButton.styleFrom(primary: Colors.indigo),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

