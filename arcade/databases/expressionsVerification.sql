/*Please add ; after each select statement*/
CREATE PROCEDURE expressionsVerification()
BEGIN
	select *
    from expressions
    where
        case operation
            when "+" then a + b
            when "-" then a - b
            when "*" then a * b
            when "/" then a / b
        end = c
    ;
END
