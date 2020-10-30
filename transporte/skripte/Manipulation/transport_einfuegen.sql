REM Skript: transport_einfuegen.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Einfuegen eines Transports
REM wobei der Primaerschluessel automatisiert vergeben wird.
REM


ACCEPT transport_typ PROMPT "Name des Transports: "

INSERT INTO t_transporte (t_id)
   VALUES                (1);
   
INSERT INTO t_transport_typ ( transport_typ, t_id )
   VALUES                ( '&transport_typ', 1);

COMMIT;

@&pfad\Manipulation\menue_manipulation.sql
