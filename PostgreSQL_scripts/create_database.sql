--cascade drop schema public te ponovno stvaranje kako bi obrisali sve tablice
drop schema public cascade;
create schema public;

--enumeracije korištene u tablicama
create type vrsta_dogadaja as enum ('RADIONICA', 'RAZMJENA', 'NAPREDNA_RADIONICA', 'OPERACIJSKI_DOGADAJ', 'MOTIVACIJSKI_VIKEND');
create type vrsta_racuna as enum ('PRIHOD', 'RASHOD');

--ENTITETI i INDEKSI
create table student
(
    id_student            SERIAL
        constraint student_pk
            primary key,
    ime_student           VARCHAR CHECK ( trim(ime_student) NOT LIKE '')                                 not null,
    prezime_student       VARCHAR CHECK ( trim(prezime_student) NOT LIKE '')                             not null,
    mail_student          VARCHAR CHECK ( mail_student LIKE '_%@_%._%')                                  not null,
    mobitel_student       VARCHAR CHECK ( mobitel_student SIMILAR TO '([0-9]|\+|\(|\)|\s)+'),
    oib_student           VARCHAR UNIQUE CHECK ( oib_student SIMILAR TO '[0-9]+'),
    datum_rodenja_student DATE CHECK ( datum_rodenja_student < current_date ),
    prebivaliste_student  VARCHAR CHECK ( trim(prebivaliste_student) NOT LIKE ''),
    fakultet_student      VARCHAR CHECK ( trim(fakultet_student) NOT LIKE ''),
    godina_studija        INTEGER CHECK ( godina_studija < 6 AND godina_studija > 0),
    smjer_studija         VARCHAR CHECK ( trim(smjer_studija) NOT LIKE ''),
    datum_azuriranja      DATE    default current_date                                                   not null,
    je_clan               BOOLEAN default true                                                           not null,
    je_aktivan_clan       BOOLEAN default false                                                          not null,
    korisnicko_ime        VARCHAR UNIQUE                                                                 not null,
    lozinka               VARCHAR default '$2y$12$Tw3uvmXE6aEDUo8w2PXBve.eeVLZlU1AGMsWSso00L2gZ0XO9CkaK' not null
);
create index index_prezime_student
    on student (prezime_student);
create unique index index_oib_student
    on student (oib_student);

create table tim
(
    id_tim      SERIAL
        constraint tim_pk
            primary key,
    naziv_tim   VARCHAR not null CHECK ( trim(naziv_tim) NOT LIKE ''),
    opis_tim    VARCHAR CHECK ( trim(opis_tim) NOT LIKE ''),
    id_voditelj int
        constraint tim_voditelj_fk
            references student
            on delete set null
);


create table projekt
(
    id_projekt        SERIAL
        constraint projekt_pk
            primary key,
    naziv_projekt     VARCHAR not null CHECK ( trim(naziv_projekt) NOT LIKE ''),
    opis_projekt      VARCHAR CHECK ( trim(opis_projekt) NOT LIKE ''),
    pocetak_projekt   DATE    not null,
    zavrsetak_projekt DATE    not null CHECK ( zavrsetak_projekt > pocetak_projekt )
);


create table partner
(
    id_partner         SERIAL
        constraint partner_pk
            primary key,
    naziv_partner      VARCHAR not null CHECK ( trim(naziv_partner) NOT LIKE ''),
    oib_partner        VARCHAR UNIQUE not null CHECK ( oib_partner SIMILAR TO '[0-9]+'),
    web_adresa_partner VARCHAR CHECK ( web_adresa_partner SIMILAR TO '[^\s(["<,>]*\.[^\s[",><]*'),
    mobitel_partner    VARCHAR CHECK ( mobitel_partner SIMILAR TO '([0-9]|\+|\(|\)|\s)+'),
    mail_partner       VARCHAR not null CHECK ( mail_partner LIKE '_%@_%._%')
);

create table sponzorski_paket
(
    id_sponzorski_paket    SERIAL
        constraint sponzorski_paket_pk
            primary key,
    naziv_sponzorski_paket VARCHAR CHECK ( trim(naziv_sponzorski_paket) NOT LIKE ''),
    stavke                 VARCHAR CHECK ( trim(stavke) NOT LIKE ''),
    datum_stvaranja        DATE default current_date not null
);


create table okupljanje
(
    id_okupljanje        SERIAL
        constraint okupljanje_pk
            primary key,
    naziv_okupljanje     VARCHAR CHECK ( trim(naziv_okupljanje) NOT LIKE ''),
    opis_okupljanje      VARCHAR CHECK ( trim(opis_okupljanje) NOT LIKE ''),
    pocetak_okupljanje   TIMESTAMP not null,
    zavrsetak_okupljanje TIMESTAMP not null CHECK ( zavrsetak_okupljanje > pocetak_okupljanje ),
    je_formalno          BOOLEAN   not null,
    id_tim               int
        constraint okupljanje_tim_fk
            references tim
            on delete cascade
);



create table medunarodni_dogadaj
(
    id_medunarodni_dogadaj        SERIAL
        constraint medunarodni_dogadaj_pk
            primary key,
    naziv_medunarodni_dogadaj     VARCHAR        not null CHECK ( trim(naziv_medunarodni_dogadaj) NOT LIKE ''),
    opis_medunarodni_dogadaj      VARCHAR CHECK ( trim(opis_medunarodni_dogadaj) NOT LIKE ''),
    pocetak_medunarodni_dogadaj   DATE           not null,
    zavrsetak_medunarodni_dogadaj DATE           not null CHECK ( zavrsetak_medunarodni_dogadaj > pocetak_medunarodni_dogadaj ),
    vrsta_medunarodni_dogadaj     vrsta_dogadaja not null,
    kapacitet                     INT CHECK ( kapacitet > 0 ),
    cijena                        NUMERIC(12, 2) CHECK ( cijena >= 0 )
);


create table drzava
(
    id_drzava    SERIAL
        constraint drzava_pk
            primary key,
    naziv_drzava VARCHAR not null CHECK ( trim(naziv_drzava) NOT LIKE '' ) UNIQUE
);
create index index_naziv_drzava
    on drzava (naziv_drzava);

create table lokalni_ogranak
(
    id_lokalni_ogranak    SERIAL
        constraint lokalni_ogranak_pk
            primary key,
    naziv_lokalni_ogranak VARCHAR not null CHECK ( trim(naziv_lokalni_ogranak) NOT LIKE '' ) UNIQUE,
    opis_lokalni_ogranak  VARCHAR CHECK ( trim(opis_lokalni_ogranak) NOT LIKE '' ),
    id_drzava             INT     not null
        constraint lokalni_ogranak_drzava_fk
            references drzava
            on delete restrict
);
create index index_naziv_ogranak
    on lokalni_ogranak (naziv_lokalni_ogranak);


create table racun
(
    id_racun      SERIAL
        constraint racun_pk
            primary key,
    vrsta_racun   vrsta_racuna                        not null,
    iznos_racun   NUMERIC(12, 2)                      not null CHECK ( iznos_racun > 0 ),
    vrijeme_racun TIMESTAMP default current_timestamp not null,
    napomena      VARCHAR CHECK ( trim(napomena) NOT LIKE '' ),
    id_projekt    INT       default null
        constraint racun_projekt_fk
            references projekt
            on delete set null,
    id_okupljanje INT       default null
        constraint racun_okupljanje_fk
            references okupljanje
            on delete set null
);
create index index_vrijeme_racun
    on racun (vrijeme_racun DESC);

-- tablice uloga i korisnik_uloga služe za security

create table uloga
(
    id_uloga    SERIAL
        constraint uloga_pk
            primary key,
    naziv_uloga VARCHAR default NULL
);


create table korisnik_uloga
(
    id_korisnik INTEGER not null
        constraint korisnik_uloga_to_student_fk
            references student
            on delete cascade,
    id_uloga    INTEGER not null
        constraint korisnik_uloga_to_uloga_fk
            references uloga (id_uloga)
            on delete cascade,
    constraint korisnik_uloga_pk
        primary key (id_korisnik, id_uloga)
);


--tablice veza (relacija)
create table prisustvuje
(
    id_student    INT
        constraint student_prisustvuje_fk
            references student
            on delete cascade,
    id_okupljanje INT
        constraint okupljanje_prisustvuje_fk
            references okupljanje
            on delete cascade,
    constraint prisustvuje_pk
        primary key (id_student, id_okupljanje)
);


create table prijava_na
(
    id_student   INT
        constraint student_prijavana_fk
            references student
            on delete cascade,
    id_projekt   INT
        constraint projekt_prijavana_fk
            references projekt
            on delete cascade,
    je_prihvacen BOOLEAN,
    constraint prijavana_pk
        primary key (id_student, id_projekt)
);


create table je_organizator
(
    id_student INT
        constraint student_jeorganizator_fk
            references student
            on delete cascade,
    id_projekt INT
        constraint projekt_jeorganizator_fk
            references projekt
            on delete cascade,
    constraint jeorganizator_pk
        primary key (id_student, id_projekt)
);


create table putuje_na
(
    id_student             INT
        constraint student_putujena_fk
            references student
            on delete cascade,
    id_medunarodni_dogadaj INT
        constraint medunarodniDogadaj_putujena_fk
            references medunarodni_dogadaj
            on delete cascade,
    je_prihvacen           BOOLEAN,
    napomena               VARCHAR,
    constraint putujena_pk
        primary key (id_student, id_medunarodni_dogadaj)
);


create table je_clan
(
    id_student INT
        constraint student_jeclan_fk
            references student
            on delete cascade,
    id_tim     INT
        constraint tim_jeclan_fk
            references tim
            on delete cascade,
    napomena   VARCHAR,
    constraint jeclan_pk
        primary key (id_student, id_tim)
);


create table sponzorira
(
    id_projekt          INT
        constraint projekt_sponzorira_fk
            references projekt
            on delete cascade,
    id_partner          INT
        constraint partner_sponzorira_fk
            references partner
            on delete cascade,
    id_sponzorski_paket INT
        constraint sponzorskiPaket_sponzorira_fk
            references sponzorski_paket
            on delete set null,
    iznos               NUMERIC(12, 2) not null CHECK ( iznos >= 0 ),
    napomena            VARCHAR,
    constraint sponzorira_pk
        primary key (id_projekt, id_partner)
);


create table organizira
(
    id_medunarodni_dogadaj INT
        constraint medunarodniDogadaj_organizira_fk
            references medunarodni_dogadaj
            on delete cascade,
    id_lokalni_ogranak     INT
        constraint lokalniOgranak_organizira_fk
            references lokalni_ogranak
            on delete cascade,
    constraint organizira_pk
        primary key (id_medunarodni_dogadaj, id_lokalni_ogranak)
);

--TRIGGERI

--Automatski upis datuma ažuriranja prilikom promjena u tablici STUDENT
--drop function azuriranje_studenta() cascade;
create function azuriranje_studenta() returns trigger
as
$$
begin
    NEW.datum_azuriranja = current_date;
    RETURN NEW;

end;
$$ LANGUAGE plpgsql;

create trigger update_student
    before update
    on student
    for each ROW
execute procedure azuriranje_studenta();

--Automatsko kreiranje računa prilikom sponzorstva
create function racun_iz_sponzorstva() returns trigger
as
$$
DECLARE
    partner_name VARCHAR;
    projekt_name VARCHAR;
begin
    IF NEW.iznos = 0
    THEN
        RETURN NEW;
    ELSE
        SELECT partner.naziv_partner INTO partner_name FROM partner WHERE partner.id_partner = NEW.id_partner;
        SELECT projekt.naziv_projekt INTO projekt_name FROM projekt WHERE projekt.id_projekt = NEW.id_projekt;

        INSERT INTO racun(vrsta_racun, iznos_racun, napomena, id_projekt)
        VALUES ('PRIHOD', NEW.iznos,
                'Račun od sponzorstva; SPONZOR: ' || partner_name || '; PROJEKT: ' || projekt_name,
                NEW.id_projekt);
        RETURN NEW;
    END IF;
end ;
$$ LANGUAGE plpgsql;

create trigger insert_sponzorira
    after insert
    on sponzorira
    for each ROW
execute procedure racun_iz_sponzorstva();