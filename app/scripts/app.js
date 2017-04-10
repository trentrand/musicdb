
(function () {
    'use strict';

    var _templateBase = './scripts';

    angular.module('app', [
        'ngRoute',
        'ngAnimate'
    ])
    .config(['$routeProvider', function ($routeProvider) {
            $routeProvider.when('/', {
                templateUrl: _templateBase + '/results.html' ,
                controller: 'resultsController',
                controllerAs: 'vm'
            });
            $routeProvider.otherwise({ redirectTo: '/' });
        }
    ]);

})();
