/*
	FILE
    Statistics-Decade.sql
    
    DESCRIPION
    Returns the table for the decade statistics.
    
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
	10 * FLOOR(tblA.songYearReleased / 10)	AS 'Decade'
    , COUNT(tblA.songID)					AS 'Number of Songs'

FROM
	song AS tblA

GROUP BY
	10 * FLOOR(tblA.songYearReleased / 10)

ORDER BY
	COUNT(tblA.songID) DESC
