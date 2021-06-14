
drop database if exists `quiz`;
create database `quiz`;

use `quiz`;

drop table if exists `users`;

create table `users`(
    `user_id` int(11) unsigned not null AUTO_INCREMENT,
    `username` varchar(40) not null,
    `email` varchar(128) not null,
    `password` varchar(80) not null,
    `birthday` date not null,
    `gender` enum('Female', 'Male', 'Other') not null,
    `photo` varchar(100) not null default 'anon.png',
    `role_id` int(11) unsigned not null,
    `active` tinyint(1) unsigned not null,
    `views` int(11) unsigned not null,
    `created` datetime not null,
    `modified` datetime not null,
    primary key (`user_id`),
    unique key `username` (`username`),
    unique key `email` (`email`),
    key `role_id` (`role_id`),
    key `active` (`active`)

    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table if exists `roles`;

create table roles(
    `role_id` int(11) unsigned not null auto_increment,
    `role` varchar(25) not null,
    primary key (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert ignore into `roles` (`role_id`, `role`) values
(1, 'admin'),
(2, 'member'),
(3, 'guest');