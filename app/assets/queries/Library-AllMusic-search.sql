/*
	FILE
    Library-AllMusic.sql

    DESCRIPION
    Returns the table for the AllMusic library.

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
	tblE.bandName		AS 'Band'
    , tblC.productName	AS 'Product'
    , tblB.TrackNumber	AS 'Track Number'
    , tblA.songName		AS 'Song'
    , tblA.songLength	AS 'Length'

FROM
	song				AS tblA
    LEFT JOIN appear	AS tblB ON tblA.songID = tblB.songID
    LEFT JOIN product	AS tblC ON tblB.productID = tblC.productID
    LEFT JOIN `create`	AS tblD ON tblA.songID = tblD.songID
    LEFT JOIN band		AS tblE ON tblD.bandID = tblE.bandID

WHERE
	tblE.bandNAme LIKE ?

ORDER BY
	tblE.bandName
    , tblC.productName
    , tblB.TrackNumber
    , tblA.songName
    , tblA.songLength
