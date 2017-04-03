/*
	FILE
    Library-Band.sql
    
    DESCRIPION
    Returns the table for the band library.
    
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
	tblB.bandName		AS 'Band'
    , tblC.artistName	AS 'Member'
    , tblA.yearJoined	AS 'Year Joined'
    , tblA.yearLeft		AS 'Year Left'

FROM
	member				AS tblA
    LEFT JOIN band		AS tblB ON tblA.bandID = tblB.bandID
    LEFT JOIN artist	AS tblC ON tblA.artistID = tblC.artistID

ORDER BY
	tblB.bandName
    , tblC.artistName
    , tblA.yearJoined
    , tblA.yearLeft