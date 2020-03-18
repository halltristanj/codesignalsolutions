/*Please add ; after each select statement*/
CREATE PROCEDURE countriesInfo()
BEGIN
	select
        count(*) as number,
        avg(population) as average,
        sum(population) as total
    from countries
    ;
END
