Create DATABASE alumni_space;

CREATE TABLE ALUMNI_SPACE_UI (
    account_id SERIAL PRIMARY KEY,
    fullname VARCHAR(20) NOT NULL
    email VARCHAR(50) NOT NULL UNIQUE, -- Added UNIQUE constraint
    password VARCHAR(100) NOT NULL,
);

CREATE TABLE Alumni_Space_Account (
    account_id SERIAL PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE, -- Added UNIQUE constraint
    password VARCHAR(50) NOT NULL,
    role VARCHAR(20) NOT NULL
);

CREATE TABLE Tut_Alumni (
    alumni_id SERIAL PRIMARY KEY,
    account_id INT REFERENCES Alumni_Space_Account(account_id),
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL
);

CREATE TABLE Administrator (
    admin_id SERIAL PRIMARY KEY,
    account_id INT REFERENCES Alumni_Space_Account(account_id),
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
);

--Profile

--Profile

CREATE TABLE UserProfile(
    user_id SERIAL PRIMARY KEY,
    account_id INT REFERENCES Alumni_Space_Account(account_id),
    contact_no VARCHAR(50) NOT NULL,
    education VARCHAR(100) NOT NULL,
    achievement VARCHAR(50) NOT NULL,
    skills VARCHAR(50) NOT NULL,
    experience VARCHAR(50) NOT NULL,
    interest VARCHAR(50) NOT NULL,
    bio VARCHAR(50) NOT NULL
);


CREATE TABLE UserStory(
    user_id SERIAL PRIMARY KEY,
    alumni_id INT REFERENCES Alumni_Space_Account(account_id) ,
    story_type VARCHAR(50) NOT NULL,
    story_text VARCHAR(50) NOT NULL,
    date_posted TimeStamp NOT NULL
);


CREATE TABLE JobListing(
    job_id SERIAL PRIMARY KEY,
    account_id INT REFERENCES Alumni_Space_Account(account_id),
    content_type VARCHAR(50) NOT NULL,
    job_title VARCHAR(50) NOT NULL,
    company VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    deadline Date,
    date_posted Date
);


CREATE TABLE Event(
    event_id SERIAL PRIMARY KEY,
    alumni_id INT REFERENCES Alumni_Space_Account(account_id) ,
    event_title VARCHAR(50) NOT NULL,
    event_description VARCHAR(100) NOT NULL,
    date Date
    
);


CREATE TABLE Connection(
    connection_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Alumni_Space_Account(user_id) ,
    notification_id INT REFERENCES Alumni_Space_Account(notification_id) ,
    interaction_history VARCHAR(100) NOT NULL,
    date Date
    
);


CREATE TABLE Notification(
    notification_id SERIAL PRIMARY KEY,
    job_id INT REFERENCES Alumni_Space_Account(job_id) ,
    event_id INT REFERENCES Alumni_Space_Account(event_id) ,
    subject VARCHAR(50) NOT NULL,
    message VARCHAR(50) NOT NULL,
    date Date
    
);

CREATE TABLE Chat(
    chat_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Alumni_Space_Account(user_id) ,
    notification_id INT REFERENCES Alumni_Space_Account(notification_id) ,
    attribute_name VARCHAR(50) NOT NULL,
    message VARCHAR(50) NOT NULL,
    time TimeStamp,
    chat_history VARCHAR(50) NOT NULL
    
);

CREATE TABLE Query(
    query_id SERIAL PRIMARY KEY,
    job_id INT REFERENCES Alumni_Space_Account(job_id) ,
    account_id INT REFERENCES Alumni_Space_Account(account_id),
    query_text VARCHAR(50) NOT NULL,
    time TimeStamp,
    status VARCHAR(50) NOT NULL,
    date DATE
);