(function () {
    'use strict';
    var mysql = require('mysql');

    // Creates MySql database connection
    var connection = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "password",
        database: "music"
    });

    angular.module('app')
        .service('songService', ['$q', SongService]);

    function SongService($q) {
        return {
            getSong: getSong,
            getById: getSongById,
            getByName: getSongByName,
            create: createSong,
            destroy: deleteSong,
            update: updateSong
        };

        function getSong() {
            var deferred = $q.defer();
            var query = "SELECT * FROM song";
            connection.query(query, function (err, rows) {
                if (err) deferred.reject(err);
                deferred.resolve(rows);
            });
            return deferred.promise;
        }

        function getSongById(id) {
            var deferred = $q.defer();
            var query = "SELECT * FROM song WHERE songID = ?";
            connection.query(query, [id], function (err, rows) {
                if (err) deferred.reject(err);
                deferred.resolve(rows);
            });
            return deferred.promise;
        }

        function getSongByName(name) {
            var deferred = $q.defer();
            var query = "SELECT * FROM song WHERE songName LIKE  '" + name + "%'";
            connection.query(query, [name], function (err, rows) {
                console.log(err)
                if (err) deferred.reject(err);

                deferred.resolve(rows);
            });
            return deferred.promise;
        }

        function createSong(song) {
            var deferred = $q.defer();
            var query = "INSERT INTO song SET ?";
            connection.query(query, song, function (err, res) {
                console.log(err)
                if (err) deferred.reject(err);
                console.log(res)
                deferred.resolve(res.insertId);
            });
            return deferred.promise;
        }

        function deleteSong(id) {
            var deferred = $q.defer();
            var query = "DELETE FROM song WHERE songID = ?";
            connection.query(query, [id], function (err, res) {
                if (err) deferred.reject(err);
                console.log(res);
                deferred.resolve(res.affectedRows);
            });
            return deferred.promise;
        }

        function updateSong(song) {
            var deferred = $q.defer();
            var query = "UPDATE song SET name = ? WHERE songID = ?";
            connection.query(query, [song.name, song.songID], function (err, res) {
                if (err) deferred.reject(err);
                deferred.resolve(res);
            });
            return deferred.promise;
        }
    }
})();
