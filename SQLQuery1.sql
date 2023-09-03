create database BlogDb1

use BlogDb1

Create table Post(
Id int primary key,
Title nvarchar(250) not null,
Content nvarchar(500) not null,
PublicationDate datetime not null,
Author nvarchar(50) not null)

insert into Post (Id, Title, Content, PublicationDate, Author)
values   (1, 'Post_1', 'Demo of Post #4', '2023-09-05 16:00:00', 'Taylor'),
         (2, 'Post_2', 'Demo of Post #5', '2022-11-11 09:30:00', 'Musk'),
		 (3, 'Post_3', 'Demo of Post #6', '2023-06-04 15:00:00', 'Katherine Langford')

select * from Post

create table Comment
(Id int primary key,
Content nvarchar(500) not null,
PublicationDate datetime not null,
PostId int foreign key references Post)

insert into Comment (Id, Content, PublicationDate, PostId)
values
    (1, 'That is something hurtful called core', '2023-08-09 16:00:00', 1),
    (2, 'That is something rare called ashish', '2023-12-11 11:30:00', 2),
    (3, 'That is something unplanned called death', '2023-02-05 18:30:00', 3)

select * from Comment