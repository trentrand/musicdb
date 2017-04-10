'use strict';

angular.module('app').controller('resultsController', ['databaseService', '$q',
    function(databaseService, $q) {
        var vm = this;

        // Load default view
        getAllMusicIndex();

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

        function getBandIndex() {
            queryIndex('Library-Band.sql');
        }

        function getAllMusicIndex() {
            queryIndex('Library-Default.sql');
        }

        function getProductIndex() {
            queryIndex('Library-Product.sql');
        }

        function getSongIndex() {
            queryIndex('Library-Song.sql');
        }

        function getWriterIndex() {
            queryIndex('Library-Writer.sql');
        }

        function get1980sPlaylistIndex() {
            queryIndex('List-1980s.sql');
        }

        function getComedyPlaylistIndex() {
            queryIndex('List-Comedy.sql');
        }

        function getPoisonPlaylistIndex() {
            queryIndex('List-Poison.sql');
        }

        function getBandStatisticsIndex() {
            queryIndex('Statistics-Band.sql');
        }

        function getDecadeStatisticsIndex() {
            queryIndex('Statistics-Decade.sql');
        }

        function getGenreStatisticsIndex() {
            queryIndex('Statistics-Genre.sql');
        }

        function getProductTypeStatisticsIndex() {
            queryIndex('Statistics-ProductType.sql');
        }

        function getWriterStatisticsIndex() {
            queryIndex('Statistics-Writer.sql');
        }

        function getYearStatisticsIndex() {
            queryIndex('Statistics-Year.sql');
        }
    }
]);
