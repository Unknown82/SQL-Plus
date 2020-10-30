REM Skript: menue_manipulation.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Menue zum Einfuegen 
REM

CL SCR

PROMPT Transport-Datenbank
PROMPT
PROMPT Nav - Manipulation
PROMPT =============================
PROMPT
PROMPT
PROMPT (1) Transport einfuegen (transport_einfuegen)
PROMPT
PROMPT (2) Kunden einfuegen (kunden_einfuegen)
PROMPT
PROMPT (3) Adresse einfuegen (adresse_einfuegen) 
PROMPT
PROMPT (4) LKW einfuegen (lkw_einfuegen) 
PROMPT
PROMPT (5) Mitarbeiter einfuegen (mitareiter_einfuegen)
PROMPT
PROMPT (0) Hauptmenue (zurueck)
PROMPT
PROMPT
ACCEPT eingabe PROMPT "Ihre Eingabe: "

@&pfad.\Manipulation\&eingabe..sql

