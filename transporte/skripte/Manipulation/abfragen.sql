REM Skript: abfrage.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM interaktive Abfrage der Werte Transport, Kunde, Adresse
REM

REM Transport

SELECT transport_name
  FROM t_cocktail;

ACCEPT transport_name PROMPT "Name des Transports: "


REM Kunde

PROMPT
PROMPT

SELECT kunden_name
  FROM t_kunden;

ACCEPT vorname PROMPT "Vorname des Kunden: "
ACCEPT nachname PROMPT "Vorname des Kunden: "


REM Adresse

PROMPT
PROMPT

SELECT adresse_name
  FROM t_adresse;

ACCEPT strasse PROMPT "Strasse des Kunden: "
ACCEPT plz PROMPT "PLZ des Kunden: "
ACCEPT ortsname PROMPT "Ort des Kunden: "

INSERT INTO t_abfragen ( t_id, k_id, ad_id )
   VALUES               ( (SELECT t_id FROM t_transporte WHERE transport_name = '&transport_name'),
   						  (SELECT t_id FROM t_kunden WHERE kunden_name = '&kunden_name'),  
   						  (SELECT ad_id FROM t_adresse WHERE adresse_name = '&adresse_name'));

COMMIT;

@&pfad\Manipulation\menue_manipulation.sql
