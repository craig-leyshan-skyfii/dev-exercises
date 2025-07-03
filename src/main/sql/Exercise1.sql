-- Here is some DDL for some tables that represent users and their assigned roles.

CREATE TABLE user
(
    id           bigint auto_increment primary key,
    created      datetime     not null,
    modified     datetime     not null,
    version      int null,
    emailAddress varchar(255) not null,
    firstName    varchar(255) not null,
    lastName     varchar(255) not null
);

CREATE TABLE user_roles
(
    user_id_fk bigint not null,
    role_id_fk bigint not null,
    primary key (user_id_fk, role_id_fk),
    constraint user_roles_ibfk_1 foreign key (user_id_fk) references skyfii.user (id) ON DELETE CASCADE,
    constraint user_roles_ibfk_2 foreign key (role_id_fk) references skyfii.role (id) ON DELETE CASCADE
);

CREATE TABLE role
(
    id       bigint auto_increment primary key,
    created  datetime     not null,
    modified datetime     not null,
    version  int null,
    name     varchar(255) not null
);


-- Now write a query that returns a list of role names together with the number of users in each role
