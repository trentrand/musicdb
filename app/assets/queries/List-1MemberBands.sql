/*
	FILE
    List-1MemberBands
    
    DESCRIPION
    Returns the table for the 1-member aands lists.
    
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
    2017/04/12
*/

SELECT
	tblB.bandName AS 'Band'

FROM
	member			AS tblA
    LEFT JOIN band	AS tblB ON tblA.bandID = tblB.bandID

GROUP BY
	tblB.bandName

HAVING
	COUNT(DISTINCT tblA.artistID) = 1;
