/*
	FILE
    Statistics-Band.sql
    
    DESCRIPION
    Returns the table for the band statistics.
    
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
	tblB.bandName			AS 'Band'
    , COUNT(tblA.songID)	AS 'Number of Songs'

FROM
	`create`		AS tblA
    LEFT JOIN band	AS tblB ON tblA.bandID = tblB.bandID

GROUP BY
	tblB.bandName

ORDER BY
	COUNT(tblA.songID) DESC