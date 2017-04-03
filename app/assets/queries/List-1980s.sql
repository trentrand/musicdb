/*
	FILE
    List-1980s.sql
    
    DESCRIPION
    Returns the table for the 1980s list.
    
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
	tblA.songName			AS 'Song'
	, tblC.bandName			AS 'Band'
    , tblA.songGenre		AS 'Genre'
    , tblA.songYearReleased	AS 'Year Released'
    , tblA.songLength		AS 'Length'

FROM
	song AS tblA
	LEFT JOIN `create`	AS tblB ON tblA.songID = tblB.songID
	LEFT JOIN band		AS tblC	ON tblB.bandID = tblC.bandID

WHERE
	10 * FLOOR(tblA.songYearReleased / 10) = 1980

ORDER BY
	tblA.songName
	, tblC.bandName
    , tblA.songGenre
    , tblA.songYearReleased
    , tblA.songLength
