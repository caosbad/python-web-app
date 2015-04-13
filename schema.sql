-- init database

drop database if exists awesome;

create database awesome;

show DATABASES ;

USE awesome;

grant select, insert, update, delete on awesome.* to 'www-data'@'localhost' identified by 'www-data';

create table users(

  `id` varchar(50) not null,
  `email` varchar(50) not null,
  `password` varchar(50) not null,
  `admin` bool not null,
  `name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL ,
  `created_at` REAL NOT NULL ,
  UNIQUE KEY `idx_email` (`email`),
  key `idx_created_at` (`created_at`),
  PRIMARY KEY (`id`)
) ENGINE = innodb DEFAULT CHARSET = utf8;


create table blogs (
    `id` varchar(50) not null,
    `user_id` varchar(50) not null,
    `user_name` varchar(50) not null,
    `user_image` varchar(500) not null,
    `name` varchar(50) not null,
    `summary` varchar(200) not null,
    `content` mediumtext not null,
    `created_at` real not null,
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine=innodb default charset=utf8;


create table comments (
    `id` varchar(50) not null,
    `blog_id` varchar(50) not null,
    `user_id` varchar(50) not null,
    `user_name` varchar(50) not null,
    `user_image` varchar(500) not null,
    `content` mediumtext not null,
    `created_at` real not null,
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine=innodb default charset=utf8;


-- email / password:
-- admin@example.com / password

insert into users (`id`, `email`, `password`, `admin`, `name`, `created_at`, `image`) values ('0010018336417540987fff4508f43fbaed718e263442526000', 'admin@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 'Administrator', 1402909113.628, 'about:blank');
