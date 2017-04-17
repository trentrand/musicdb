/*
	FILE
    Library-Product.sql

    DESCRIPION
    Returns the table for the product library.

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
	tblD.productName			AS 'Product'
    , tblB.bandName				AS 'Band'
    , tblD.productType			AS 'Type'
	, tblD.productGenre			AS 'Genre'
    , tblD.productYearReleased	AS 'Year Released'

FROM
	`create`			AS tblA
    LEFT JOIN	band	AS tblB	ON tblA.bandID = tblB.bandID
    LEFT JOIN	appear	AS tblC ON tblA.songID = tblC.songID
    LEFT JOIN	product	AS tblD ON tblC.productID = tblD.productID

WHERE
	tblD.productName LIKE ?

ORDER BY
	tblD.productName
    , tblB.bandName
    , tblD.productType
	, tblD.productGenre
    , tblD.productYearReleased
