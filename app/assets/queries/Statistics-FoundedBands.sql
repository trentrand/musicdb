/*
	FILE
    Statistics-FoundedBands
    
    DESCRIPION
    Returns the table for the founded bands statistics.
    
    AUTHORS
    Arsh Padda
    apadda@asu.edu
    
    Devin Walz
    dwalz@asu.edu
    
    COURSE
    CSE 412: Database Management, Spring 2017
    
    ASSIGNMENT
    Group Project - Phase 3
    
    DATE MODIFIED
    2017/04/15
*/

SELECT
	tblB.bandName		AS `Band`
    , tblA.yearJoined	AS `Founded`
    , tblC.artistName	AS `Founding Members`    

FROM
	member				AS tblA
    LEFT JOIN band		AS tblB ON tblB.bandID = tblA.bandID
    LEFT JOIN artist	AS tblC ON tblC.artistID = tblA.artistID

WHERE
	tblA.yearJoined =
	(
		SELECT
			MIN(tblD.yearJoined)

		FROM
			member AS tblD

		WHERE
			tblD.bandID = tblA.bandID
	)

ORDER BY
	tblB.bandName