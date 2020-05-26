CREATE TABLE `Grade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO `grade` (name, type, score, total)
VALUES ('African Countries Worksheet', 'Assignment', 10.0 , 10.0);

INSERT INTO `grade` (name, type, score, total)
VALUES ('Asian Langauges Quiz', 'Quiz', 2.0 , 10.0);

INSERT INTO `grade` (name, type, score, total)
VALUES ('African Countries Worksheet', 'Exam', 43.0 , 50.0);
