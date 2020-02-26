/*Please add ; after each select statement*/
CREATE PROCEDURE suspectsInvestigation2()
BEGIN
    select s.id, s.name, s.surname from (
        select
            id,
            name,
            surname
        from
            Suspect
        where
            height > 170
            and lower(substring(name, 1, 1)) = "b"
            and lower(surname) like "gre_n"
        order by
            id asc
    ) as p
    RIGHT JOIN
        Suspect as s
    on
        s.id = p.id
    where
        p.id is NULL
    order by
        s.id
    ;
END
