# Base de datos 
use `php-advanced`;
create table jobs
(
    id          int primary key auto_increment,
    title       varchar(50)  not null,
    description text         not null,
    months      int          not null,
    image       varchar(255) not null,
    created_at  timestamp    not null default current_timestamp on update current_timestamp,
    updated_at  timestamp    not null default current_timestamp on update current_timestamp,
    deleted_at  timestamp    null
);

create table users
(
    id         int primary key auto_increment,
    email      varchar(255) not null,
    password   varchar(255) not null,
    created_at timestamp    not null default current_timestamp on update current_timestamp,
    updated_at timestamp    not null default current_timestamp on update current_timestamp
);



create table messages
(

    id         int primary key auto_increment,
    name       varchar(50)  not null,
    email      varchar(255) not null,
    message    text         not null,
    email_sent tinyint(1)   not null default 0,
    created_at timestamp    not null default current_timestamp on update current_timestamp,
    updated_at timestamp    not null default current_timestamp on update current_timestamp
)


