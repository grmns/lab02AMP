// 3. En los ejemplos anteriores agregar un constructor con parametros en cada uno de
// las clases y crear diferentes objetos con diferentes constructores.

// ignore_for_file: unused_local_variable

class MarvelHeroes {
  String nombrePila;
  String nombrePersonaje;

  MarvelHeroes({required this.nombrePila, required this.nombrePersonaje});

  MarvelHeroes.fromMarvelJson(Map<String, String> marvelJson)
      : nombrePila = marvelJson['nombrePila'] ?? 'No tiene nombre',
        nombrePersonaje = marvelJson['nombrePersonaje'] ?? 'No tiene alias' {
    if (nombrePila == '') {
      print('No tiene nombre');
      return;
    }
    if (nombrePersonaje == '') {
      print('No tiene alias');
      return;
    }
    print(
        'Hola mi nombre es ${nombrePila} pero me conocen como tu amigable vecino ${nombrePersonaje}');
  }
}

class DCHeroes {
  String nombrePila;
  String nombrePersonaje;

  DCHeroes({required this.nombrePila, required this.nombrePersonaje});

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
  Map<String, String> marvelJson1 = {
    'nombrePila': 'PETER PARKER',
    'nombrePersonaje': 'SPIDERMAN',
  };

  MarvelHeroes spiderman = MarvelHeroes.fromMarvelJson(marvelJson1);

  Map<String, String> marvelJson2 = {
    'nombrePila': 'TONY STARK',
    'nombrePersonaje': 'IRON MAN',
  };

  MarvelHeroes ironman = MarvelHeroes.fromMarvelJson(marvelJson2);

  Map<String, String> dcJson1 = {
    'nombrePila': 'BRUCE WAYNE',
    'nombrePersonaje': 'BATMAN',
  };

  DCHeroes batman = DCHeroes.fromDCJson(dcJson1);

  Map<String, String> dcJson2 = {
    'nombrePila': 'CLARK KENT',
    'nombrePersonaje': 'SUPERMAN',
  };

  DCHeroes superman = DCHeroes.fromDCJson(dcJson2);

}

