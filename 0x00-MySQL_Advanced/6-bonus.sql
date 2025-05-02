--  creates a stored procedure AddBonus that adds a new correction for a student.
DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER $$
CREATE PROCEDURE AddBonus (IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN

    DECLARE project_exists INT DEFAULT 0;

    SELECT COUNT(id)
    INTO project_exists
    FROM projects
    WHERE name = project_name;

    IF project_exists = 0 THEN
        INSERT INTO projects (name)
        VALUES (project_name);
    END IF;

    INSERT INTO corrections (user_id, project_id, score)
    VALUES (user_id, (SELECT id FROM projects WHERE name = project_name), score);
END $$
DELIMITER ;
