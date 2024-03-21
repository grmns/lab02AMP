// 2. Crear 1 Clase DCHeroes considerando lo siguiente:

// . El personaje tendrá atributos de NombrePila y NombrePersonaje
// . Se utilizara un MAPA de datos llamado DCJson
// . Utilizar un constructor con nombre que se llame fromDCJson
// . Debe estar protegido y en caso algun dato no exista remitir un mensaje
// automatico en consola: "No tiene nombre" y "No tiene alias"
// . El mensaje en consola seria "Hola mi nombre es BRUCE WAYNE pero me
// conocen como el caballero de la noche BATMAN"
// . Adjuntar pantalla de su codigo

// ignore_for_file: unused_local_variable

class DCHeroes {
  String nombrePila;
  String nombrePersonaje;

  DCHeroes.fromDCJson(Map<String, String> dcJson)
      : nombrePila = dcJson['nombrePila'] ?? 'No tiene nombre',
        nombrePersonaje = dcJson['nombrePersonaje'] ?? 'No tiene alias' {
    if (nombrePila == '') {
      print('No tiene nombre');
      return;
    }
    if (nombrePersonaje == '') {
      print('No tiene alias');
      return;
    }
    print(
        'Hola mi nombre es ${nombrePila} pero me conocen como el caballero de la noche ${nombrePersonaje}');
  }
}

void main() {
  Map<String, String> dcJson = {
    'nombrePila': 'BRUCE WAYNE',
    'nombrePersonaje': 'BATMAN',
  };

  DCHeroes batman = DCHeroes.fromDCJson(dcJson);
}
