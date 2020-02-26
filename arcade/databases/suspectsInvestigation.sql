/*Please add ; after each select statement*/
CREATE PROCEDURE suspectsInvestigation()
BEGIN
    select
        id,
        name,
        surname
    from
        Suspect
    where
        height <= 170
        and lower(substring(name, 1, 1)) = "b"
        and lower(surname) like "gre_n"
    order by
        id asc
    ;
END
