DROP DATABASE  IF EXISTS `spring_security_custom_form`;

CREATE DATABASE  IF NOT EXISTS `spring_security_custom_form`;
USE `spring_security_custom_form`;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `users`
--
-- NOTE: The passwords are encrypted using BCrypt
--
-- A generation tool is avail at: http://www.luv2code.com/generate-bcrypt-password
--
-- Default passwords here are: fun123
--
-- password is fun123
INSERT INTO `users` 
VALUES 
(1,'john','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',null, 1,'john', 'alex'),
(2,'mary','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',null, 1,'mary', 'alex'),
(3, 'susan','{bcrypt}$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K',null,1, 'susan', 'alex');

INSERT INTO `role`
VALUES
(1,'ROLE_EMPLOYEE'),
(2,'ROLE_ADMIN'),
(3,'ROLE_MANAGER');

INSERT INTO `users_roles`
VALUES
(1,1),
(2,1),
(2,3),
(3,1),
(3,2);


