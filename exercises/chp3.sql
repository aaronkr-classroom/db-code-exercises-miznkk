/*
Game User table 작성 (개체)
[Entities / 개체]
- User
- System

[사용자]
- 플레이어, 운영자

[요구사항]
- 플레이어는 아이디, 비밀번호, 닉네임, 이메일을 입력하여 회원가입한다.
- 플레이어는 게임 내에서 사용할 캐릭터를 생성할 수 있으며 직업을 선택해야 한다.
- 플레이어가 몬스터를 사냥하면 캐릭터의 경험치가 오르고, 일정치에 도달하면 레벨이 올라간다.
- 운영자는 규정을 위반한 플레이어의 계정을 정지 상태로 변경할 수 있다.
- 운영자는 전체 캐릭터들의 순위를 조회할 수 있다.

[User Properties]
- user_id		(BIGSERIAL)
- login_id		(varchar(30))
- password		(varchar(15))
- status		(varchar(20))

[Character Properties]
- char_id		(BIGSERIAL)
- char_name		(varchar(20))
- job			(varchar(20))
- level			(int)
- experience	(int)		// 경험치
*/

CREATE TABLE game_user (
	user_id BIGSERIAL,
	login_id varchar(30),
	password varchar(15),
	status varchar(20)
);

CREATE TABLE game_character (
	char_id BIGSERIAL,
	char_name varchar(20),
	job varchar(20),
	level int,
	experience int
);


insert into game_user (user_id, login_id, password, status)
values
	(1, 'dkssud', 'pwpw123', 'active'),
	(2, 'sdafsdaf', 'kimkim555', 'banned'),
	(3, 'kmklnf', 'chch523', 'active')

insert into game_character (char_id, char_name, job, level, experience)
values
	(1, '멋쨰이', '마법사', 59, 88),
	(2, 'babo', '검사', 22, 97),
	(3, 'babobabo', '용사', 46, 28)

select * from game_user;
select * from game_character;