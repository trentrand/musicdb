(function () {
    'use strict';
    var mysql = require('mysql');
    var fs = require('fs');
    var path = require('path');

    // Creates MySql database connection
    var connection = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "password",
        database: "music"
    });

    var root = path.dirname(require.main.filename) + '/assets/queries/';

    angular.module('app')
        .service('databaseService', ['$q', DatabaseService]);

    function DatabaseService($q) {
        return {
            query: query,
            queryParam: queryParam,
            queryWithArgs: queryWithArgs
        };

        function query(queryFile) {
            var deferred = $q.defer();
            fs.readFile(root+queryFile, 'utf8', function(err, data){
                if (!err){
                    var query = data.replace(/{{[ ]{0,2}([a-zA-Z0-9\.\_\-]*)[ ]{0,2}}}/g, function(str, mch){ return data[mch]});
                    connection.query(query, function (err, rows) {
                        if (err) deferred.reject(err);
                        deferred.resolve(rows);
                    });
                } else {
                    if (err) deferred.reject(err);
                }
            });
            return deferred.promise;
        }
        function queryParam(queryFile, parameter) {
            var param = '%' + parameter + '%';
            var deferred = $q.defer();
            fs.readFile(root+queryFile, 'utf8', function(err, data){
                if (!err){
                    var query = data.replace(/{{[ ]{0,2}([a-zA-Z0-9\.\_\-]*)[ ]{0,2}}}/g, function(str, mch){ return data[mch]});
                    var query = connection.query(query, param, function (err, rows) {
                        if (err) deferred.reject(err);
                        deferred.resolve(rows);
                    });
                    console.log(query);
                } else {
                    if (err) deferred.reject(err);
                }
            });
            return deferred.promise;
        }
        function queryWithArgs(queryString, args) {
                var query = mysql.format(queryString.replace(/{{[ ]{0,2}([a-zA-Z0-9\.\_\-]*)[ ]{0,2}}}/g, function(str, mch){ return data[mch]}), args);
                query = query.replace(/{{[ ]{0,2}([a-zA-Z0-9\.\_\-]*)[ ]{0,2}}}/g, function(str, mch){ return data[mch]});
                connection.query(query, function (error, results, fields) {
                  if (error) throw error;
                });
        }
    }
})();
