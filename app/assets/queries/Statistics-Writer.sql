/*
	FILE
    Data-Writer.sql

    DESCRIPION
    Returns the table for the writer data.

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
	tblB.artistName			AS 'Writer'
    , COUNT(tblA.songID)	AS 'Number of Songs'

FROM
	`write`				AS tblA
    LEFT JOIN artist	AS tblB ON tblA.artistID = tblB.artistID

GROUP BY
	tblB.artistName

ORDER BY
	COUNT(tblA.songID) DESC
