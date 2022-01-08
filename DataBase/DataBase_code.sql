CREATE DATABASE `Crud_CAC`;
USE `Crud_CAC`;
DROP TABLE IF EXISTS `Crud_CAC_table`;
CREATE TABLE `Crud_CAC_table` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `surname` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Crud_CAC_table` (`name`,`surname`,`email`)
VALUES
  ("Felix","Guerrero","ac@yahoo.com"),
  ("Elton","Foreman","mollis.lectus@yahoo.com"),
  ("Ariana","Graham","quisque@yahoo.edu"),
  ("Hilda","Diaz","dolor@hotmail.net"),
  ("Wyatt","Newton","non.sapien.molestie@hotmail.org"),
  ("Brianna","Mccarty","egestas.sed@icloud.couk"),
  ("Levi","Farley","sed.nulla@hotmail.com"),
  ("Ishmael","Boone","nullam@yahoo.edu"),
  ("Drake","Stephens","lectus.nullam@aol.ca"),
  ("Rebecca","Webster","aliquet.metus@google.ca");
INSERT INTO `Crud_CAC_table` (`name`,`surname`,`email`)
VALUES
  ("Samantha","Nguyen","velit.aliquam@icloud.couk"),
  ("Flynn","Morrow","sagittis@protonmail.net"),
  ("Reece","Tucker","vestibulum.ut@hotmail.edu"),
  ("Lance","Wilder","dui@outlook.ca"),
  ("Trevor","Ray","tempus.non@outlook.couk"),
  ("Honorato","Kidd","dis@protonmail.ca"),
  ("Libby","Fuentes","aliquet.proin@outlook.ca"),
  ("Shelly","Doyle","nunc@protonmail.com"),
  ("Denise","Bullock","aliquet.metus@google.edu"),
  ("Colby","James","id.magna@yahoo.net");
INSERT INTO `Crud_CAC_table` (`name`,`surname`,`email`)
VALUES
  ("August","Merrill","odio.phasellus.at@aol.ca"),
  ("Rosalyn","Weiss","gravida.sit.amet@aol.net"),
  ("Colorado","Montoya","vel.lectus@yahoo.com"),
  ("Len","Gay","ultrices.mauris@icloud.net"),
  ("Boris","Young","consequat.lectus.sit@yahoo.edu"),
  ("Wing","Wright","sagittis@google.couk"),
  ("Brent","Porter","neque@outlook.org"),
  ("Connor","Boone","dis.parturient.montes@google.org"),
  ("Doris","Marquez","egestas.fusce@yahoo.com"),
  ("Illana","Yang","erat.volutpat@icloud.couk");
INSERT INTO `Crud_CAC_table` (`name`,`surname`,`email`)
VALUES
  ("Rooney","Neal","mauris@aol.com"),
  ("Penelope","Parrish","ante.blandit.viverra@outlook.edu"),
  ("Kieran","Contreras","dolor.dapibus.gravida@aol.net"),
  ("Kadeem","Austin","nibh@yahoo.com"),
  ("Wyoming","Strickland","rutrum.justo.praesent@hotmail.ca"),
  ("Candace","Norton","ridiculus.mus@aol.couk"),
  ("Flavia","Davenport","porta.elit@icloud.edu"),
  ("Salvador","Roach","dolor@icloud.org"),
  ("Roary","Cook","parturient.montes@protonmail.com"),
  ("Ulysses","Brady","orci.in@aol.edu");
INSERT INTO `Crud_CAC_table` (`name`,`surname`,`email`)
VALUES
  ("Ferdinand","Payne","cum.sociis@google.com"),
  ("Orlando","Nolan","venenatis.a@hotmail.net"),
  ("Nolan","Payne","nec.ligula@outlook.org"),
  ("Winifred","Spence","hymenaeos.mauris@yahoo.com"),
  ("Colleen","Little","bibendum@hotmail.net"),
  ("Tanya","Britt","et.magnis.dis@protonmail.couk"),
  ("Desirae","Sherman","mollis.vitae@icloud.ca"),
  ("Maxwell","Flores","sit@outlook.ca"),
  ("Scarlett","Bauer","commodo.hendrerit@yahoo.ca"),
  ("Tyler","Rojas","sit.amet.nulla@outlook.net");
INSERT INTO `Crud_CAC_table` (`name`,`surname`,`email`)
VALUES
  ("Leandra","Humphrey","dui.nec.tempus@yahoo.couk"),
  ("Bree","Mendez","tortor.nunc@yahoo.org"),
  ("Stephen","Chase","purus.gravida@protonmail.ca"),
  ("Adam","Cote","nec@protonmail.edu"),
  ("Hillary","Schneider","lectus.rutrum@google.com"),
  ("Dominic","Skinner","bibendum@hotmail.ca"),
  ("Adrian","Hodges","dignissim@icloud.net"),
  ("Oren","Kerr","nec.enim@outlook.org"),
  ("Ignatius","Coleman","mauris.ut@icloud.org"),
  ("Rashad","Park","egestas.a.dui@google.net");
INSERT INTO `Crud_CAC_table` (`name`,`surname`,`email`)
VALUES
  ("Allen","Banks","accumsan@protonmail.com"),
  ("Brody","Hicks","orci.luctus.et@google.edu"),
  ("Nayda","Armstrong","curabitur.ut@google.org"),
  ("Chancellor","Zamora","a.arcu.sed@google.org"),
  ("Bo","Hudson","ullamcorper@hotmail.com"),
  ("Tara","Calhoun","id@hotmail.edu"),
  ("Troy","Snider","non.enim@google.ca"),
  ("Sheila","Henderson","ipsum.suspendisse.non@icloud.couk"),
  ("Shelby","Byers","duis.mi@icloud.ca"),
  ("Ian","Salas","velit@yahoo.edu");
INSERT INTO `Crud_CAC_table` (`name`,`surname`,`email`)
VALUES
  ("Ursa","Joseph","tellus.aenean@icloud.org"),
  ("Gail","O'donnell","penatibus@outlook.net"),
  ("Dennis","Richmond","libero@aol.org"),
  ("Caleb","Valencia","duis.risus@yahoo.couk"),
  ("Christian","Hensley","nulla@icloud.couk"),
  ("Ariel","Bradley","luctus.lobortis@protonmail.couk"),
  ("Reed","Nicholson","pede.praesent@icloud.org"),
  ("Rahim","Mcdowell","malesuada@aol.ca"),
  ("Leslie","Kidd","rhoncus.donec@icloud.com"),
  ("Avye","Flowers","morbi.non@yahoo.couk");
INSERT INTO `Crud_CAC_table` (`name`,`surname`,`email`)
VALUES
  ("Donna","Baird","vitae.velit.egestas@aol.com"),
  ("Walter","Glenn","non.bibendum@icloud.ca"),
  ("Gannon","Blake","quis.pede.praesent@protonmail.org"),
  ("Myles","Higgins","pede.malesuada.vel@hotmail.net"),
  ("Scarlett","Mendez","adipiscing@yahoo.edu"),
  ("Tasha","May","quisque.ornare@protonmail.org"),
  ("Lamar","Stevens","imperdiet.ullamcorper.duis@google.ca"),
  ("Julie","Whitley","vestibulum.accumsan@hotmail.org"),
  ("Jamal","Jones","adipiscing.elit@google.ca"),
  ("Constance","Rollins","molestie.in.tempus@icloud.com");
INSERT INTO `Crud_CAC_table` (`name`,`surname`,`email`)
VALUES
  ("Zahir","Leon","nam@google.couk"),
  ("Yvette","Morales","faucibus.id@google.net"),
  ("Hayden","Sutton","nec.mollis@google.edu"),
  ("Yeo","Willis","phasellus.dolor@aol.org"),
  ("Abraham","Norman","tellus.sem@hotmail.org"),
  ("Callum","Alvarez","orci.sem@google.com"),
  ("Renee","Ingram","risus.donec.egestas@google.edu"),
  ("Aidan","Knight","bibendum.fermentum@yahoo.couk"),
  ("Delilah","Acevedo","per.conubia@yahoo.edu"),
  ("Karleigh","Gamble","non.enim@hotmail.com");
