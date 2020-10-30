REM Skript: erstellen.sql
REM
REM Autor: Alexander Bardtke, Andreas Unger
REM Erstellungsdatum: 26.10.2020
REM
REM Inhalt:
REM Loeschen und Erstellen der Tabellen

SET ECHO OFF
CL SCR


REM Tabellen loeschen
REM ================

DROP TABLE t_transport_typ;

DROP TABLE t_beauftragen;

DROP TABLE t_lieferadresse;

DROP TABLE t_rechnungsadresse;

DROP TABLE t_arbeiten;

DROP TABLE t_lkw_typ;

DROP TABLE t_benutzen;

DROP TABLE t_kunden;

DROP TABLE t_transporte;

DROP TABLE t_adresse;

DROP TABLE t_mitarbeiter;

DROP TABLE t_lkw;




REM Tabellen erstellen
REM ==================


CREATE TABLE t_kunden
(
  k_id      number         CONSTRAINT pk_k_id    PRIMARY KEY,
  vorname   varchar2(75)   CONSTRAINT uni_vorname UNIQUE
                           CONSTRAINT nn_vorname NOT NULL,
  nachname  varchar2(75)   CONSTRAINT nn_nachname NOT NULL
);


CREATE TABLE t_transporte
(
  t_id       number       CONSTRAINT pk_t_id    PRIMARY KEY
);


CREATE TABLE t_transport_typ
(
  transport_typ varchar2(75),
  t_id          integer   CONSTRAINT fk_transport_typ_t_id REFERENCES t_transporte(t_id),
  CONSTRAINT pk_transport_typ_id PRIMARY KEY (transport_typ, t_id)  
);


CREATE TABLE t_beauftragen
(
  t_id integer CONSTRAINT fk_beauftragen_t_id REFERENCES t_transporte(t_id),
  k_id integer CONSTRAINT fk_beauftragen_k_id REFERENCES t_kunden(k_id),
  CONSTRAINT pk_beauftragen_t_id PRIMARY KEY (t_id)  
);


CREATE TABLE t_adresse
(
  ad_id       number    CONSTRAINT pk_adresse_id    PRIMARY KEY,
  strasse varchar2(60)  NOT NULL,
  hausnummer number(5) NOT NULL,
  zusatz varchar2(5),
  plz number(5) NOT NULL,
  ortsname varchar2(20) NOT NULL
);


CREATE TABLE t_lieferadresse
(
  k_id integer CONSTRAINT fk_lieferadresse_k_id REFERENCES t_kunden(k_id),
  ad_id integer CONSTRAINT fk_lieferadresse_ad_id REFERENCES t_adresse(ad_id),
  CONSTRAINT pk_lieferadresse_k_id_ad_id PRIMARY KEY (k_id, ad_id)  
);


CREATE TABLE t_rechnungsadresse
(
  k_id integer CONSTRAINT fk_rechnungsadresse_k_id REFERENCES t_kunden(k_id),
  ad_id integer CONSTRAINT fk_rechnungsadresse_ad_id REFERENCES t_adresse(ad_id),
  CONSTRAINT pk_rechnungsadresse_k_id_ad_id PRIMARY KEY (k_id, ad_id)  
);


CREATE TABLE t_mitarbeiter
(
  m_id      integer        CONSTRAINT pk_mitarbeiter_id     PRIMARY KEY,
  vorname   varchar2(20) NOT NULL,
  nachname  varchar2(20) NOT NULL
);


CREATE TABLE t_arbeiten
(
  ad_id integer CONSTRAINT fk_arbeiten_ad_id REFERENCES t_adresse(ad_id),
  m_id integer CONSTRAINT fk_arbeiten_m_id REFERENCES t_mitarbeiter(m_id),
  CONSTRAINT pk_arbeiten_m_id PRIMARY KEY (m_id)  
);


CREATE TABLE t_lkw
(
  lkw_id       number       CONSTRAINT pk_lkw_id    PRIMARY KEY
);


CREATE TABLE t_lkw_typ
(
  lkw_typ varchar2(75),
  lkw_id          integer   CONSTRAINT fk_lkw_typ_lkw_id REFERENCES t_lkw(lkw_id),
  CONSTRAINT pk_lkw_typ_id PRIMARY KEY (lkw_typ, lkw_id)  
);

CREATE TABLE t_benutzen
(
  m_id integer CONSTRAINT fk_benutzen_m_id REFERENCES t_mitarbeiter(m_id),
  lkw_id integer CONSTRAINT fk_benutzen_lkw_id REFERENCES t_lkw(lkw_id),
  CONSTRAINT pk_benutzen_m_id PRIMARY KEY (m_id)  
);

COMMIT;

@&pfad.\Struktur\menue_struktur.sql



