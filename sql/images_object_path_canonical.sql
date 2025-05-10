DROP PROCEDURE IF EXISTS drop_column_if_exists;
DELIMITER //
CREATE PROCEDURE drop_column_if_exists()
BEGIN
    IF EXISTS (
        SELECT * FROM information_schema.columns 
        WHERE table_schema = DATABASE()
        AND table_name = 'images' 
        AND column_name = 'object_path'
    ) THEN
        ALTER TABLE images DROP COLUMN object_path;
    END IF;
END //
DELIMITER ;

CALL drop_column_if_exists();
DROP PROCEDURE IF EXISTS drop_column_if_exists;

-- B. image_url → object_path 로 이름 변경 + 길이 확대
ALTER TABLE images CHANGE image_url object_path VARCHAR(512) NOT NULL;