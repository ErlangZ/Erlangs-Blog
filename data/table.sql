create database if not exists `blog_db` CHARACTER SET = `utf8`; 
use `blog_db`
drop table if exists `articles`;
drop table if exists `categories`;
drop table if exists `contains`;

create table `articles` (`id` integer auto increment, 
						`title` varchar(100), 
						`author` varchar(100), 
						`create_time` timestamp, 
						`modify_time` timestamp, 
						`content` varchar(65530), 
						primary key(`id`)
						)engine=`InnoDB`;

create table `categories`(`id` integer auto increment, 
						`name` varchar(100), 
						primary key(`id`)
						)engine=`InnoDB`;

create table `contains_rel`(`id` integer auto increment, 
						`article_id` integer,
						`category_id` integer,
						primary key(`id`), 
						constraint `articles_contains_fk` foreign key(`article_id`) references `articles`(`id`) on delete cascade,
						constraint `categories_contains_fk` foreign key(`category_id`)  references `categories`(`id`) on delete cascade
						)engine=`InnoDB`;
						