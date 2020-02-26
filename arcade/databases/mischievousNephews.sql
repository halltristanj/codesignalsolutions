/*Please add ; after each select statement*/
CREATE PROCEDURE mischievousNephews()
BEGIN
	select
        WEEKDAY(mischief_date) as weekday,
        mischief_date,
        author,
        title
    from
        mischief
    order by
        WEEKDAY(mischief_date),
        case
            when author = "Huey" then 0
            when author = "Dewey" then 1
            else 2
        end,
        mischief_date,
        title
    ;
END
