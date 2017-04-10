'use strict';

angular.module('app').controller('ResultsController', ['databaseService', '$q', '$routeParams',
    function(databaseService, $q, $routeParams) {
        var vm = this;

        // Load appropriate view results
        queryIndex($routeParams.query);

        //----------------------
        // Database Functions
        //----------------------

        function queryIndex(fileName) {
            databaseService.query(fileName).then(function (results) {
                // Once results are fetched, this .then() gets called
                vm.rows = results;
                vm.columnHeaders = Object.keys(vm.rows[0])
            });
        }
    }
]);
