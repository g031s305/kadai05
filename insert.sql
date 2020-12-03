insert into users values
(123, '456', 'Kudo'),
(234, '567', 'Team');

insert into lists values
(123, 1, '課題'),
(123, 2, '買う物');

insert into contents (userid, listid, contentid, contentname, deadline) values
(123, 2, 1, '延長コード', '2020-12-10');

insert into contents (userid, listid, contentid, contentname, priority) values
(123, 2, 2, 'マウスウォッシュ', 3);

insert into reminds values
(123, 2, 1, '2020-12-9');

