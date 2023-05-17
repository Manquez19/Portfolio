// Función para generar un número aleatorio entre 0 y 1
function generarNumeroAleatorio() {
  return Math.random();
}

// Función para lanzar la moneda
function lanzarMoneda() {
  // Generamos un número aleatorio entre 0 y 1
  var numeroAleatorio = generarNumeroAleatorio();

  // Si el número aleatorio es menor a 0.5, es cara (0), de lo contrario, es cruz (1)
  if (numeroAleatorio < 0.5) {
    return 'Cara';
  } else {
    return 'Cruz';
  }
}

// Lanzamos la moneda
var resultado = lanzarMoneda();
console.log('Resultado: ' + resultado);
