
use BI06_NDS

CREATE TABLE Person
(
	id int identity(1,1) not null primary key,
	age_group varchar(50),
	gender varchar(50)
)

insert into Person
select a.age_group_name, g.gender_name
from AGE_GROUP a, GENDER G, COMPILED_CASE_DETAILS c
where a.age_group_id = c.age_group_id and g.gender_id = c.gender_id

