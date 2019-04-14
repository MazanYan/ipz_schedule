-- select shedule for a group --
SELECT * FROM "PairLesson" WHERE "Group"='IV-71' ORDER BY "Day";

-- select shedule for a group for distinct day --
SELECT * FROM "PairLesson" WHERE "Group"='IK-81' AND "Day"=1;

-- search shedule for lecturer seeking by real surname --
SELECT * FROM "PairLesson" WHERE "Lecturer" =
	(SELECT "ID" FROM "Lecturer" WHERE "LastName"='Новотарський');

-- search shedule for lecturer seeling by lecturer's ID --
SELECT * FROM "PairLesson" WHERE "Lecturer"='ZHABIN';

-- search shedule for lecture hall --
SELECT * FROM "PairLesson" WHERE "LectureHall" = 301 ORDER BY "Day";