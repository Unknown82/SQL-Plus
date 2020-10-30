REM Skript: auslesen.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Ausgabe aller Transporte mit dem dazugehörigen Kunden & Adressen
REM

CL SCR

PROMPT Transporte-Datenbank
PROMPT
PROMPT Menue - Transport und Kunden auslesen
PROMPT ==================================
PROMPT

SELECT transport_name, kunden_name, adresse_name
  FROM t_transport t JOIN t_auslesen s ON (t.t_id = a.t_id)
                    JOIN t_kunde k ON (a.k_id = k.k_id)
                    JOIN t_adresse a ON (k.ad_id = a.ad_id);

PAUSE ENTER drücken

@&pfad.\Lesen\menue_lesen.sql

