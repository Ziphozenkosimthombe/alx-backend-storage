--  SQL script that creates a stored procedure ComputeAverageWeightedScoreForUsers,
-- that computes and store the average weighted score for all students.


DELIMITER //

CREATE PROCEDURE  ComputeAverageWeightedScoreForUsers()
BEGIN
    UPDATE users u
    SET average_score = (
	SELECT
	    IFNULL(SUM(corrections.score * projects.weight) / SUM(projects.weight), 0)
	FROM
	    corrections
	JOIN
	    projects ON projects.id = corrections.project_id
	WHERE
	    corrections.user_id = u.id
    );
END//
DELIMITER ;
