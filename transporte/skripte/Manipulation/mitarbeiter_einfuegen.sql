REM Skript: mitarbeiter_einfuegen.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Einfuegen des Mitarbeiters,
REM wobei der Primaerschluessel automatisiert vergeben wird.
REM


ACCEPT vorname PROMPT "Vorname vom Mitarbeiter: "
ACCEPT nachname PROMPT "Nachname vom Mitarbeiter: "

INSERT INTO t_mitarbeiter ( m_id                               , vorname   , nachname )
   VALUES          ( (SELECT max(m_id) +  1 FROM t_mitarbeiter), '&vorname', '&nachname');

COMMIT;

@&pfad\Manipulation\menue_manipulation.sql
