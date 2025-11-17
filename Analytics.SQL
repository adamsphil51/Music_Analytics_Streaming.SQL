-- =====================================================
-- Project: Music_Analytics_Streaming
-- Purpose: Analyze listener behavior, song performance, and revenue
-- =====================================================

-- 1. Artists table
CREATE TABLE Artists (
    ArtistID INT PRIMARY KEY,
    ArtistName VARCHAR(100),
    Genre VARCHAR(50)
);

INSERT INTO Artists (ArtistID, ArtistName, Genre) VALUES
(1, 'Sauti Sol', 'Afropop'),
(2, 'Nyashinski', 'Hip-Hop'),
(3, 'Victoria Kimani', 'R&B'),
(4, 'Otile Brown', 'R&B'),
(5, 'Elani', 'Pop'),
(6, 'Diamond Platnumz', 'Bongo Flava'),
(7, 'Ali Kiba', 'Bongo Flava'),
(8, 'Khaligraph Jones', 'Hip-Hop'),
(9, 'Nandy', 'Bongo Flava'),
(10, 'Fena Gitu', 'Afropop'),
(11, 'Bahati', 'Gospel'),
(12, 'Rema', 'Afropop'),
(13, 'Vivo', 'Hip-Hop'),
(14, 'Fally Ipupa', 'Rumba'),
(15, 'Mbuzi Gang', 'Hip-Hop'),
(16, 'Mercy Masika', 'Gospel'),
(17, 'Zuchu', 'Bongo Flava'),
(18, 'H_art the Band', 'Afropop'),
(19, 'Otile Brown', 'R&B'),
(20, 'Rayvanny', 'Bongo Flava'),
(21, 'Sanaipei Tande', 'Afropop'),
(22, 'Sandy Mwaura', 'Pop'),
(23, 'Aslay', 'Bongo Flava'),
(24, 'King Kaka', 'Hip-Hop'),
(25, 'Mbuzi Gang', 'Hip-Hop'),
(26, 'Koffi Olomide', 'Rumba'),
(27, 'Chris Kaiga', 'Gospel'),
(28, 'Barakah The Prince', 'Afropop'),
(29, 'Fidel Key', 'Hip-Hop'),
(30, 'Otile Brown', 'R&B');

-- 2. Songs table
CREATE TABLE Songs (
    SongID INT PRIMARY KEY,
    SongName VARCHAR(100),
    ArtistID INT,
    ReleaseDate DATE,
    Price DECIMAL(5,2),
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

INSERT INTO Songs (SongID, SongName, ArtistID, ReleaseDate, Price) VALUES
(1, 'Song A', 1, '2024-01-10', 1.29),
(2, 'Song B', 2, '2024-02-05', 0.99),
(3, 'Song C', 3, '2024-01-15', 1.49),
(4, 'Song D', 4, '2024-03-01', 1.29),
(5, 'Song E', 5, '2024-01-20', 1.09),
(6, 'Song F', 6, '2024-02-10', 0.99),
(7, 'Song G', 7, '2024-02-12', 1.29),
(8, 'Song H', 8, '2024-01-30', 1.49),
(9, 'Song I', 9, '2024-03-03', 1.19),
(10, 'Song J', 10, '2024-03-05', 1.29),
(11, 'Song K', 11, '2024-01-25', 1.09),
(12, 'Song L', 12, '2024-02-08', 0.99),
(13, 'Song M', 13, '2024-01-18', 1.49),
(14, 'Song N', 14, '2024-03-12', 1.29),
(15, 'Song O', 15, '2024-01-21', 1.09),
(16, 'Song P', 16, '2024-02-14', 1.29),
(17, 'Song Q', 17, '2024-03-01', 1.49),
(18, 'Song R', 18, '2024-01-22', 1.19),
(19, 'Song S', 19, '2024-02-17', 1.29),
(20, 'Song T', 20, '2024-03-05', 0.99),
(21, 'Song U', 21, '2024-02-20', 1.09),
(22, 'Song V', 22, '2024-03-08', 1.29),
(23, 'Song W', 23, '2024-01-30', 1.49),
(24, 'Song X', 24, '2024-03-10', 1.29),
(25, 'Song Y', 25, '2024-01-19', 0.99),
(26, 'Song Z', 26, '2024-02-25', 1.29),
(27, 'Song AA', 27, '2024-03-12', 1.49),
(28, 'Song AB', 28, '2024-02-28', 1.19),
(29, 'Song AC', 29, '2024-03-15', 1.29),
(30, 'Song AD', 30, '2024-03-18', 1.49);

-- 3. Streams table (sample data)
CREATE TABLE Streams (
    StreamID INT PRIMARY KEY,
    SongID INT,
    ListenerID INT,
    StreamDate DATE,
    DurationSeconds INT,
    FOREIGN KEY (SongID) REFERENCES Songs(SongID)
);

INSERT INTO Streams (StreamID, SongID, ListenerID, StreamDate, DurationSeconds) VALUES
(1, 1, 101, '2024-03-01', 210),
(2, 2, 102, '2024-03-01', 180),
(3, 3, 103, '2024-03-02', 200),
(4, 4, 104, '2024-03-02', 230),
(5, 5, 105, '2024-03-03', 190),
(6, 6, 106, '2024-03-03', 200),
(7, 7, 107, '2024-03-04', 210),
(8, 8, 108, '2024-03-04', 180),
(9, 9, 109, '2024-03-05', 220),
(10, 10, 110, '2024-03-05', 210),
(11, 11, 111, '2024-03-06', 180),
(12, 12, 112, '2024-03-06', 200),
(13, 13, 113, '2024-03-07', 230),
(14, 14, 114, '2024-03-07', 210),
(15, 15, 115, '2024-03-08', 190),
(16, 16, 116, '2024-03-08', 220),
(17, 17, 117, '2024-03-09', 200),
(18, 18, 118, '2024-03-09', 210),
(19, 19, 119, '2024-03-10', 180),
(20, 20, 120, '2024-03-10', 200),
(21, 21, 121, '2024-03-11', 210),
(22, 22, 122, '2024-03-11', 230),
(23, 23, 123, '2024-03-12', 200),
(24, 24, 124, '2024-03-12', 210),
(25, 25, 125, '2024-03-13', 190),
(26, 26, 126, '2024-03-13', 200),
(27, 27, 127, '2024-03-14', 210),
(28, 28, 128, '2024-03-14', 220),
(29, 29, 129, '2024-03-15', 230),
(30, 30, 130, '2024-03-15', 210);
