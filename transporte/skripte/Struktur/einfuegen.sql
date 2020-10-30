REM Skript: einfuegen.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Loeschen und Einfuegen von Datensaetzen
REM 


REM Tabellen leeren
REM ====================

DROP FROM t_transport_typ;

DROP FROM t_lkw_typ;

DROP FROM t_kunden;

DROP FROM t_transporte;

DROP FROM t_adresse;

DROP FROM t_mitarbeiter;

DROP FROM t_lkw;



REM Test-Datensaetze einfuegen
REM ========================

REM kunden


INSERT INTO t_kunden ( k_id, vorname, nachname )
   VALUES            (1, 'Andreas', 'Unger');

INSERT INTO t_kunden ( k_id, vorname, nachname )
   VALUES            (2, 'Irma', 'Schmidt');

INSERT INTO t_kunden ( k_id, vorname, nachname )
   VALUES            (3, 'Julia', 'Wagner');

INSERT INTO t_kunden ( k_id, vorname, nachname )
   VALUES            (4, 'Alexander', 'Bardtke');

INSERT INTO t_kunden ( k_id, vorname, nachname )
   VALUES            (5, 'Ersin', 'Karaman');


REM transporte

INSERT INTO t_transporte (t_id)
   VALUES                (1);

REM transport_typ

INSERT INTO t_transport_typ ( transport_typ, t_id )
   VALUES              ( 'Ikea-Transport', 1 );

INSERT INTO t_transport_typ ( transport_typ, t_id )
   VALUES              ( 'Bordsteintransport', 1 );

INSERT INTO t_transport_typ ( transport_typ, t_id )
   VALUES              ( 'Kleintransport', 1 );




REM adresse

INSERT INTO t_adresse ( ad_id, strasse, hausnummer, zusatz, plz, ortsname )
   VALUES            (1, 'Eiserfelder Ring', '23', 'B', '13583', 'Berlin');

INSERT INTO t_adresse ( ad_id, strasse, hausnummer, zusatz, plz, ortsname )
   VALUES            (2, 'Zeppelinstrasse', '2', 'D', '12456', 'Berlin');

INSERT INTO t_adresse ( ad_id, strasse, hausnummer, zusatz, plz, ortsname )
   VALUES            (3, 'Windscheidstrasse', '10', 'C', '14876', 'Berlin');

INSERT INTO t_adresse ( ad_id, strasse, hausnummer, zusatz, plz, ortsname )
   VALUES            (4, 'Gewerbehof', '9', 'NULL', '10764', 'Berlin');

INSERT INTO t_adresse ( ad_id, strasse, hausnummer, zusatz, plz, ortsname )
   VALUES             (5, 'Seeburgerweg', '88', 'NULL', '13643', 'Berlin');




REM lkw

INSERT INTO t_lkw ( lkw_id )
  VALUES           (1);




REM lkw typ

INSERT INTO t_lkw_typ  ( lkw_typ, lkw_id )
   VALUES          ( 'Sprinter', 1);

INSERT INTO t_lkw_typ  ( lkw_typ, lkw_id )
   VALUES          ( 'Maxi-Sprinter', 1);

INSERT INTO t_lkw_typ  ( lkw_typ, lkw_id )
   VALUES          ( 'Pritsche', 1);




REM Mitarbeiter

INSERT INTO t_mitarbeiter ( m_id, vorname, nachname )
   VALUES                 (1, 'Robert', 'Schmidt');

INSERT INTO t_mitarbeiter ( m_id, vorname, nachname )
   VALUES                 (2, 'Arwin', 'Weiss');

INSERT INTO t_mitarbeiter ( m_id, vorname, nachname )
   VALUES                 (3, 'Nicklas', 'Schwarz');

INSERT INTO t_mitarbeiter ( m_id, vorname, nachname )
   VALUES                 (4, 'Andrew', 'Mueller');

COMMIT;



@&pfad.\Struktur\menue_struktur.sql



