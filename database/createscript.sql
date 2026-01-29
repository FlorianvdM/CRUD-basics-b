-- step : 01
-- **********************************************************
-- doel: Maak een nieuwe database aan: Rollercoaster
-- **************************************************
-- Versie       Datum       Auteur        Omschrijving
-- ******       *****       ******        ************
-- 01           04-12-2025  A.Akoudad     Database met
-- de hoogste achtbanen van Europa
-- ***********************************************************

-- Verwijder de database als deze al bestaat
DROP DATABASE IF EXISTS Rollercoaster;

-- Maak de database aan
CREATE DATABASE Rollercoaster;

-- Gebruik de nieuw aangemaakte database
USE Rollercoaster;

-- step : 02
-- **********************************************************
-- doel: Maak een nieuwe tabel aan: Rollercoaster
-- **************************************************
-- Versie       Datum       Auteur        Omschrijving
-- ******       *****       ******        ************
-- 01           04-12-2025  A.Akoudad     tabel met
--                                        de hoogste achtbanen
--                                        van Europa
-- ***********************************************************

-- Maak de tabel Rollercoaster aan
CREATE TABLE Rollercoaster (
    id                SMALLINT      UNSIGNED      NOT NULL AUTO_INCREMENT       COMMENT 'primary key of the Rollercoaster table'
,Rollercoaster     VARCHAR(50)                 NOT NULL                      COMMENT 'name of the rollercoaster'
,AmusementPark     VARCHAR(50)                 NOT NULL                      COMMENT 'name of the amusementpark'
,CONSTRAINT        PK_Rollercoaster_Id         PRIMARY KEY (id)  
,Country           VARCHAR(50) NOT NULL                                      COMMENT 'Country where it is located'
,TopSpeed          SMALLINT UNSIGNED NOT NULL                                COMMENT 'Topspeed in km/h'
,Height            TINYINT UNSIGNED NOT NULL                                 COMMENT 'Height in meters'
,YearOfConstruction DATE NOT NULL                                            COMMENT 'Year of construction'
,IsActive          BIT NOT NULL DEFAULT 1                                    COMMENT 'Indicates whether the rollercoaster is Active(1)'
,Remark            VARCHAR(255) NULL DEFAULT NULL                            COMMENT 'Optional remark or additional information'
,DateCreated       DATETIME(6) NOT NULL DEFAULT NOW(6)                       COMMENT 'Timestamp when the record was created'
,DateChanged       DATETIME(6) NOT NULL DEFAULT NOW(6)                       COMMENT 'Timestamp of the latest update'
) ENGINE=InnoDB;

-- Stap : 03
-- **********************************************************
-- Doel : Vul de tabel Rollercoaster met data
-- **********************************************************
-- Versie      Datum      Autuer       Omschrijving
-- **********************************************************
-- -- 01       04-12-2025 A.Akoudad    Vul tabel hoogste
-- -- achtbanen van Europa
-- **********************************************************

-- Vul de tabel
INSERT INTO Rollercoaster
(
Rollercoaster
,AmusementPark
,Country
,TopSpeed
,Height
,YearOfConstruction
)
VALUES
('Kingda Ka', 'Six Flags Great Adventure', 'Verenigd Koninkrijk', 206, 127, '2005-10-21')
,('Red Force', 'Ferrari Land', 'Spanje', 180, 112, '2017-04-07')
,('Hyperion', 'Energylandia', 'Polen', 142, 77, '2018-08-14')
,('Shambhala', 'PortAventura Park', 'Spanje', 134, 76, '2012-04-07')
,('Schwur des Karnen', 'Hansa Park', 'Duitsland', 127, 73, '2017-02-25');

