drop database if exists practise;

create database practise;

use practise;

grant select, insert, update, delete on practise.* to 'lzg'@'localhost' identified by '123456';

create table users (
    `id` bigint(50) not null auto_increment,
    `email` varchar(50) not null,
    `passwd` varchar(50) not null,
    `admin` bool not null,
    `name` varchar(50) not null,
    `image` varchar(500) not null default '',
    `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
    unique key `idx_email` (`email`),
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine=innodb default charset=utf8;

create table blogs (
    `id` bigint(50) not null auto_increment,
    `user_id` varchar(50) not null,
    `user_name` varchar(50) not null,
    `user_image` varchar(500) not null default '',
    `name` varchar(50) not null,
    `summary` varchar(200) not null,
    `content` mediumtext not null,
    `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine=innodb default charset=utf8;

create table comments (
    `id` bigint(50) not null auto_increment,
    `blog_id` varchar(50) not null,
    `user_id` varchar(50) not null,
    `user_name` varchar(50) not null,
    `user_image` varchar(500) not null default '',
    `content` mediumtext not null,
    `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine=innodb default charset=utf8;