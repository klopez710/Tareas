import 'package:flutter/material.dart';
import 'Informacion_Contacto.dart';

class Widgets {
  //--------creando el widget del circle avatar
  CircleAvatar get avatar {
    return CircleAvatar(
      radius: 70,
      backgroundColor: const Color.fromARGB(255, 247, 53, 117),
      child: Center(
        child: (Text(
          Info().contacto1.nombre.substring(0, 1),
          style: const TextStyle(
              color: Colors.white, fontSize: 90, fontWeight: FontWeight.w400),
        )),
      ),
    );
  }

  //---- creando el widget donde aparece el nombre del contacto
  Text get nombreContacto {
    return Text(Info().contacto1.nombre,
        style: const TextStyle(height: 3, fontSize: 35));
  }

  //----- creando el widget donde aparecen los iconos de llamar, mensaje y video
  Container get barra {
    return Container(
      //---- retorna un contenedor el cual solo tiene margenes arriba y abajo, para hacer la cajita
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
                  color: Color.fromARGB(255, 198, 198, 198), width: 1.0),
              bottom: BorderSide(
                  color: Color.fromARGB(255, 198, 198, 198), width: 1.0))),
      child: const Padding(
        //tiente de hijo un pading para los margenes de los costados y arriba
        padding:
            EdgeInsets.only(top: 15.0, left: 40.0, right: 40.0, bottom: 15.0),
        child: Row(
          // la linea hija es la que alberga los iconos y los nombres, es un renglon que tiene tres columnas hijas
          // las columnas tienen dos hijos, uno de tipo icon y otro de tipo text
          children: [
            Column(
              // llamar
              children: [
                Icon(
                  Icons.call_outlined,
                  color: Color.fromARGB(255, 39, 99, 148),
                  size: 30,
                ),
                Text(
                  'Llamar',
                  style: TextStyle(
                      color: Color.fromARGB(255, 39, 99, 148), fontSize: 15),
                )
              ],
            ),
            Spacer(), // un espacio entro los hijos
            Column(
              // mensaje
              children: [
                Icon(
                  Icons.message_outlined,
                  color: Color.fromARGB(255, 39, 99, 148),
                  size: 30,
                ),
                Text(
                  'Mensaje de Texto',
                  style: TextStyle(
                      color: Color.fromARGB(255, 39, 99, 148), fontSize: 15),
                )
              ],
            ),
            Spacer(), // espacio
            Column(
              // video
              children: [
                Icon(
                  Icons.videocam_outlined,
                  color: Color.fromARGB(255, 39, 99, 148),
                  size: 30,
                ),
                Text(
                  'Video',
                  style: TextStyle(
                      color: Color.fromARGB(255, 39, 99, 148), fontSize: 15.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  // el card que recibe la informacion del contacto
  Card get infoContacto {
    return Card(
      child: Column(
        children: [Info().tituloInfo, Info().contactoInfo, Info()],
      ),
    );
  }
}
