import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  Info({super.key});
  // instanciando un contacto de la clase contactos
  final contacto1 = Contactos('Pascualillo', '+504 9902-9311');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: textos.length,
      itemBuilder: (BuildContext context, int index) {
        final linea = textos[index];
        final numeros =
            contacto1.numero.replaceAll(" ", "").replaceAll("-", "");

        return ListTile(
          title: Text(
            index < 3 ? linea + contacto1.numero : linea + numeros,
          ),
          leading: CircleAvatar(
            child: Image(
                image: index < 3
                    ? const AssetImage('assets/logow.png')
                    : const AssetImage('assets/logot.png')),
          ),
        );
      },
    );
  }

  // una lista titulo que retorna el titulo
  ListTile get tituloInfo {
    return const ListTile(
      title: Text(
        'Información de Contacto',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  // lista titulo que retorna el numero del contacto, y demas iconos
  ListTile get contactoInfo {
    return ListTile(
      title: Text(contacto1.numero),
      subtitle: const Text('Celular'),
      leading: const Icon(Icons.call_outlined),
      trailing: const Wrap(
        spacing: 12.0,
        children: [Icon(Icons.videocam_outlined), Icon(Icons.message_outlined)],
      ),
    );
  }
}

// una lista para los textos que acompanan al numero y una accion(no programada) que podria conllevar
final textos = [
  'Enviar Mensaje a ',
  'Llamaar a ',
  'Video llamar a ',
  'Mensaje al ',
  'Llamada de voz al ',
  'Video llamada al '
];

// clase contactos

class Contactos {
  //contactos
  String nombre = 'nombre';
  String numero = 'numero';
  //constructor
  Contactos(this.nombre, this.numero);
}

