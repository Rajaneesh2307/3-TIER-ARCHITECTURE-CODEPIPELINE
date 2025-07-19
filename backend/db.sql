-- Create Database and User
CREATE DATABASE react_node_app; 
CREATE USER 'appuser'@'%' IDENTIFIED BY 'admin123'; 
GRANT ALL PRIVILEGES ON react_node_app.* TO ' appuser'@'%'; 
FLUSH PRIVILEGES; 

-- Create Tables
CREATE TABLE `author` ( 
  `id` int NOT NULL AUTO_INCREMENT, 
  `name` varchar(255) NOT NULL, 
  `birthday` date NOT NULL, 
  `bio` text NOT NULL, 
  `createdAt` date NOT NULL, 
  `updatedAt` date NOT NULL, 
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci; 

CREATE TABLE `book` ( 
  `id` int NOT NULL AUTO_INCREMENT, 
  `title` varchar(255) NOT NULL, 
  `releaseDate` date NOT NULL, 
  `description` text NOT NULL, 
  `pages` int NOT NULL, 
  `createdAt` date NOT NULL, 
  `updatedAt` date NOT NULL, 
  `authorId` int DEFAULT NULL, 
  PRIMARY KEY (`id`), 
  KEY `FK_66a4f0f47943a0d99c16ecf90b2` (`authorId`), 
  CONSTRAINT `FK_66a4f0f47943a0d99c16ecf90b2` FOREIGN KEY (`authorId`) REFERENCES `author` (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci; 

INSERT INTO `author` VALUES
(1,'J.K. Rowling','1965-07-31','J.K. Rowling is a British author, best known for the Harry Potter series.','2025-07-15','2025-07-15'),
(2,'J.R.R. Tolkien','1892-01-03','J.R.R. Tolkien was an English writer, poet, and academic, best known for The Lord of the Rings.','2025-07-15','2025-07-15'),
(3,'Stephen King','1947-09-21','Stephen King is an American author of horror, supernatural fiction, suspense, and fantasy novels.','2025-07-15','2025-07-15'),
(4,'Haruki Murakami','1949-01-12','Haruki Murakami is a Japanese writer known for his blend of fantasy and realism.','2025-07-15','2025-07-15'),
(5,'Leo Tolstoy','1828-09-09','Leo Tolstoy was a Russian writer who is regarded as one of the greatest authors of all time.','2025-07-15','2025-07-15'),
(6,'F. Scott Fitzgerald','1896-09-24','F. Scott Fitzgerald was an American novelist and short story writer, widely regarded as one of the greatest American writers of the 20th century.','2025-07-15','2025-07-15'),
(7,'Jane Austen','1775-12-16','Jane Austen was an English novelist known primarily for her six major novels.','2025-07-15','2025-07-15'),
(8,'George Orwell','1903-06-25','George Orwell was an English novelist, essayist, journalist and critic, known for his novels 1984 and Animal Farm.','2025-07-19','2025-07-19'),
(9,'Agatha Christie','1890-09-15','Agatha Christie was an English writer known for her sixty-six detective novels and fourteen short story collections.','2025-07-19','2025-07-19'),
(10,'Mark Twain','1835-11-30','Mark Twain was an American writer, humorist, entrepreneur, publisher, and lecturer best known for his novels The Adventures of Tom Sawyer and Adventures of Huckleberry Finn.','2025-07-19','2025-07-19'),
(11,'Ernest Hemingway','1899-07-21','Ernest Hemingway was an American novelist and short-story writer, known for works like The Old Man and the Sea.','2025-07-19','2025-07-19'),
(12,'Charles Dickens','1812-02-07','Charles Dickens was an English writer and social critic, famous for works such as Oliver Twist and A Christmas Carol.','2025-07-19','2025-07-19'),
(13,'William Shakespeare','1564-04-26','William Shakespeare was an English playwright, poet, and actor, widely regarded as the greatest writer in the English language.','2025-07-19','2025-07-19'),
(14,'Dan Brown','1964-06-22','Dan Brown is an American author best known for his thriller novels including The Da Vinci Code.','2025-07-19','2025-07-19'),
(15,'Khaled Hosseini','1965-03-04','Khaled Hosseini is an Afghan-American novelist best known for The Kite Runner.','2025-07-19','2025-07-19'),
(16,'Emily Brontë','1818-07-30','Emily Brontë was an English novelist and poet who wrote Wuthering Heights.','2025-07-19','2025-07-19'),
(17,'Paulo Coelho','1947-08-24','Paulo Coelho is a Brazilian author best known for his novel The Alchemist.','2025-07-19','2025-07-19'),
(18,'Arthur Conan Doyle','1859-05-22','Arthur Conan Doyle was a British writer and physician known for creating Sherlock Holmes.','2025-07-19','2025-07-19'),
(19,'Suzanne Collins','1962-08-10','Suzanne Collins is an American author known for The Hunger Games trilogy.','2025-07-19','2025-07-19'),
(20,'C.S. Lewis','1898-11-29','C.S. Lewis was a British writer and theologian, best known for The Chronicles of Narnia.','2025-07-19','2025-07-19'),
(21,'Margaret Atwood','1939-11-18','Canadian author known for The Handmaid’s Tale and her speculative fiction.','2025-07-19','2025-07-19'),
(22,'Gabriel García Márquez','1927-03-06','Colombian novelist and Nobel laureate, best known for One Hundred Years of Solitude.','2025-07-19','2025-07-19'),
(23,'John Green','1977-08-24','American author of young adult fiction, including The Fault in Our Stars.','2025-07-19','2025-07-19'),
(24,'Neil Gaiman','1960-11-10','British author of fantasy, horror, and science fiction works including Coraline and American Gods.','2025-07-19','2025-07-19'),
(25,'Roald Dahl','1916-09-13','British author known for children’s books like Matilda and Charlie and the Chocolate Factory.','2025-07-19','2025-07-19'),
(26,'Isaac Asimov','1920-01-02','Prolific science fiction and popular science author, known for the Foundation series.','2025-07-19','2025-07-19'),
(27,'J.D. Salinger','1919-01-01','American author best known for The Catcher in the Rye.','2025-07-19','2025-07-19'),
(28,'Virginia Woolf','1882-01-25','English writer and modernist icon, known for works like Mrs Dalloway.','2025-07-19','2025-07-19'),
(29,'Toni Morrison','1931-02-18','American novelist and Nobel laureate, known for Beloved.','2025-07-19','2025-07-19'),
(30,'Chinua Achebe','1930-11-16','Nigerian novelist known for Things Fall Apart, a seminal African novel.','2025-07-19','2025-07-19');

INSERT INTO `book` VALUES
(1,'Harry Potter and the Philosopher\'s Stone','1997-06-26','A young boy discovers he is a wizard on his 11th birthday and attends Hogwarts School.','223','2025-07-15','2025-07-15',1),
(2,'The Hobbit','1937-09-21','Bilbo Baggins goes on an unexpected adventure with dwarves to reclaim treasure.','310','2025-07-15','2025-07-15',2),
(3,'The Shining','1977-01-28','A family heads to an isolated hotel where an evil spiritual presence influences the father.','447','2025-07-15','2025-07-15',3),
(4,'Kafka on the Shore','2002-09-12','A surreal novel involving two separate plots that eventually converge.','505','2025-07-15','2025-07-15',4),
(5,'War and Peace','1869-01-01','A historical novel that chronicles the French invasion of Russia.','1225','2025-07-15','2025-07-15',5),
(6,'The Great Gatsby','1925-04-10','A story of the young and mysterious millionaire Jay Gatsby and his obsession.','218','2025-07-15','2025-07-15',6),
(7,'Pride and Prejudice','1813-01-28','Elizabeth Bennet deals with manners, upbringing, morality, and marriage.','279','2025-07-15','2025-07-15',7),
(8,'1984','1949-06-08','A dystopian novel set in a totalitarian society ruled by Big Brother.','328','2025-07-19','2025-07-19',8),
(9,'Murder on the Orient Express','1934-01-01','Poirot investigates a murder on a snowbound train.','256','2025-07-19','2025-07-19',9),
(10,'The Adventures of Tom Sawyer','1876-06-01','A boy growing up along the Mississippi River.','274','2025-07-19','2025-07-19',10),
(11,'The Old Man and the Sea','1952-09-01','An old fisherman battles a giant marlin far out in the Gulf Stream.','127','2025-07-19','2025-07-19',11),
(12,'A Tale of Two Cities','1859-04-30','A novel set in London and Paris before and during the French Revolution.','489','2025-07-19','2025-07-19',12),
(13,'Hamlet','1603-01-01','A tragedy about Prince Hamlet of Denmark.','160','2025-07-19','2025-07-19',13),
(14,'The Da Vinci Code','2003-03-18','A symbologist uncovers a religious mystery protected by a secret society.','489','2025-07-19','2025-07-19',14),
(15,'The Kite Runner','2003-05-29','A story of friendship and redemption in Afghanistan.','371','2025-07-19','2025-07-19',15),
(16,'Wuthering Heights','1847-12-01','A tragic love story set on the Yorkshire moors.','416','2025-07-19','2025-07-19',16),
(17,'The Alchemist','1988-04-15','A shepherd boy travels in search of a treasure.','208','2025-07-19','2025-07-19',17),
(18,'The Hound of the Baskervilles','1902-04-01','Holmes investigates the legend of a supernatural hound.','256','2025-07-19','2025-07-19',18),
(19,'The Hunger Games','2008-09-14','In a dystopian future, teenagers are forced to fight to the death.','384','2025-07-19','2025-07-19',19),
(20,'The Lion, the Witch and the Wardrobe','1950-10-16','Children discover a magical world inside a wardrobe.','208','2025-07-19','2025-07-19',20),
(21,'The Handmaid\'s Tale','1985-01-01','A dystopian tale of women forced into reproductive slavery.','311','2025-07-19','2025-07-19',21),
(22,'One Hundred Years of Solitude','1967-05-30','The multi-generational story of the Buendía family.','417','2025-07-19','2025-07-19',22),
(23,'The Fault in Our Stars','2012-01-10','Teenagers meet in a cancer support group and fall in love.','313','2025-07-19','2025-07-19',23),
(24,'American Gods','2001-06-19','A man is caught in a war between old and new gods.','465','2025-07-19','2025-07-19',24),
(25,'Charlie and the Chocolate Factory','1964-01-17','A boy wins a golden ticket to visit a magical chocolate factory.','192','2025-07-19','2025-07-19',25),
(26,'Foundation','1951-05-01','A mathematician predicts the fall of the Galactic Empire.','255','2025-07-19','2025-07-19',26),
(27,'The Catcher in the Rye','1951-07-16','A teenager recounts his days in New York after being expelled.','277','2025-07-19','2025-07-19',27),
(28,'Mrs Dalloway','1925-05-14','A woman reflects on her life as she prepares for a party.','296','2025-07-19','2025-07-19',28),
(29,'Beloved','1987-09-16','A woman is haunted by the ghost of her daughter.','324','2025-07-19','2025-07-19',29),
(30,'Things Fall Apart','1958-06-17','A story about the clash between traditional Igbo society and British colonialism.','209','2025-07-19','2025-07-19',30);
