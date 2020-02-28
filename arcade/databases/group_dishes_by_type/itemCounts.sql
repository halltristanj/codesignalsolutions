/*Please add ; after each select statement*/
CREATE PROCEDURE itemCounts()
BEGIN
    select
	    item_name,
        item_type,
        count(*) as item_count
    from
        availableItems
    group by
        item_name,
        item_type
    order by
        item_type,
        item_name
    ;
END
