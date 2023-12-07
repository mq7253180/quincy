CREATE TABLE test (
	id INT(11) NOT NULL,
	aaa VARCHAR(20) NOT NULL,
	bbb INT(10) NOT NULL,
	PRIMARY KEY (id),
	KEY idx_bbb(bbb) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DELETE FROM test;
INSERT INTO test VALUES(1, 'aaa1', 15);
INSERT INTO test VALUES(2, 'aaa2', 5);
INSERT INTO test VALUES(3, 'aaa3', 32);
INSERT INTO test VALUES(4, 'aaa4', 56);
INSERT INTO test VALUES(5, 'aaa5', 87);
INSERT INTO test VALUES(6, 'aaa6', 2);
INSERT INTO test VALUES(7, 'aaa7', 7);
INSERT INTO test VALUES(8, 'aaa8', 12);
INSERT INTO test VALUES(9, 'aaa9', 9);
INSERT INTO test VALUES(10, 'aaa0', 21);
SELECT * FROM test;


INSERT INTO test VALUES(12, 'aaa12', 32);
INSERT INTO test VALUES(11, 'aaa11', 9);

INSERT INTO test VALUES(11, 'aaa11', 12);
INSERT INTO test VALUES(12, 'aaa12', 21);
INSERT INTO test VALUES(13, 'aaa13', 12);

INSERT INTO test VALUES(14, 'aaa14', 20);
INSERT INTO test VALUES(15, 'aaa15', 13);

INSERT INTO test VALUES(12, 'aaa12', 20);
INSERT INTO test VALUES(13, 'aaa13', 14);


2, 5, 7, 9, 12, 15, 21, 32, 56, 87


UPDATE test SET aaa=CONCAT(aaa, '_www') WHERE id=9;
UPDATE test SET aaa=CONCAT(aaa, '_www') WHERE id=3;

UPDATE test SET aaa=CONCAT(aaa, '_www') WHERE id=8;
UPDATE test SET aaa=CONCAT(aaa, '_www') WHERE id=10;

UPDATE test SET aaa=CONCAT(aaa, '_www') WHERE bbb=12;
UPDATE test SET aaa=CONCAT(aaa, '_www') WHERE bbb=21;

UPDATE test SET aaa=CONCAT(aaa, '_www') WHERE bbb=15;
UPDATE test SET aaa=CONCAT(aaa, '_www') WHERE bbb=21;





