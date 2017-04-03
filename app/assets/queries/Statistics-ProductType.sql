/*
	FILE
    Statistics-ProductType.sql
    
    DESCRIPION
    Returns the table for the product type statistics.
    
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
	tblB.productType		AS 'Product Type'
    , COUNT(tblA.songID)	AS 'Number of Songs'

FROM
	appear				AS tblA
    LEFT JOIN product	AS tblB ON tblA.productID = tblB.productID

GROUP BY
	tblB.productType

ORDER BY
	COUNT(tblA.songID) DESC