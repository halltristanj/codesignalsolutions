/*Please add ; after each select statement*/
CREATE PROCEDURE projectsTeam()
BEGIN
	select
        distinct name as name
    from
        projectLog
    order by
        name asc
    ;
END
