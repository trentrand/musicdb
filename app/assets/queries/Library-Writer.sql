/*
	FILE
    Library-Writer.sql
    
    DESCRIPION
    Returns the table for the writer library.
    
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
	tblB.artistName	AS 'Writer'
    , tblC.songName	AS 'Song'

FROM
	`write`				AS tblA
    LEFT JOIN artist	AS tblB ON tblA.artistID = tblB.artistID
    LEFT JOIN song		AS tblC ON tblA.songID = tblC.songID

ORDER BY
	tblB.artistName
    , tblC.songName