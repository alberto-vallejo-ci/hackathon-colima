application.controller('EnvironmentQuotesController', ['$scope', '$sce', function($scope, $sce) {
  var vm = $scope;

  vm.quotes = [{
      text: $sce.trustAsHtml('Muchas evaluaciones internacionales abordan el estado actual de la biodiversidad y las consecuencias de su pérdida para los ecosistemas y los seres humanos.'
             + '<br><br>'
             + '¿Es la pérdida de la biodiversidad irreversible? ¿Es posible reducir la velocidad de este proceso?'),
      source: 'http://www.greenfacts.org/es/'
  }, {
      text: $sce.trustAsHtml('En las últimas décadas del siglo XX, la calidad del aire en Europa ha mejorado en muchos sentidos; sin embargo, los niveles de contaminación atmosférica actuales siguen afectando a la salud pública. La contaminación atmosférica puede provocar enfermedades respiratorias y reducir la esperanza de vida.'),
      source: 'http://www.greenfacts.org/es/'
  }, {
      text: $sce.trustAsHtml('En los últimos años el aumento del precio del combustible, así como la inquietud sobre el cambio climático y la dependencia del petróleo han puesto la energía en la vanguardia de los debates públicos y de la política.'
             + '<br><br>'
             + '¿Cuál será el futuro de la producción energética?'
             + '<br>'
             + '¿Qué tecnologías pueden ayudar a evitar las crisis climáticas y energéticas que se avecinan?'),
      source: 'http://www.greenfacts.org/es/'
  }]

  vm.quote = vm.quotes[Math.floor(Math.random() * vm.quotes.length)];
}]);
