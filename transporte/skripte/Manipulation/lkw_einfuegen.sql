REM Skript: lkw_einfuegen.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Fahrzeuge einfuegen
REM wobei der Primaerschluessel automatisiert vergeben wird.
REM


ACCEPT lkw_typ PROMPT "Name des LKWs: "

INSERT INTO t_lkw ( lkw_id )
  VALUES           (1);
  
INSERT INTO t_lkw_typ ( lkw_typ, lkw_id )
   VALUES                ( '&lkw_typ', 1);

COMMIT;

@&pfad\Manipulation\menue_manipulation.sql
