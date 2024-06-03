-- Relational Schema

CREATE TABLE Galleries (
    GalleryNum INT PRIMARY KEY,
    Name VARCHAR(255),
    Phone VARCHAR(15),
    Hours VARCHAR(255),
    Intro TEXT,
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(ID)
);


CREATE TABLE Locations (
    ID INT PRIMARY KEY,
    Country VARCHAR(255),
    State VARCHAR(255),
    City VARCHAR(255),
    Street VARCHAR(255),
    ZipCode VARCHAR(10)
);

CREATE TABLE Drawings (
    DrawingNum INT PRIMARY KEY,
    Title VARCHAR(255),
    Size VARCHAR(50),
    Material VARCHAR(255),
    Date DATE,
    GalleryNum INT,
    FOREIGN KEY (GalleryNum) REFERENCES Galleries(GalleryNum)
);


CREATE TABLE Artists (
    ArtistNum INT PRIMARY KEY,
    Name VARCHAR(255),
    Phone VARCHAR(15),
    Birthday DATE,
    Email VARCHAR(255),
    BioStatementID INT,
    FOREIGN KEY (BioStatementID) REFERENCES BioStatements(ID)
);


CREATE TABLE BioStatements (
    ID INT PRIMARY KEY,
    Citizenship VARCHAR(255),
    Education TEXT,
    Experience TEXT,
    MasterPiece VARCHAR(255),
    FOREIGN KEY (ArtistNum) REFERENCES Artists(ArtistNum)
);