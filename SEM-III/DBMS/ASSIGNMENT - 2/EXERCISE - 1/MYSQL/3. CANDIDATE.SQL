CREATE TABLE CANDIDATE (
    Candidate_ID FLOAT(6) PRIMARY KEY,
    Candidate_Name VARCHAR(20) NOT NULL,
    Candidate_Email VARCHAR(30) UNIQUE,
    Candidate_Dept CHAR(2) DEFAULT 'HR',
    Manager_ID FLOAT(6),
    CONSTRAINT CHECK (Candidate_Email LIKE '%@%.%'),
    FOREIGN KEY (Manager_ID) REFERENCES CANDIDATE(Candidate_ID)
);