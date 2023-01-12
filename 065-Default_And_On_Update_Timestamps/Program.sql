-- Default And On Update Timestamps

/*
>>>> Automatic Initialization and Updating for TIMESTAMP and DATETIME
		https://dev.mysql.com/doc/refman/8.0/en/timestamp-initialization.html
>>>>
>>>>
>>>>
*/

CREATE TABLE captions
(
	CaptionMessage VARCHAR(100),
	CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO captions (CaptionMessage) VALUES('Good Morning');
INSERT INTO captions (CaptionMessage) VALUES('Good Evening');

SELECT * FROM captions;


-- Setting timestamp on updating a column.
CREATE TABLE messages
(
	Message VARCHAR(100),
	CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	UpdatedAt TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO messages (Message) VALUES('Good Morning');
INSERT INTO messages (Message) VALUES('Good Evening');

UPDATE messages SET Message = 'Hii All';
SELECT * FROM messages;
