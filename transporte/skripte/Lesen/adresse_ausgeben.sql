REM Skript: adresse_ausgeben.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Ausgabe aller Kunden
REM

CL SCR

PROMPT Transporte-Datenbank
PROMPT
PROMPT NAV - Adresse ausgeben
PROMPT =============================
PROMPT

SELECT *
  FROM t_adresse;

PAUSE ENTER druecken

@&pfad.\Lesen\menue_lesen.sql
