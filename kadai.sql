create table users(
    id int not null primary key ,--ユーザーID 
    password varchar(10) , --パスワード 
    name varchar(80)  --ユーザー名
);

create table lists(
    userid int , --ユーザーID
    listid int , --リストID
    listname varchar(10) , --リスト名 
    primary key(userid, listid),
    foreign key (userid) references users(id)
);

create table contents(
    userid int , --ユーザーID
    listid int , --リストID 
    contentid int , --コンテンツID 
    contentname varchar(80) , --コンテンツ名 
    deadline date , --期限
    status boolean default 'f', --ステータス (t完了,f未完了)
    priority int default 0 ,--優先度 (3高,2中,1低,0未設定)
    primary key(userid, listid, contentid),
    foreign key (userid, listid) references lists(userid,listid)
);

create table reminds(
    userid int , --ユーザーID
    listid int , --リストID
    contentid int , --コンテンツID
    remind date ,--通知日
    primary key(userid, listid, contentid),
    foreign key (userid, listid, contentid) references contents(userid, listid, contentid)
);