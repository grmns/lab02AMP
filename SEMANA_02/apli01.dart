// ACTIVIDAD

// 1. Crear 1 Clase MarvelHeroes considerando lo siguiente:

// . El personaje tendra atributos de NombrePila y NombrePersonaje
// . El personaje se llama Pete Parker y su alias es Spiderman
// . Utilizar un constructor abreviado utilizando required
// . El mensaje en consola seria "Hola mi nombre es PETER PARKER pero me
// conocen como tu amigable vecino SPIDERMAN"
// . Adjuntar pantalla de su código

class MarvelHeroes {
  String nombrePila;
  String nombrePersonaje;

  MarvelHeroes({required this.nombrePila, required this.nombrePersonaje});
}

void main() {
  MarvelHeroes spiderman = MarvelHeroes(
    nombrePila: 'PETER PARKER',
    nombrePersonaje: 'SPIDERMAN',
  );

  print(
      'Hola mi nombre es ${spiderman.nombrePila} pero me conocen como tu amigable vecino ${spiderman.nombrePersonaje}');
}


