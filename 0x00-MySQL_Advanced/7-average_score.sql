--  creates a stored procedure 'ComputeAverageScoreForUser' that computes and store the average score for a student
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser (IN user_id INT)
BEGIN
    SELECT id,  name, average_score
    FROM usres
    WHERE id = user_id
END $$
DELIMITER ;
