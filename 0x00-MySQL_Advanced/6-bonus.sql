--  creates a stored procedure AddBonus that adds a new correction for a student.
DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER $$
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), OUT score INT)
BEGIN
    DECLARE project_exist DEAFULT 0;

    SELECT COUNT(id) INTO project_exist
    FROM users
    WHERE name = project_name;

    IF project_exist = 0 THEN
        INSERT INTO project (name)
        VALUES (project_name);
    END IF;

    INSERT INTO correction (user_id, project_id, score)
    VALUES (user_id, (SELECT id FROM projects WHERE name = project_name), score);
END $$
DELIMITER ;
