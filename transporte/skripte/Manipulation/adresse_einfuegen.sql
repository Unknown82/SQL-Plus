REM Skript: adresse_einfuegen.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Adresse einfuegen
REM wobei der Primaerschluessel automatisiert vergeben wird.
REM


ACCEPT strasse PROMPT "Strassen Namen: "
ACCEPT hausnummer PROMPT "Hausnummer: "
ACCEPT zusatz PROMPT "Zusatz: "
ACCEPT plz PROMPT "PLZ: "
ACCEPT ortsname PROMPT "Ortsname: "

INSERT INTO t_adresse ( ad_id,                                 strasse,    hausnummer, zusatz, plz, ortsname )
   VALUES          ( (SELECT max(ad_id) +  1 FROM t_adresse), '&strasse', '&hausnummer', '&zusatz', '&plz', '&ortsname');

COMMIT;

@&pfad\Manipulation\menue_manipulation.sql