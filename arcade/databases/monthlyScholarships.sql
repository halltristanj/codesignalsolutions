/*Please add ; after each select statement*/
CREATE PROCEDURE monthlyScholarships()
BEGIN
	select
        id,
        SUM(scholarship) / 12 as scholarship
    from
        scholarships
    group by
        id
    ;
END
