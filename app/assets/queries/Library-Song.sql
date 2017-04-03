/*
	FILE
    Library-Song.sql
    
    DESCRIPION
    Returns the table for the song library.
    
    AUTHOR
    Devin Walz
    dwalz@asu.edu
    
    COURSE
    CSE 412: Database Management, Spring 2017
    
    ASSIGNMENT
    Group Project - Phase 3
    
    DATE MODIFIED
    2017/03/29
*/

SELECT
	tblB.songName			AS 'Song'
    , tblC.bandName			AS 'Band'
    , tblB.songGenre		AS 'Genre'
    , tblB.songYearReleased	AS 'Year Released'
    , tblB.songLength		AS 'Length'

FROM
	`create`	AS tblA
    LEFT JOIN 	song	AS tblB ON tblA.songID = tblB.songID
    LEFT JOIN	band	AS tblC ON tblA.bandID = tblC.bandID

ORDER BY
	tblB.songName
    , tblC.bandName
    , tblB.songGenre
    , tblB.songYearReleased
    , tblB.songLength