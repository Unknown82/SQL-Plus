REM Skript: lieferadresse_ausgeben.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Ausgabe Lieferadresse
REM

CL SCR

PROMPT Transporte-Datenbank
PROMPT
PROMPT Nav - Datenbank
PROMPT ==================================
PROMPT

SELECT *
  FROM t_kunden k  JOIN t_adresse a ON k.k_id = a.ad_id;
                 

PAUSE ENTER druecken

@&pfad.\Lesen\menue_lesen.sql