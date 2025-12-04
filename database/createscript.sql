-- Step : 01
-- ************************************************************
-- Doel: Maak een nieuwe database aan: RollerCoasterDB
-- ************************************************************
-- Versie           Datum           Auteur          Wijziging
-- 01               04-12-2025      F.Meulen        Database met 
--                                                  hoogste achtbanen.
-- ************************************************************

-- Verwijder de database
DROP DATABASE IF EXISTS RollerCoasterDB;

-- Maak de database aan
CREATE DATABASE RollerCoasterDB;

-- Gebruik de database
USE RollerCoasterDB;


-- Step : 02
-- ************************************************************
-- Doel: Maak een nieuwe tabel aan: RollerCoaster
-- ************************************************************
-- Versie           Datum           Auteur          Wijziging
-- 01               04-12-2025      F.Meulen        Tabel voor hoogste
--                                                  achtbanen.
-- ************************************************************

-- Maak de tabel aan
CREATE TABLE RollerCoaster
(
    Id                  SMALLINT           UNSIGNED        NOT NULL     AUTO_INCREMENT
    ,RollerCoaster      VARCHAR(50)                        NOT NULL
    ,AmusementPark      VARCHAR(50)                        NOT NULL
    ,CONSTRAINT         PK_RollerCoaster_Id                PRIMARY KEY (Id)
) ENGINE=InnoDB;
    