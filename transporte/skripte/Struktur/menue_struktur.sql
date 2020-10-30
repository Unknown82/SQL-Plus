REM Skript: menue_struktur.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Nav zur Verwaltung der Datenbankstruktur 
REM

CL SCR

PROMPT Transporte-Datenbank
PROMPT
PROMPT Nav - Datenbankstruktur
PROMPT =============================
PROMPT
PROMPT
PROMPT (1) Transport Tabelle (erstellen)
PROMPT
PROMPT (2) Transport Datensaetze (einfuegen)
PROMPT
PROMPT (0) In Hauptmenue (zurueck)
PROMPT
PROMPT
ACCEPT eingabe PROMPT "Ihre Eingabe: "

@&pfad.\Struktur\&eingabe..sql

