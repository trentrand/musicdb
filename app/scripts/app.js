
(function () {
    'use strict';

    var _templateBase = './scripts';

    angular.module('app', [
        'ngRoute'
    ])
    .config(['$routeProvider', function ($routeProvider) {
            $routeProvider.when('/results/:query?', {
                templateUrl: _templateBase + '/results.html' ,
                controller: 'ResultsController',
                controllerAs: 'vm'
            });
            $routeProvider.otherwise({ redirectTo: '/results/Library-AllMusic.sql' });
        }
    ]);

})();
