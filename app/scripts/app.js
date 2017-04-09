
(function () {
    'use strict';

    var _templateBase = './scripts';

    angular.module('app', [
        'ngRoute',
        'ngAnimate'
    ])
    .config(['$routeProvider', function ($routeProvider) {
            $routeProvider.when('/', {
                templateUrl: _templateBase + '/song/song.html' ,
                controller: 'songController',
                controllerAs: 'vm'
            });
            $routeProvider.otherwise({ redirectTo: '/' });
        }
    ]);

})();
