REM Skript: menue_lesen.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Nav zur Ausgabe aller Transporte und Kunden
REM 
REM

CL SCR

PROMPT Transporte-Datenbank
PROMPT
PROMPT Nav - Daten lesen
PROMPT =============================
PROMPT
PROMPT
PROMPT (1) Transport (transporte_ausgeben)
PROMPT
PROMPT (2) Kunden (kunden_ausgeben)
PROMPT
PROMPT (3) Adresse (adresse_ausgeben)
PROMPT
PROMPT (4) Mitarbeiter (mitarbeiter_ausgeben)
PROMPT
PROMPT (5) LKW Typ (lkw_ausgeben)
PROMPT
PROMPT (6) Lieferadresse (lieferadresse_ausgeben)
PROMPT
PROMPT (7) Rechnungsadresse (rechnungsadresse_ausgeben)
PROMPT
PROMPT (0) Hauptmenue (zurueck)
PROMPT
PROMPT
ACCEPT eingabe PROMPT "Ihre Eingabe: "

@&pfad.\Lesen\&eingabe..sql

