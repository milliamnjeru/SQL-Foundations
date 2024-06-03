create  Database  Art_GalleriesDB;
use Art_GalleriesDB;

CREATE TABLE Galleries (
    GalleryNum INT PRIMARY KEY,
    Name VARCHAR(50),
    Phone VARCHAR(15),
    Hours VARCHAR(25),
    Intro TEXT,
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(ID)
);


CREATE TABLE Locations (
    ID INT PRIMARY KEY,
    Country VARCHAR(25),
    State VARCHAR(25),
    City VARCHAR(25),
    Street VARCHAR(25),
    ZipCode VARCHAR(10)
);

CREATE TABLE Drawings (
    DrawingNum INT PRIMARY KEY,
    Title VARCHAR(25),
    Size VARCHAR(50),
    Material VARCHAR(25),
    Date DATE,
    GalleryNum INT,
    FOREIGN KEY (GalleryNum) REFERENCES Galleries(GalleryNum)
);


CREATE TABLE Artists (
    ArtistNum INT PRIMARY KEY,
    Name VARCHAR(25),
    Phone VARCHAR(15),
    Birthday DATE,
    Email VARCHAR(25),
    BioStatementID INT,
    FOREIGN KEY (BioStatementID) REFERENCES BioStatements(ID)
);


CREATE TABLE BioStatements (
    ID INT PRIMARY KEY,
    Citizenship VARCHAR(25),
    Education TEXT,
    Experience TEXT,
    MasterPiece VARCHAR(25),
    FOREIGN KEY (ArtistNum) REFERENCES Artists(ArtistNum)
);
