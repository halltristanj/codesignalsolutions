/*Please add ; after each select statement*/
CREATE PROCEDURE securityBreach()
BEGIN
	select *
    from
        users
    where
        attribute like binary CONCAT("_%\%", first_name, "\_", second_name, "\%%")
    ;
END
