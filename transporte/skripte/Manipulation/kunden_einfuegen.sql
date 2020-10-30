REM Skript: kunden_einfuegen.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Kunden einfuegen
REM wobei der Primaerschluessel automatisiert vergeben wird.
REM


ACCEPT vorname PROMPT "Vorname vom Kunden: "
ACCEPT nachname PROMPT "Nachname vom Kunden: "

INSERT INTO t_kunden ( k_id                               , vorname   , nachname )
   VALUES          ( (SELECT max(k_id) +  1 FROM t_kunden), '&vorname', '&nachname');

COMMIT;

@&pfad\Manipulation\menue_manipulation.sql
