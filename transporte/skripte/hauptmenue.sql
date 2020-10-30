REM Skript: hauptmenue.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Hauptmenue zur Benutzung der Datenbank
REM

CL SCR

PROMPT Transporte-Datenbank
PROMPT
PROMPT Hauptmenue
PROMPT =============================
PROMPT
PROMPT
PROMPT (1) Datenbank-Struktur (erstellen)
PROMPT
PROMPT (2) Daten (manipulieren)
PROMPT
PROMPT (3) Daten (lesen)
PROMPT
PROMPT (0) Programm (beenden)
PROMPT
PROMPT
ACCEPT eingabe PROMPT "Ihre Eingabe: "

@&pfad.\&eingabe..sql

