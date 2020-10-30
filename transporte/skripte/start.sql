REM Skript: start.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM interaktive Anmeldung an die Datenbank,
REM interaktive Eingabe des Projektpfades und
REM Aufrufen des Hauptmenues: hauptmenue.sql

SET ECHO OFF
CL SCR


REM Anmelden

ACCEPT benutzername PROMPT "Eingabe des Benutzernamens (Default: ORA1): " DEFAULT ora1

ACCEPT passwort PROMPT "Eingabe des Passwortes (Default: ORA1): " DEFAULT ora1 HIDE

CONNECT &benutzername/&passwort


REM Eingabe des Projektpfades

ACCEPT pfad PROMPT "Eingabe des Projektpfades (Default: C:\transporte\skripte): " DEFAULT C:\transporte\skripte


REM Menue aufrufen

@&pfad.\hauptmenue.sql


