/*
	FILE
    Statistics-Genre.sql
    
    DESCRIPION
    Returns the table for the genre statistics.
    
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
	tblA.songGenre			AS 'Genre'
    , COUNT(tblA.songID)	AS 'Number of Songs'

FROM
	song	AS tblA

GROUP BY
	tblA.songGenre

ORDER BY
	COUNT(tblA.songID) DESC