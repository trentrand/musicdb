/*
	FILE
    Statistics-Year.sql
    
    DESCRIPION
    Returns the table for the year statistics.
    
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
	tblA.songYearReleased	AS 'Year'
    , COUNT(tblA.songID)	AS 'Number of Songs'

FROM
	song	AS tblA

GROUP BY
	tblA.songYearReleased

ORDER BY
	COUNT(tblA.songID) DESC