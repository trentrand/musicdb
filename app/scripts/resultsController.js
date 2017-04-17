'use strict';

angular.module('app').controller('ResultsController', ['databaseService', '$q', '$rootScope', '$routeParams',
    function(databaseService, $q, $rootScope, $routeParams) {
        var vm = this;

        // Load appropriate view results
        if ($routeParams.searchParam) {
            queryWithParameter($routeParams.query, $routeParams.searchParam)
        } else {
            queryIndex($routeParams.query);
        }

        //----------------------
        // Database Functions
        //----------------------

        function queryIndex(fileName) {
            databaseService.query(fileName).then(function (results) {
                // Once results are fetched, this .then() gets called
                vm.rows = results;
                vm.columnHeaders = Object.keys(vm.rows[0])
                $rootScope.searchParam = vm.columnHeaders[0];
            });
        }

        // Seach among the current index with the first column as the searchable field
        function queryWithParameter(fileName, parameter) {
            var _fileName = fileName.substring(0, fileName.length - 4) + '-search.sql';
            databaseService.queryParam(_fileName, parameter).then(function (results) {
                // Once results are fetched, this .then() gets called
                vm.rows = results;
                vm.columnHeaders = Object.keys(vm.rows[0])
                $rootScope.searchParam = vm.columnHeaders[0];
            });
        }
    }
]);
