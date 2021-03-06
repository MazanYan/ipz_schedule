DELETE FROM "Schedule" *;
DELETE FROM "Student" *;

DELETE FROM "PairLesson" *;
DELETE FROM "Lecturer" *;
DELETE FROM "LectureHall" *;
DELETE FROM "Subject" *;
DELETE FROM "Group" *;

INSERT INTO "Group" ("Number", "Year", "Specialization")
VALUES ('IV-71', 2, 'Технології програмування для комп''ютерних систем та мереж'),
	   ('IS-71', 2, 'Інформаційні управляючі системи та технології'),
	   ('IK-81', 1, 'Інформаційне забезпечення робототехнічних систем');


-- INSERT INTO "Student" ("StudentBookCode", "FirstName", "LastName", "FatherName", "Group", "Login", "Password") 
-- VALUES ('IV7109', 'Ян', 'Мазан', 'Владиславович', 'IV-71', 'Di&Di', 'lalala'),
-- 	   ('IV7101', 'Данило', 'Андрющенко', 'Андрійович', 'IV-71', 'lsdafk', 'Andomerneror'),
-- 	   ('IV7102', 'Олексій', 'Афонін', 'Віталійович', 'IV-71', 'SasukeUchihaFan1850', 'as_d_b_sa'),
--     ('IV7103', 'Олександр', 'Бордюг', 'Олегович', 'IV-71', 'Mersel888Mersel', 'DarthVader-5'),
-- 	   ('IV7104', 'Олександр', 'Гуменюк', 'Русланович', 'IV-71', 'Sataskis', 'I_love_IV_71'),
--     ('IS7101', 'Сергій', 'Астахов', 'Дмитрович',	'IS-71', 'ДругObamaКутошLs', 'sss_sss_x424'),
-- 	   ('IS7102', 'Анаксимена', 'Аюдагова', 'Дмитрівна', 'IS-71', 'anaximena_lst', 'Я_Люблю_Порошенка'),
--     ('IS7103', 'Павло', 'Григоренко', 'Петрович', 'IS-71', 'GrigorenkoPavel_228', 'Stand_up_be_strong!'),
-- 	   ('IK8101', 'Юлія', 'Берда', 'Анатоліївна', 'IK-81', 'DDD-ADD', 'Know_right_from_wrong!'),
-- 	   ('IK8105', 'Яна', 'Козловська', 'Янківна', 'IK-81', 'MillionLover', 'Forever_hence,'),
-- 	   ('IK8107', 'Адріан', 'Логвинюк', 'Кирилович', 'IK-81', 'GameOfThrones_909', 'Believe_yourself!'),
-- 	   ('IK8109', 'Марина', 'Молчанова', 'Людвіківна', 'IK-81', 'erhalog', 'ОтрядьіПутина'),
-- 	   ('IK8112', 'Діана', 'Новічкова', 'Олександрівна', 'IK-81', 'ЯойнийМонстр', 'ЛюбительЯою');

INSERT INTO "Schedule" ("Group", "Semester", "Year")
VALUES ('IV-71', 2, 2019),
	   ('IS-71', 2, 2019),
	   ('IK-81', 2, 2019);

INSERT INTO "Lecturer" ("ID", "FirstName", "LastName", "FatherName")
VALUES ('VEMBER', 'Валерія', 'Вембер', 'Володимирівна'),
	   ('PORYEV', 'Віктор', 'Порєв', 'Михайлович'),
	   ('NOVOTARSKYI', 'Михайло', 'Новотарський', 'Анатолійович'),
	   ('BONDARENKO', 'Олександра', 'Бондаренко', 'Ігорівна'),
	   ('VERBA', 'Олександр', 'Верба', 'Андрійович'),
	   ('ZHABIN', 'Валерій', 'Жабін', 'Іванович'),
	   ('LOBODZ', 'Вадим', 'Лободзинський', 'Юрійович'),
	   ('SERGEIEV', 'Дмитро', 'Сєргєєв', 'Сергійович'),
	   ('BATRAK', 'Євгеній', 'Батрак', 'Олександрович'),
	   ('NEDASHK', 'Євген', 'Недашківський', 'Анатолійович'),
	   ('MOSKAL', 'Наталія', 'Москаленко', 'Володимирівна'),
	   ('SOLDATOVA', 'Марія', 'Солдатова', 'Олександрівна'),
	   ('TELISHEVA', 'Тамара', 'Тєлишева', 'Олексіївна'),
	   ('TARASIUK', 'Наталія', 'Тарасюк', 'Іванівна');

INSERT INTO "LectureHall" ("Number", "X", "Y", "Floor", "Photo")
VALUES (301, 0.0, 0.0, 3, '301.jpg'),
	   (536, 0.0, 0.0, 5, '536.jpg'),
	   (302, 0.0, 0.0, 3, '302.jpg'),
	   (339, 0.0, 0.0, 3, '339.jpg'),
	   (535, 0.0, 0.0, 5, '535.jpg'),
	   (207, 0.0, 0.0, 2, '207.jpg'),
	   (419, 0.0, 0.0, 5, '419.jpg'),
	   (418, 0.0, 0.0, 5, '418.jpg'),
	   (407, 0.0, 0.0, 5, '407.jpg'),
	   (307, 0.0, 0.0, 3, '307.jpg'),
	   (417, 0.0, 0.0, 4, '417.jpg'),
	   (26, 0.0, 0.0, 1, '26.jpg'),
	   (217, 0.0, 0.0, 2, '217.jpg');

INSERT INTO "Subject" ("ID", "Name")
VALUES ('ECOL', 'Екологія'),
	   ('AMC', 'Алгоритми та методи обчислень'),
	   ('SP1', 'Системне програмування-1'),
	   ('ENG', 'Іноземна мова загальнотехнічного спрямування'),
	   ('COMP_ARCH1', 'Архітектура комп''ютерів-1. Арифметичні та управляючі пристрої'),
	   ('TOE2', 'Додаткові розділи теорії електричних і магнітних кіл'),
	   ('ALG_T', 'Теорія алгоритмів'),
	   ('COMP_GR', 'Комп''ютерна графіка'),
	   ('BD_SYS', 'Системи баз даних'),
	   ('TEORVER2', 'Додаткові розділи теорії ймовірностей, ймовірнісних процесів і математичної статистики');

INSERT INTO "PairLesson" ("ID", "Group", "LectureHall", "Lecturer", "Subject", "Day", "LessonNumber")
VALUES (07100, 'IV-71', 301, 'VEMBER', 'ECOL', 1, 1),
	   (07101, 'IV-71', 536, 'PORYEV', 'AMC', 1, 2),
	   (07102, 'IV-71', 302, 'PORYEV', 'SP1', 1, 3),
	   (07103, 'IV-71', 301, 'NOVOTARSKYI', 'AMC', 2, 2),
	   (07104, 'IV-71', 339, 'BONDARENKO', 'ENG', 2, 3),
	   (07105, 'IV-71', 535, 'VERBA', 'COMP_ARCH1', 2, 4),
	   (07106, 'IV-71', 301, 'ZHABIN', 'COMP_ARCH1', 3, 2),
	   (07107, 'IV-71', 207, 'LOBODZ', 'TOE2', 3, 3),
	   
	   (08100, 'IK-81', 419, 'SERGEIEV', 'ALG_T', 1, 2),
	   (08101, 'IK-81', 418, 'SERGEIEV', 'ALG_T', 1, 3),
	   (08102, 'IK-81', 407, 'BATRAK', 'COMP_GR', 1, 4),
	   
	   (17100, 'IS-71', 307, 'NEDASHK', 'BD_SYS', 1, 1),
	   (17101, 'IS-71', 417, 'MOSKAL', 'BD_SYS', 1, 2),
	   (17102, 'IS-71', 26, 'SOLDATOVA', 'TEORVER2', 1, 3),
	   (17103, 'IS-71', 26, 'TELISHEVA', 'TEORVER2', 1, 3),
	   (17104, 'IS-71', 217, 'TARASIUK', 'ENG', 1, 4);