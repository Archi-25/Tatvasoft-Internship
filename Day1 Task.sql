create table country
(
	country_id int primary key,
	country_name character varying(100)
);

create table city
(
	city_id int primary key,
	contry_id int,
	city_name character varying(100)
);

create table MissionApplication
(
	MissionApplication_id int primary key,
	mission_id int,
	user_id int,
	applied_date timestamp with time zone NOT NULL DEFAULT now(),
	status boolean,
	sheet int
);

create table Missions
(
	Mission_id int primary key,
	mission_title character varying(100),
	mission_description character varying(100),
	mission_organization_name character varying(100),
	mission_organization_detail character varying(100),
	country_id int,
	city_id int,
	start_date date,
	end_date date,
	mission_type character varying(100),
	total_sheet int,
	registration_deadline date,
	mission_theme_id character varying(100),
	mission_skill_id character varying(100),
	mission_images character varying(100),
	mission_documents character varying(100),
	mission_avilability character varying(100),
	mission_video_url character varying(100)
);

create table Missionskill
(
	mission_id int primary key,
	skill_name character varying(100),
	status character varying(100)
);

create table Missiontheme
(
	id int primary key,
	theme_name character varying(100),
	status character varying(100)
);

create table users
(
	user_id int primary key,
	firstname character varying(100),
	lastname character varying(100),
	phone_number character varying(100),
	Email_address character varying(100),
	usertype character varying(100),
	password character varying(100)
);

create table userdetail
(
	id int primary key,
	user_id int,
	name character varying(100),
	surname character varying(100),
	employe_id character varying(100),
	manager character varying(100),
	title character varying(100),
	department character varying(100),
	my_profile character varying(100),
	why_i_volunteer character varying(100),
	country_id int,
	city_id int,
	Avilability character varying(100),
	LinkdInUrl character varying(100),
	MySkills character varying(100),
	UserImage character varying(100),
	status boolean
);

create table userskills
(
	id int primary key,
	skill character varying(100),
	user_id int
);