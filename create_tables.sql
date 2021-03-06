        DROP TABLE IF EXISTS dict; 

        CREATE TABLE dict (
            id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY, 
            item TEXT NOT NULL, 
            meaning TEXT, 
            examples TEXT[], 
            note TEXT
        );

        DROP TABLE IF EXISTS ref;

        CREATE TABLE ref (
            id INTEGER REFERENCES dict(id) NOT NULL,
            refId INTEGER REFERENCES dict(id) NOT NULL
        )
