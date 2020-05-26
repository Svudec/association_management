--Dodajem tri 'default' korisnika s različitim ulogama
--Lozinka za sve racune: 1234
INSERT INTO users(username, password, enabled)
VALUES ('korisnik', '$2y$12$4PMIL20BinxS91w9F71I1OUmYcCK56i63sIL/tcmKAUFi6QGbFAGC', true),
       ('board', '$2y$12$RgKUnLWUt5/e/qRkaNflgOA6nYJJIN1nZKggnSA.WJf5UED.UpLIG', true),
       ('admin', '$2y$12$oocJTgydtJE9nyBTmcCU3..8GuKPOKxMGjM4krR/IA1VnpDPcp.Au', true);

INSERT INTO authorities(username, authority)
VALUES ('korisnik', 'ROLE_USER'),
       ('board', 'ROLE_USER'),
       ('board', 'ROLE_BOARD_MEMBER'),
       ('admin', 'ROLE_USER'),
       ('admin', 'ROLE_ADMIN');

--Random generirani obavezni podatci za student
INSERT INTO "student" (ime_student, prezime_student, mail_student, je_clan, je_aktivan_clan)
VALUES ('Nita', 'Mueller', 'Sed.nulla.ante@justofaucibus.edu', 'false', 'false'),
       ('Gloria', 'Strong', 'elit.fermentum.risus@infaucibus.edu', 'false', 'false'),
       ('Stacey', 'Grant', 'est.congue@posuerecubilia.net', 'true', 'true'),
       ('Adrian', 'Diaz', 'ante@ac.edu', 'false', 'false'),
       ('Ethan', 'Benton', 'In@liberoDonec.ca', 'false', 'false'),
       ('Jermaine', 'Wilkerson', 'convallis.est@non.edu', 'true', 'true'),
       ('Connor', 'Pruitt', 'velit.Pellentesque.ultricies@scelerisquesedsapien.org', 'true', 'false'),
       ('Diana', 'Eaton', 'non.sapien@sedsemegestas.org', 'true', 'false'),
       ('Diana', 'Britt', 'molestie.orci@Fusce.org', 'true', 'true'),
       ('Robert', 'Sellers', 'ante.Vivamus@egetmagna.edu', 'false', 'false'),
       ('Xena', 'Gaines', 'tincidunt@Nam.org', 'false', 'false'),
       ('Chandler', 'Fox', 'Nunc@aliquam.edu', 'false', 'false'),
       ('Aladdin', 'Wade', 'non.sapien.molestie@Nunclaoreet.com', 'false', 'false'),
       ('Kellie', 'Rhodes', 'ut@congue.org', 'true', 'false'),
       ('Driscoll', 'Nielsen', 'vehicula@rhoncusNullam.com', 'false', 'false'),
       ('Hasad', 'Peterson', 'vel@loremtristique.co.uk', 'false', 'false'),
       ('Diana', 'Solomon', 'a.facilisis@lorem.org', 'true', 'true'),
       ('Katell', 'Lester', 'tincidunt@aarcuSed.org', 'true', 'false'),
       ('Quamar', 'Wall', 'sociis.natoque@turpisAliquamadipiscing.ca', 'true', 'true'),
       ('Deacon', 'Sandoval', 'at.augue@venenatislacusEtiam.com', 'false', 'false'),
       ('Virginia', 'Raymond', 'convallis.dolor@mauris.org', 'false', 'false'),
       ('Peter', 'Atkins', 'ac.turpis@diam.com', 'false', 'false'),
       ('Lucas', 'Stanley', 'nibh.lacinia.orci@et.ca', 'true', 'false'),
       ('Aquila', 'Calhoun', 'ante.iaculis@atpretiumaliquet.co.uk', 'false', 'false'),
       ('Hyatt', 'Fischer', 'vel@pretiumetrutrum.org', 'false', 'false'),
       ('Teagan', 'Garza', 'facilisis@cursuseteros.edu', 'true', 'true'),
       ('Virginia', 'Finch', 'purus.gravida.sagittis@urnaNullam.co.uk', 'true', 'false'),
       ('Georgia', 'Hoffman', 'mollis.vitae@magnaaneque.co.uk', 'true', 'true'),
       ('Joshua', 'Delacruz', 'enim.gravida@tempuseu.ca', 'true', 'false'),
       ('Guy', 'Mccormick', 'Donec.nibh.enim@Donecconsectetuer.edu', 'false', 'false'),
       ('Colette', 'Marsh', 'faucibus@Integersemelit.org', 'true', 'true'),
       ('Elaine', 'Beard', 'purus@acorciUt.edu', 'false', 'false'),
       ('Henry', 'Velez', 'Morbi.vehicula.Pellentesque@Crasconvallisconvallis.org', 'false', 'false'),
       ('Gisela', 'Medina', 'ante@estacmattis.co.uk', 'false', 'false'),
       ('Jermaine', 'Duffy', 'odio.Nam.interdum@euismod.net', 'true', 'true'),
       ('Hiroko', 'Cervantes', 'placerat.eget@ligulaconsectetuer.ca', 'true', 'false'),
       ('Lucius', 'Giles', 'eu@laciniaorciconsectetuer.ca', 'false', 'false'),
       ('Reuben', 'Strickland', 'morbi@lobortis.net', 'false', 'false'),
       ('Hasad', 'Davis', 'ridiculus.mus@nunc.co.uk', 'true', 'false'),
       ('Teagan', 'Mosley', 'enim.Mauris@disparturient.co.uk', 'false', 'false'),
       ('Neville', 'Bolton', 'id.blandit.at@eratvitaerisus.co.uk', 'true', 'false'),
       ('Cooper', 'Pace', 'a.feugiat.tellus@iaculisenimsit.com', 'false', 'false'),
       ('Jenette', 'Floyd', 'vitae.orci.Phasellus@congue.ca', 'true', 'true'),
       ('Selma', 'Roach', 'at.pretium.aliquet@Integervitae.co.uk', 'false', 'false'),
       ('Chelsea', 'Jenkins', 'ipsum.primis@consectetueradipiscingelit.com', 'false', 'false'),
       ('Caryn', 'Kirk', 'fringilla@etmagnis.edu', 'true', 'true'),
       ('Carl', 'Melton', 'vulputate.risus.a@ligulaelit.co.uk', 'true', 'false'),
       ('Oprah', 'Delgado', 'orci@laciniavitae.edu', 'false', 'false'),
       ('Tucker', 'Bowers', 'aliquet.sem@DonecegestasDuis.co.uk', 'false', 'false'),
       ('Beverly', 'Cervantes', 'lacus.Aliquam.rutrum@euismodestarcu.net', 'true', 'false'),
       ('Benedict', 'Workman', 'est.vitae@consectetueradipiscingelit.com', 'true', 'true'),
       ('Burton', 'Gonzalez', 'pellentesque.tellus.sem@Pellentesque.net', 'true', 'true'),
       ('Lacy', 'Heath', 'pede@Curabitur.com', 'false', 'false'),
       ('Kennedy', 'Nielsen', 'Donec.nibh.enim@NullainterdumCurabitur.net', 'true', 'false'),
       ('Moana', 'West', 'Quisque.ornare@ipsumsodalespurus.ca', 'false', 'false'),
       ('Tucker', 'Cook', 'leo.Morbi@rutrumnon.ca', 'false', 'false'),
       ('Josiah', 'Decker', 'metus.urna.convallis@Namacnulla.com', 'false', 'false'),
       ('Brendan', 'Downs', 'rutrum.magna@mollisPhasellus.co.uk', 'true', 'true'),
       ('Lilah', 'Andrews', 'lectus.quis@nunc.edu', 'true', 'false'),
       ('Chester', 'Wynn', 'nunc.est@egestasAliquamfringilla.edu', 'false', 'false'),
       ('Haley', 'Kinney', 'Morbi.sit.amet@turpis.com', 'true', 'true'),
       ('Josiah', 'Durham', 'gravida@vitaediamProin.ca', 'true', 'false'),
       ('Aquila', 'Christensen', 'risus.Quisque@luctusetultrices.ca', 'true', 'false'),
       ('Adam', 'Russo', 'amet.risus@Donecporttitor.org', 'false', 'false'),
       ('Anne', 'Cooley', 'semper.rutrum@Aliquameratvolutpat.edu', 'false', 'false'),
       ('Fiona', 'Atkinson', 'eu.dui.Cum@tincidunt.org', 'false', 'false'),
       ('Lavinia', 'Alvarado', 'rutrum.magna.Cras@porttitorscelerisqueneque.edu', 'true', 'true'),
       ('Axel', 'Warren', 'Duis@milorem.edu', 'true', 'true'),
       ('Gage', 'Jackson', 'morbi@metusfacilisis.edu', 'false', 'false'),
       ('Bert', 'Melendez', 'lectus@interdum.com', 'true', 'false'),
       ('Orla', 'Carrillo', 'aliquet.lobortis@aliquet.co.uk', 'false', 'false'),
       ('Ethan', 'Michael', 'neque@insodaleselit.org', 'false', 'false'),
       ('William', 'Richmond', 'Nullam.velit@lobortisClassaptent.edu', 'false', 'false'),
       ('Alexa', 'Sweeney', 'tellus@Ut.org', 'true', 'true'),
       ('Quamar', 'Tran', 'sociis.natoque.penatibus@Vestibulumante.com', 'false', 'false'),
       ('Sonya', 'Mckenzie', 'nisi.Mauris.nulla@libero.ca', 'true', 'false'),
       ('Dane', 'Salas', 'eu.erat@dictum.net', 'true', 'false'),
       ('Hall', 'Martin', 'lacus.Quisque@atiaculisquis.com', 'false', 'false'),
       ('Aretha', 'Mcgee', 'mi@etnetuset.org', 'true', 'false'),
       ('Bertha', 'Mosley', 'est.Nunc@aliquetodio.ca', 'false', 'false'),
       ('Patience', 'Caldwell', 'purus.in.molestie@a.net', 'false', 'false'),
       ('Kylee', 'Foster', 'eu@vestibulumMaurismagna.net', 'false', 'false'),
       ('Castor', 'Blackburn', 'massa.non@magna.org', 'false', 'false'),
       ('Hedwig', 'Wade', 'arcu@mattissemper.org', 'true', 'true'),
       ('Fuller', 'Pratt', 'Proin@ametconsectetueradipiscing.net', 'false', 'false'),
       ('Davis', 'Burks', 'nec.ligula@magnaPhasellus.org', 'true', 'true'),
       ('Miranda', 'Hendricks', 'pulvinar.arcu@tortorat.com', 'true', 'false'),
       ('Robert', 'Wallace', 'lorem.fringilla@Sed.edu', 'false', 'false'),
       ('Hillary', 'Carpenter', 'sagittis.semper@odio.net', 'false', 'false'),
       ('Whitney', 'Nixon', 'vehicula.aliquet@insodaleselit.ca', 'false', 'false'),
       ('Darius', 'Ramos', 'neque.pellentesque.massa@nuncid.com', 'false', 'false'),
       ('Aristotle', 'Lester', 'ligula.consectetuer.rhoncus@consequat.co.uk', 'false', 'false'),
       ('Len', 'Herrera', 'eu.tellus@Curabitursedtortor.ca', 'true', 'true'),
       ('Quemby', 'Walls', 'vitae@mus.co.uk', 'true', 'true'),
       ('Rose', 'Blackburn', 'Aenean.massa@elitpellentesquea.edu', 'false', 'false'),
       ('Selma', 'Douglas', 'mauris.erat@mienim.net', 'false', 'false'),
       ('Cathleen', 'Chandler', 'vulputate@Vivamus.net', 'true', 'false'),
       ('Colt', 'Herman', 'dui.Fusce@nuncinterdumfeugiat.org', 'false', 'false'),
       ('Anjolie', 'Whitney', 'purus.ac@CraspellentesqueSed.org', 'true', 'false'),
       ('Denise', 'Spencer', 'tincidunt.aliquam.arcu@Crassed.co.uk', 'false', 'false');

--Random generirani studenti sa svim podatcima
INSERT INTO "student" (mobitel_student, oib_student, datum_rodenja_student, prebivaliste_student, fakultet_student,
                       godina_studija, smjer_studija, datum_azuriranja, ime_student, prezime_student, mail_student,
                       je_clan, je_aktivan_clan)
VALUES ('(0958) 25106210', '95833', '1996-02-28T18:24:26-08:00', 'Bathgate', 'arcu. Nunc mauris.', '4',
        'convallis erat, eget tincidunt dui', '2017-07-24T22:42:22-07:00', 'Jasmine', 'Kaufman',
        'arcu.Vivamus.sit@Crasdictum.ca', 'true', 'false'),
       ('(039944) 039621', '57130', '1997-08-27T07:47:08-07:00', 'Lexington', 'Curabitur consequat, lectus sit amet',
        '3',
        'sodales purus,', '2019-05-08T07:50:30-07:00', 'Lana', 'Edwards', 'mollis@liberoduinec.org', 'true', 'false'),
       ('(01340) 4382817', '13276', '1996-10-27T09:56:59-08:00', 'Völklingen', 'a sollicitudin orci sem eget', '5',
        'Nulla',
        '2019-11-10T04:17:56-08:00', 'Deirdre', 'Doyle', 'Morbi@natoquepenatibuset.net', 'true', 'false'),
       ('(033) 52137272', '56512', '1996-03-20T03:26:18-08:00', 'Solok', 'luctus aliquet odio. Etiam ligula', '3',
        'aliquam', '2020-01-17T16:32:35-08:00', 'Abra', 'Foster', 'mollis.Phasellus@interdum.co.uk', 'true', 'false'),
       ('(083) 65008689', '35470', '1999-01-11T23:12:16-08:00', 'Birmingham', 'turpis nec mauris blandit mattis.', '4',
        'odio, auctor vitae, aliquet nec, imperdiet nec, leo.', '2016-08-11T08:51:20-07:00', 'Nash', 'Hess',
        'aliquet.sem@dapibusligula.com', 'true', 'false'),
       ('(0015) 11875570', '67268', '2000-03-12T12:43:52-08:00', 'Hermosillo', 'faucibus ut,', '1', 'pede',
        '2019-09-06T02:16:37-07:00', 'Thor', 'Stone', 'erat.in@tinciduntaliquamarcu.co.uk', 'true', 'false'),
       ('(0769) 30090161', '4434', '1997-11-21T13:28:20-08:00', 'Saint-Prime', 'odio. Etiam', '3',
        'et tristique pellentesque, tellus', '2018-09-26T17:32:43-07:00', 'Eve', 'Lucas',
        'nascetur@orciPhasellusdapibus.com', 'true', 'false'),
       ('(0171) 55415356', '54676', '2000-09-14T15:53:25-07:00', 'Presles', 'erat neque', '2',
        'molestie orci tincidunt adipiscing. Mauris molestie', '2018-03-03T07:11:46-08:00', 'Zane', 'Lewis',
        'Nam@Aeneangravidanunc.com', 'true', 'false'),
       ('(00411) 3187290', '87894', '1995-12-11T09:00:31-08:00', 'TrognŽe', 'non, sollicitudin a,', '5',
        'sed pede. Cum sociis natoque penatibus', '2018-12-26T21:27:09-08:00', 'Philip', 'Goff', 'In@milacinia.com',
        'true', 'false'),
       ('(0221) 84391945', '41696', '1996-06-29T08:41:11-07:00', 'Haasdonk', 'eget, dictum placerat, augue. Sed', '3',
        'est arcu ac orci. Ut semper pretium neque.', '2018-06-02T03:39:03-07:00', 'Fleur', 'Booker',
        'arcu.vel.quam@eleifendnuncrisus.org', 'true', 'false'),
       ('(030637) 915180', '9799', '1998-01-29T14:51:16-08:00', 'Chimbote', 'Maecenas ornare egestas ligula. Nullam',
        '5',
        'lectus convallis est,', '2016-03-15T01:47:31-07:00', 'Tarik', 'Glenn', 'dui.Fusce@ullamcorper.com', 'true',
        'false'),
       ('(08941) 6783713', '41800', '2000-04-29T20:36:59-07:00', 'West Jordan', 'non lorem', '1',
        'a feugiat tellus lorem eu metus.', '2018-05-22T10:22:28-07:00', 'Maggy', 'Hinton',
        'arcu.Vivamus.sit@loremluctusut.com', 'true', 'false'),
       ('(04385) 6479886', '1571', '1997-04-11T13:03:17-07:00', 'Wiekevorst', 'tempor bibendum. Donec felis orci,', '5',
        'vitae, erat. Vivamus nisi. Mauris nulla.', '2018-05-19T06:27:29-07:00', 'Ivory', 'Frederick',
        'Curabitur@sedturpis.com', 'true', 'false'),
       ('(0477) 56558172', '25567', '1996-11-21T07:20:49-08:00', 'Valuyki', 'scelerisque dui.', '2',
        'dui. Suspendisse ac metus vitae velit', '2019-06-11T21:42:59-07:00', 'Kirestin', 'Valencia',
        'nunc.interdum@euarcuMorbi.com', 'true', 'false'),
       ('(02731) 2633176', '84554', '2000-01-10T03:58:16-08:00', 'Maria', 'dui. Cras pellentesque.', '3',
        'est mauris, rhoncus', '2019-07-26T06:32:43-07:00', 'Freya', 'Gates', 'Maecenas.libero@aliquetPhasellus.ca',
        'true', 'false'),
       ('(039287) 215759', '40363', '2000-12-15T10:28:51-08:00', 'Carstairs', 'dictum eu,', '4',
        'Integer eu lacus. Quisque imperdiet, erat nonummy ultricies', '2019-10-05T09:39:05-07:00', 'Russell', 'Castro',
        'sed@cursusvestibulum.com', 'true', 'false'),
       ('(08951) 8828676', '17101', '1999-08-07T07:40:37-07:00', 'Rendsburg', 'ac turpis', '2', 'tempor, est ac',
        '2019-02-21T15:37:51-08:00', 'Meredith', 'Velez', 'tortor.nibh@Fusce.org', 'true', 'false'),
       ('(0511) 10790101', '32457', '1996-06-17T22:58:26-07:00', 'Samara', 'ornare. In faucibus. Morbi', '5',
        'nascetur ridiculus', '2016-08-11T01:25:34-07:00', 'Jerry', 'Blackwell', 'feugiat.nec.diam@nullaante.org',
        'true', 'false'),
       ('(042) 47718363', '14084', '1998-10-03T00:29:32-07:00', 'Ottawa-Carleton', 'senectus et netus et', '1',
        'penatibus et', '2017-09-11T15:49:18-07:00', 'Odysseus', 'Wallace',
        'Donec.nibh.Quisque@ultriciesdignissimlacus.com', 'true', 'false'),
       ('(09725) 7560885', '81285', '1999-02-21T15:37:01-08:00', 'São João de Meriti', 'lectus convallis est,', '5',
        'a, arcu. Sed et libero. Proin mi. Aliquam', '2018-06-11T11:12:40-07:00', 'Lars', 'Padilla',
        'diam.lorem.auctor@adipiscing.edu', 'true', 'false'),
       ('(017) 68122864', '48295', '1998-03-09T06:40:05-08:00', 'Kelkheim', 'fermentum risus, at fringilla', '1',
        'Nunc',
        '2018-08-18T13:13:01-07:00', 'Quincy', 'Byers', 'libero@atpretium.ca', 'true', 'false'),
       ('(0226) 34219777', '19358', '1998-11-11T21:04:07-08:00', 'Kostroma', 'Donec est. Nunc ullamcorper,', '4',
        'magna. Duis', '2016-09-20T04:29:37-07:00', 'Flynn', 'Cole', 'ac.libero@a.co.uk', 'true', 'false'),
       ('(035) 54501013', '21544', '1996-08-22T00:17:09-07:00', 'Quinchao', 'sociosqu ad', '5', 'varius. Nam porttitor',
        '2016-05-13T22:08:22-07:00', 'Carlos', 'Moon', 'et.lacinia.vitae@anuncIn.net', 'true', 'false'),
       ('(034791) 289300', '55812', '1997-02-21T01:05:08-08:00', 'Goulburn', 'Maecenas mi felis, adipiscing fringilla,',
        '3', 'nisi. Aenean', '2019-10-25T14:16:35-07:00', 'Tanya', 'Craft', 'hymenaeos@tempor.net', 'true', 'false'),
       ('(063) 58090864', '82435', '1999-01-13T00:47:22-08:00', 'Mira Bhayandar', 'est. Nunc laoreet lectus quis', '4',
        'natoque', '2016-04-03T10:49:15-07:00', 'Henry', 'Schroeder', 'adipiscing@dolor.co.uk', 'true', 'false'),
       ('(05029) 7168424', '46523', '1996-11-30T04:00:31-08:00', 'Likino-Dulyovo', 'Duis dignissim tempor arcu.', '1',
        'magnis', '2019-12-26T15:06:52-08:00', 'Wallace', 'Henderson', 'sociis@vulputaterisusa.com', 'false', 'false'),
       ('(030498) 240321', '25723', '1999-05-08T10:41:34-07:00', 'Geer', 'in consectetuer ipsum', '3',
        'Cum sociis natoque',
        '2018-03-20T15:27:06-07:00', 'Nehru', 'Parrish', 'orci.consectetuer@Nam.edu', 'false', 'false'),
       ('(0221) 22580280', '23019', '1997-09-19T16:12:48-07:00', 'Lincoln', 'Ut nec urna', '5',
        'nibh. Aliquam ornare, libero at auctor ullamcorper, nisl', '2017-09-24T03:33:16-07:00', 'Autumn', 'Herring',
        'risus.odio.auctor@sitametluctus.com', 'false', 'false'),
       ('(07961) 6660121', '11047', '1998-01-17T09:30:01-08:00', 'Mendonk', 'et, euismod et, commodo at,', '2',
        'eros. Nam consequat', '2019-10-04T07:20:25-07:00', 'Diana', 'Savage', 'a.facilisis.non@sodalesMauris.com',
        'false', 'false'),
       ('(00727) 7722470', '70571', '1996-05-09T19:29:35-07:00', 'Amravati',
        'accumsan laoreet ipsum. Curabitur consequat,', '2', 'Praesent', '2016-04-07T21:18:38-07:00', 'Yeo', 'Eaton',
        'ac.metus@Aliquam.org', 'false', 'false'),
       ('(039548) 697636', '6321', '1998-01-02T02:56:31-08:00', 'Tacoma', 'vel arcu. Curabitur', '4',
        'elit, pellentesque a, facilisis non,', '2016-07-02T19:19:11-07:00', 'Mercedes', 'Little',
        'Mauris.vestibulum.neque@Vestibulumuteros.edu', 'false', 'false'),
       ('(0493) 23710630', '6717', '1996-11-26T18:34:00-08:00', 'Annapolis', 'nec, malesuada ut,', '2',
        'dolor. Quisque tincidunt pede ac urna. Ut', '2016-07-29T10:12:06-07:00', 'Duncan', 'Battle',
        'a@uterosnon.co.uk', 'false', 'false'),
       ('(055) 00485857', '72715', '1995-06-12T07:01:42-07:00', 'Lamont', 'tellus eu', '2',
        'luctus sit amet, faucibus ut, nulla.', '2017-11-29T08:15:13-08:00', 'Marcia', 'Walls',
        'non.lacinia.at@dignissimtempor.org', 'false', 'false'),
       ('(033390) 564431', '43032', '1998-12-09T10:13:19-08:00', 'Tofield', 'nibh. Donec est', '1',
        'aliquam iaculis, lacus', '2018-02-20T05:21:26-08:00', 'Suki', 'Vance',
        'varius.orci.in@ultriciesdignissimlacus.com', 'false', 'false'),
       ('(031600) 166005', '85740', '1999-11-30T14:41:34-08:00', 'Quibdó', 'vel arcu eu odio', '1',
        'massa. Vestibulum accumsan neque et nunc. Quisque', '2016-01-09T22:26:28-08:00', 'TaShya', 'Mcguire',
        'Cras.eget.nisi@ante.ca', 'false', 'false'),
       ('(032241) 771102', '86783', '2000-08-27T19:06:27-07:00', 'Filadelfia', 'turpis. In condimentum. Donec at', '5',
        'sem, vitae aliquam eros turpis non', '2017-12-22T01:29:16-08:00', 'Xavier', 'Baldwin',
        'volutpat@sapienimperdiet.net', 'false', 'false'),
       ('(076) 28756287', '24782', '1997-12-14T12:32:38-08:00', 'Montrose', 'et, lacinia', '2',
        'lacinia at, iaculis quis, pede.', '2020-01-19T11:00:18-08:00', 'Shoshana', 'Garza',
        'pellentesque@consectetuereuismod.co.uk', 'false', 'false'),
       ('(0555) 48713292', '19989', '2000-11-01T08:25:43-08:00', 'Melipilla', 'vitae mauris sit amet', '2',
        'lobortis augue scelerisque mollis.', '2017-04-29T21:26:26-07:00', 'Fulton', 'Hester',
        'cursus.in.hendrerit@vehiculaaliquetlibero.edu', 'false', 'false'),
       ('(084) 10143386', '21075', '1995-03-24T04:07:12-08:00', 'Saint-Brieuc', 'sociosqu ad litora', '2',
        'vulputate ullamcorper magna. Sed eu eros. Nam consequat', '2019-05-30T13:57:10-07:00', 'Fritz', 'Weeks',
        'lorem@at.co.uk', 'false', 'false'),
       ('(0417) 81678591', '32050', '1995-05-19T07:05:03-07:00', 'Częstochowa', 'molestie orci', '1',
        'pede ac urna. Ut tincidunt', '2017-07-28T22:23:42-07:00', 'Alika', 'Hartman', 'feugiat.tellus@turpis.ca',
        'false', 'false'),
       ('(030143) 428404', '98529', '1997-03-05T06:25:06-08:00', 'Donk', 'sem, vitae aliquam eros turpis', '2',
        'Donec egestas.', '2019-05-20T10:58:16-07:00', 'Mark', 'Martin', 'libero.dui@infaucibus.co.uk', 'false',
        'false'),
       ('(038) 41264340', '40115', '1995-01-21T00:03:49-08:00', 'Palu', 'parturient montes, nascetur ridiculus', '3',
        'orci,', '2016-03-02T07:42:18-08:00', 'Imogene', 'Mann', 'semper.Nam@aaliquetvel.net', 'false', 'false'),
       ('(020) 51630131', '26627', '1999-02-25T10:05:20-08:00', 'Legal', 'velit dui, semper et, lacinia', '4',
        'nisi a odio semper', '2016-12-28T20:27:19-08:00', 'Cameron', 'Boyer', 'nec@Aenean.org', 'false', 'false'),
       ('(001) 17436836', '77669', '1999-10-03T09:09:57-07:00', 'Adana', 'velit in', '5', 'auctor quis,',
        '2017-03-11T00:45:03-08:00', 'Deacon', 'Reeves', 'magna.Duis@luctussit.co.uk', 'false', 'false'),
       ('(0170) 63120286', '50721', '1995-04-30T15:19:34-07:00', 'Degelis', 'pellentesque. Sed', '5', 'quis, pede.',
        '2018-10-11T17:33:08-07:00', 'Rachel', 'Pennington', 'facilisis.eget@magna.ca', 'false', 'false'),
       ('(040) 58128391', '4721', '1997-07-02T14:47:55-07:00', 'Rezzoaglio', 'eu dui. Cum', '5', 'nec, leo.',
        '2016-07-23T23:08:25-07:00', 'Imelda', 'Kaufman', 'ut.pharetra.sed@parturientmontesnascetur.edu', 'false',
        'false'),
       ('(049) 39743066', '10983', '2000-02-22T14:39:25-08:00', 'Blankenfelde-Mahlow', 'Sed molestie. Sed id', '3',
        'ornare, facilisis eget, ipsum.', '2018-06-15T01:02:31-07:00', 'Neville', 'Cantu',
        'sit.amet.ultricies@euenimEtiam.org', 'false', 'false'),
       ('(068) 06358794', '71589', '1998-05-09T15:58:17-07:00', 'Lahore', 'scelerisque scelerisque', '5', 'tristique',
        '2019-06-09T03:08:50-07:00', 'Aspen', 'Ballard', 'Nunc.pulvinar@faucibuslectus.org', 'false', 'false'),
       ('(036266) 482420', '5922', '1999-11-28T02:04:11-08:00', 'Boryeong', 'tellus. Suspendisse sed', '1',
        'quis diam. Pellentesque habitant morbi tristique senectus et', '2018-11-08T21:40:43-08:00', 'Nomlanga',
        'Garrison', 'ipsum.non@eudui.net', 'false', 'false'),
       ('(018) 58415940', '6119', '1999-07-20T02:35:21-07:00', 'Bridgeport', 'sagittis. Nullam vitae diam. Proin', '4',
        'risus. Donec egestas. Duis ac arcu. Nunc mauris.', '2017-03-03T13:37:02-08:00', 'Natalie', 'Kramer',
        'Donec.fringilla.Donec@pretiumet.com', 'false', 'false');

--Random generirani timovi
INSERT INTO "tim" (naziv_tim, opis_tim, id_voditelj)
VALUES ('Tim za odnose s javnošću',
        'tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna.',
        135),
       ('Tim za prikupljanje financijskih sredstava',
        'et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor',
        127),
       ('Ljudski resursi',
        'dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor',
        97),
       ('Grant tim',
        'vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a',
        85),
       ('Tim za međunarodnu suradnju',
        'malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar',
        68),
       ('tincidunt congue turpis. In condimentum.',
        'dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient',
        109),
       ('Donec porttitor tellus non magna.',
        'quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum',
        81),
       ('mi enim, condimentum eget, volutpat',
        'nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas.', 91),
       ('risus. Quisque libero lacus, varius',
        'enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris.',
        147),
       ('Aliquam erat volutpat. Nulla facilisis.',
        'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices',
        43);

--Random generirani projekti
INSERT INTO "projekt" (naziv_projekt, opis_projekt, pocetak_projekt, zavrsetak_projekt)
VALUES ('ut erat. Sed',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis',
        '2015-01-08T21:55:10-08:00', '2020-10-22T01:54:06-07:00'),
       ('mi. Duis risus',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at',
        '2015-04-13T17:18:38-07:00', '2019-11-18T21:50:03-08:00'),
       ('neque non quam.',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna.',
        '2015-04-13T11:49:28-07:00', '2020-01-29T09:49:51-08:00'),
       ('mollis. Integer tincidunt',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam',
        '2015-03-25T17:01:44-07:00', '2019-06-15T03:58:16-07:00'),
       ('purus, accumsan interdum',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat.',
        '2017-05-09T12:52:28-07:00', '2021-05-04T22:45:50-07:00'),
       ('Praesent luctus. Curabitur',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut',
        '2017-08-15T20:52:34-07:00', '2019-06-26T04:26:54-07:00'),
       ('vitae dolor. Donec',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor.',
        '2018-01-31T13:31:39-08:00', '2020-05-17T16:36:31-07:00'),
       ('risus odio, auctor',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at',
        '2018-03-20T17:01:29-07:00', '2020-03-05T01:45:05-08:00'),
       ('sit amet diam',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede',
        '2017-08-18T06:18:42-07:00', '2020-10-02T13:30:28-07:00'),
       ('nonummy ac, feugiat', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.',
        '2017-09-25T11:01:29-07:00', '2020-01-01T10:47:20-08:00'),
       ('egestas. Aliquam fringilla',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna',
        '2016-11-22T17:01:32-08:00', '2020-09-24T08:46:12-07:00'),
       ('risus. Donec egestas.',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa',
        '2017-11-30T16:18:09-08:00', '2019-10-20T01:20:24-07:00'),
       ('Suspendisse ac metus',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras',
        '2015-03-04T12:58:00-08:00', '2020-05-16T18:17:37-07:00'),
       ('egestas hendrerit neque.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',
        '2016-06-22T08:04:35-07:00', '2020-05-11T09:53:31-07:00'),
       ('Sed auctor odio',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis',
        '2017-10-30T19:37:13-07:00', '2020-08-20T21:30:05-07:00'),
       ('consequat dolor vitae',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.',
        '2016-08-20T20:16:05-07:00', '2021-02-08T06:13:31-08:00'),
       ('dui. Cras pellentesque.',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque',
        '2016-02-18T13:24:07-08:00', '2020-04-16T00:02:51-07:00'),
       ('purus. Nullam scelerisque',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam',
        '2017-05-04T22:55:59-07:00', '2020-07-18T13:42:48-07:00'),
       ('eu neque pellentesque',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis',
        '2017-07-24T22:31:04-07:00', '2019-09-16T17:49:39-07:00'),
       ('euismod enim. Etiam', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2017-03-13T15:13:12-07:00',
        '2019-08-04T09:57:19-07:00'),
       ('ac turpis egestas.',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada',
        '2015-04-03T00:01:56-07:00', '2020-09-15T17:41:12-07:00'),
       ('Mauris ut quam',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',
        '2017-03-15T17:41:13-07:00', '2020-06-15T01:13:03-07:00'),
       ('Ut nec urna',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna',
        '2015-07-11T03:20:01-07:00', '2019-09-20T10:48:48-07:00'),
       ('ac risus. Morbi',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt',
        '2016-08-06T09:52:19-07:00', '2021-05-08T04:50:59-07:00'),
       ('eu, odio. Phasellus',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.',
        '2016-02-26T08:07:17-08:00', '2020-02-21T13:29:34-08:00'),
       ('eu tellus eu',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,',
        '2015-11-22T00:24:21-08:00', '2020-04-09T04:39:31-07:00'),
       ('Phasellus libero mauris,',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede',
        '2016-06-06T11:07:49-07:00', '2020-02-19T10:09:16-08:00'),
       ('nec, imperdiet nec,',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna',
        '2015-11-22T03:01:24-08:00', '2020-08-10T06:52:12-07:00'),
       ('nec urna suscipit',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.',
        '2016-10-05T12:29:53-07:00', '2020-03-25T19:10:18-07:00'),
       ('sem, consequat nec,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.',
        '2016-09-11T07:31:20-07:00', '2019-12-19T07:02:41-08:00'),
       ('pede, malesuada vel,',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at',
        '2017-05-09T06:06:17-07:00', '2020-06-11T00:41:26-07:00'),
       ('eu elit. Nulla',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',
        '2017-06-03T14:10:26-07:00', '2020-02-09T12:55:27-08:00'),
       ('eu nibh vulputate',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',
        '2015-12-19T22:12:32-08:00', '2021-03-08T16:57:39-08:00'),
       ('vulputate eu, odio.',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,',
        '2015-08-08T07:27:20-07:00', '2020-06-16T01:13:46-07:00'),
       ('non enim commodo',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt',
        '2017-03-19T09:57:36-07:00', '2020-01-02T02:52:30-08:00'),
       ('gravida non, sollicitudin',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa',
        '2017-05-06T17:57:47-07:00', '2019-06-20T19:44:53-07:00'),
       ('enim nisl elementum',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec',
        '2015-04-24T11:43:43-07:00', '2021-02-06T13:27:45-08:00'),
       ('a, malesuada id,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed',
        '2016-07-25T18:47:41-07:00', '2020-12-14T22:35:26-08:00'),
       ('eu metus. In',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut',
        '2017-04-20T20:46:05-07:00', '2021-03-12T23:23:56-08:00'),
       ('neque venenatis lacus.',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id,',
        '2015-07-02T03:20:43-07:00', '2019-05-21T15:29:09-07:00'),
       ('Praesent luctus. Curabitur',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',
        '2015-04-11T01:54:46-07:00', '2019-09-12T01:33:04-07:00'),
       ('ante ipsum primis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '2015-05-10T02:40:39-07:00',
        '2020-03-26T01:14:45-07:00'),
       ('facilisis eget, ipsum.',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing',
        '2016-10-22T00:07:54-07:00', '2020-06-14T21:47:13-07:00'),
       ('iaculis aliquet diam.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.',
        '2015-11-27T21:35:57-08:00', '2020-02-15T05:44:13-08:00'),
       ('id risus quis',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac',
        '2018-01-24T16:55:55-08:00', '2020-07-31T14:36:45-07:00'),
       ('tellus non magna.',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id,',
        '2015-11-28T11:52:34-08:00', '2020-07-17T04:43:41-07:00'),
       ('ultricies ornare, elit',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing',
        '2017-04-24T06:55:24-07:00', '2020-06-09T23:02:22-07:00'),
       ('orci, adipiscing non,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur',
        '2017-09-02T23:13:27-07:00', '2020-06-24T04:40:48-07:00'),
       ('purus, accumsan interdum',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu',
        '2015-11-08T11:31:36-08:00', '2020-04-07T01:14:20-07:00'),
       ('Mauris eu turpis.',
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa',
        '2018-02-07T10:40:00-08:00', '2020-03-29T11:54:31-07:00');

--Random generirani partneri
INSERT INTO "partner" (naziv_partner, oib_partner, web_adresa_partner, mobitel_partner, mail_partner)
VALUES ('Photojam', 19501365, 'sogou.com/mauris/vulputate/elementum/nullam.aspx', '+502 131 406 0513',
        'rbedenham0@weibo.com')
     , ('Ailane', 34458992, 'bloglovin.com/erat/vestibulum/sed/magna/at/nunc/commodo.xml', '+598 898 990 7238',
        'wgodbold1@exblog.jp')
     , ('Aimbu', 54600823, 'smh.com.au/molestie/sed.jpg', '+33 114 477 8458', 'mrandal2@cam.ac.uk')
     , ('Abatz', 44286904, 'amazon.co.jp/diam.xml', '+49 777 243 5781', 'tcudde3@a8.net')
     , ('Zoomcast', 76147533, 'reference.com/at/nulla/suspendisse/potenti/cras.html', '+62 485 325 3220',
        'klearmond4@go.com')
     , ('Thoughtbridge', 38286680, 'bluehost.com/nec/molestie.png', '+30 454 205 4294', 'bnovichenko5@amazonaws.com')
     , ('Oyondu', 24463120, 'blogs.com/iaculis/congue/vivamus/metus/arcu.xml', '+62 613 830 2471',
        'rmarkos6@blogspot.com')
     , ('Skipfire', 14225799, 'oakley.com/platea/dictumst/morbi/vestibulum/velit/id/pretium.aspx', '+54 146 227 0058',
        'hcampe7@jigsy.com')
     , ('Aibox', 21766609, 'mayoclinic.com/quam/pede/lobortis/ligula/sit.png', '+7 688 589 9715',
        'aseivertsen8@bizjournals.com')
     , ('Quimm', 89938845, 'wsj.com/lacus/purus/aliquet.jpg', '+1 702 140 9571', 'hgrob9@cdbaby.com')
     , ('Rhyloo', 99948158, 'utexas.edu/felis/fusce/posuere/felis/sed/lacus.json', '+33 765 561 7422',
        'anewcomba@ycombinator.com')
     , ('Reallinks', 54878006, 'oracle.com/potenti.jsp', '+351 308 886 4476', 'dezzellb@technorati.com')
     , ('Devify', 29115998, 'youku.com/pede/malesuada/in/imperdiet/et.xml', '+48 178 574 9660',
        'jlivardc@cloudflare.com')
     , ('Edgepulse', 43031599, 'state.gov/quisque/erat/eros/viverra/eget/congue.jpg', '+226 861 211 0396',
        'dthompstoned@ocn.ne.jp')
     , ('Ooba', 25924591, 'mtv.com/ac/leo.png', '+7 827 481 9642', 'mbabidgee@sciencedaily.com')
     , ('Skyba', 97057235, 'cdbaby.com/nunc/viverra/dapibus/nulla/suscipit/ligula/in.xml', '+46 623 108 6429',
        'ebrentf@lycos.com')
     , ('Devpoint', 92843037, 'boston.com/venenatis/lacinia/aenean.aspx', '+86 289 311 3432',
        'hstewartsong@vkontakte.ru')
     , ('Skynoodle', 72740634, 'archive.org/in/est/risus.png', '+62 872 980 4632', 'gbaikeh@last.fm')
     , ('Plajo', 35849857, '163.com/praesent/blandit/lacinia.html', '+46 239 601 0913', 'jyegorkini@sphinn.com')
     , ('Skyvu', 46940090, 'blogtalkradio.com/sodales/sed/tincidunt.json', '+371 748 263 3964', 'dostj@clickbank.net')
     , ('Jetwire', 61154074, 'goo.gl/massa/id/nisl/venenatis/lacinia.html', '+1 824 213 0586',
        'abottomerk@usatoday.com')
     , ('Tazz', 67064398, 'virginia.edu/et/ultrices/posuere/cubilia/curae/duis.js', '+62 291 974 8245',
        'rwoodmanl@washington.edu')
     , ('Yotz', 34128792, 'creativecommons.org/curae.json', '+230 892 869 9782', 'lgioanm@exblog.jp')
     , ('Agivu', 76867898, 'wix.com/ultrices.js', '+48 606 733 6737', 'fyellowleen@ucoz.ru')
     , ('Eabox', 85552918, 'cyberchimps.com/tellus/nulla/ut/erat.jsp', '+86 459 204 8440', 'bjosupeito@indiatimes.com')
     , ('Flipopia', 13987327, 'yellowbook.com/nunc.html', '+33 507 301 3627', 'mbroaderp@163.com')
     , ('Omba', 86920569, 'bbc.co.uk/parturient/montes/nascetur/ridiculus.png', '+7 653 778 3253', 'aespinhaq@51.la')
     , ('Buzzshare', 16533256, 'myspace.com/augue/a/suscipit/nulla/elit.png', '+36 293 542 6305',
        'brubinowiczr@ibm.com')
     , ('Brainbox', 95313282, 'apache.org/sed/nisl/nunc/rhoncus.jpg', '+54 916 706 9964', 'bjanczyks@sphinn.com')
     , ('Gigashots', 84833618, 'sohu.com/pellentesque/eget/nunc/donec/quis/orci/eget.xml', '+62 650 722 4313',
        'mwithert@rambler.ru')
     , ('Wikivu', 62981779, 'cam.ac.uk/duis/bibendum/morbi/non.html', '+86 515 571 6155', 'ssargintu@last.fm')
     , ('Meejo', 71744563, 'toplist.cz/porta/volutpat/erat/quisque/erat/eros/viverra.json', '+7 912 241 6757',
        'gpilleyv@google.fr')
     , ('Linkbridge', 71463634, 'irs.gov/donec/ut/mauris/eget/massa/tempor/convallis.xml', '+387 891 925 4279',
        'bklaessonw@php.net')
     , ('Skimia', 38347398, 'elegantthemes.com/in/consequat/ut.html', '+380 199 671 4188', 'mteaguex@timesonline.co.uk')
     , ('Dynava', 64980773, 'mysql.com/ligula.xml', '+7 341 272 0863', 'clapleyy@goo.ne.jp')
     , ('Shufflester', 90642480, 'businessweek.com/duis/bibendum/morbi.aspx', '+86 677 978 4133',
        'bmallinderz@themeforest.net')
     , ('Riffwire', 46409137, 'last.fm/magnis/dis/parturient.json', '+970 882 239 0703', 'rranyard10@elegantthemes.com')
     , ('Mydo', 92649954, 'home.pl/iaculis.json', '+63 493 663 1468', 'djarmain11@google.co.uk')
     , ('Fivespan', 44243549, 'elpais.com/sit/amet/erat/nulla/tempus/vivamus/in.html', '+33 450 803 0192',
        'ssutty12@umich.edu')
     , ('Kazu', 55108579, 'linkedin.com/cum/sociis/natoque/penatibus.xml', '+224 615 642 2796', 'dlathaye13@amazon.de')
     , ('Skinte', 57057584, 'netlog.com/justo/nec.aspx', '+886 663 534 8979', 'jfeighry14@google.co.uk')
     , ('Digitube', 96569709, 'deliciousdays.com/viverra/pede/ac/diam/cras/pellentesque/volutpat.jpg',
        '+62 692 178 2362', 'npolye15@google.com')
     , ('Eidel', 19890977, 'blogtalkradio.com/proin/leo/odio/porttitor/id.jsp', '+86 462 990 0040', 'jneeves16@mit.edu')
     , ('Livefish', 51997614, 'google.cn/pellentesque/ultrices/mattis/odio/donec/vitae/nisi.html', '+86 880 507 9937',
        'vsteer17@51.la')
     , ('Zooveo', 31733978, 'ebay.com/pede/libero/quis/orci/nullam/molestie/nibh.jsp', '+230 503 146 4703',
        'dpickworth18@cdbaby.com')
     , ('Blognation', 42059474, 'dion.ne.jp/quam/sapien.html', '+386 713 421 6802', 'imcardell19@statcounter.com')
     , ('Devpulse', 49508460, 'scientificamerican.com/et/ultrices/posuere/cubilia.jsp', '+81 922 580 4310',
        'aohartnett1a@ted.com')
     , ('Voomm', 61477160, 'uol.com.br/vel/accumsan.jpg', '+48 310 326 3759', 'lruperto1b@gmpg.org')
     , ('Rhynyx', 72403571, 'abc.net.au/sem/sed/sagittis.jsp', '+98 242 168 0020', 'lbraybrookes1c@taobao.com')
     , ('Skimia', 38719447, 'wired.com/sagittis/dui/vel/nisl.html', '+234 644 221 8803', 'cdallaway1d@purevolume.com')
     , ('Yakijo', 41198883, 'facebook.com/justo/etiam/pretium.jsp', '+60 348 784 1480', 'tstartin1e@booking.com')
     , ('Aibox', 57579406, 'amazon.com/nam/ultrices/libero/non/mattis/pulvinar/nulla.html', '+51 146 688 6648',
        'dnairns1f@ebay.com')
     , ('Jaxnation', 80782048, 'howstuffworks.com/ipsum/primis/in.aspx', '+383 897 464 8514',
        'fmales1g@list-manage.com')
     , ('Rhyzio', 75179586, 'dailymotion.com/sem/fusce/consequat/nulla/nisl/nunc.json', '+55 307 157 9319',
        'abrilleman1h@time.com')
     , ('Browsetype', 14655876, 'psu.edu/congue/eget/semper.xml', '+7 764 396 3286', 'lcrookston1i@1688.com')
     , ('Mybuzz', 79648353, 'feedburner.com/tincidunt.json', '+385 205 542 4624', 'jeadington1j@un.org')
     , ('Wordtune', 47606735, 'skype.com/curae/duis/faucibus.js', '+86 670 170 8949', 'ccremen1k@a8.net')
     , ('Twitterlist', 57699079, 'tuttocitta.it/volutpat/convallis/morbi/odio/odio/elementum.html', '+374 221 429 6973',
        'alarner1l@narod.ru')
     , ('Wordify', 52347814, 'tumblr.com/a.html', '+62 247 559 4061', 'skimbell1m@aol.com')
     , ('Topiclounge', 56385261, 'homestead.com/nunc/viverra.jpg', '+63 757 464 1831', 'cspykings1n@businessweek.com')
     , ('Agivu', 91399059, 'nifty.com/dictumst/aliquam/augue/quam/sollicitudin/vitae/consectetuer.aspx',
        '+86 463 553 1897', 'amacer1o@biblegateway.com')
     , ('Agivu', 56413548, 'usatoday.com/eu/mi/nulla/ac/enim.jpg', '+62 465 971 6587', 'cmisselbrook1p@china.com.cn')
     , ('Kamba', 64218834, 'github.io/consectetuer/adipiscing/elit/proin/interdum/mauris/non.jpg', '+86 551 502 3146',
        'jcastaner1q@oakley.com')
     , ('Riffpath', 96175125, 'google.co.uk/felis/sed/interdum/venenatis/turpis.xml', '+46 455 517 1314',
        'tenrdigo1r@domainmarket.com')
     , ('Feedmix', 85163823, 'w3.org/fusce/posuere.json', '+53 271 517 2741', 'ngrinley1s@usgs.gov')
     , ('Omba', 90210493, 'archive.org/sapien/iaculis/congue/vivamus/metus.jsp', '+33 986 629 9761',
        'cloveredge1t@goo.ne.jp')
     , ('Fatz', 11030688, 'amazon.co.uk/id/turpis/integer/aliquet/massa/id/lobortis.jsp', '+1 202 982 6538',
        'eoverland1u@nifty.com')
     , ('Topiczoom', 60657856, 'nhs.uk/magna/vulputate/luctus.png', '+1 801 504 6706', 'wivanenko1v@soundcloud.com')
     , ('Feedmix', 79825686, 'cbc.ca/non/ligula/pellentesque.xml', '+1 202 592 5343', 'pluckman1w@ox.ac.uk')
     , ('Tagtune', 66530370, 'taobao.com/at/turpis/donec.png', '+62 366 584 1561', 'gstock1x@shop-pro.jp')
     , ('Bubblemix', 37595824, 'comsenz.com/lectus.js', '+86 953 927 0181', 'kcourse1y@printfriendly.com')
     , ('Twinder', 23162378, 'webmd.com/metus.jsp', '+62 458 959 2471', 'plamdin1z@earthlink.net')
     , ('Thoughtworks', 59468607, 'bandcamp.com/proin/leo/odio/porttitor/id.js', '+60 674 695 3432',
        'eheatly20@foxnews.com')
     , ('Fivebridge', 29628925, 'virginia.edu/vulputate.jpg', '+86 393 812 1522', 'ehastler21@wikispaces.com')
     , ('Babbleblab', 28774951, 'canalblog.com/pulvinar/sed.js', '+46 425 336 3535', 'gdilston22@geocities.jp')
     , ('Brightbean', 59437576, 'unblog.fr/condimentum/neque/sapien/placerat.aspx', '+86 684 225 5695',
        'aclemo23@sciencedaily.com')
     , ('Chatterpoint', 11117311, 'hp.com/suspendisse/potenti/cras/in.png', '+236 632 734 9246', 'uvan24@amazon.de')
     , ('Nlounge', 33856334, 'unc.edu/in.xml', '+86 199 194 0320', 'mdemaine25@sciencedaily.com')
     , ('Skalith', 69919408, 'comcast.net/etiam/faucibus.js', '+7 163 392 4640', 'rfrancais26@squarespace.com')
     , ('Fivespan', 77143148, 'springer.com/cras/pellentesque/volutpat/dui.js', '+51 143 967 5691',
        'apietsma27@omniture.com')
     , ('Gabspot', 32891549, 'prweb.com/eros.html', '+502 847 347 2092', 'cgrimsley28@twitpic.com')
     , ('Tazz', 97036131, 'howstuffworks.com/sem.jpg', '+33 996 348 1515', 'fmcgavin29@typepad.com')
     , ('Aivee', 72747752, 'umich.edu/vel/ipsum/praesent.png', '+81 115 850 7716', 'jvasyatkin2a@utexas.edu')
     , ('Flipopia', 31464054, 'businesswire.com/sed/tincidunt/eu/felis/fusce.jpg', '+48 410 577 3594',
        'jollenbuttel2b@businessweek.com')
     , ('Yodel', 90690486, 'scribd.com/at/dolor/quis/odio/consequat/varius.html', '+62 812 783 3191',
        'ivonderempten2c@usa.gov')
     , ('Abatz', 46195937, 'xrea.com/quis/orci/eget.js', '+1 865 766 0978', 'egradly2d@china.com.cn')
     , ('Brainlounge', 36040213, 'goo.ne.jp/accumsan/odio/curabitur/convallis/duis/consequat/dui.js',
        '+86 416 386 4569', 'mgowing2e@1688.com')
     , ('Bubblemix', 28039957, 'economist.com/cras.json', '+86 509 157 1560', 'ichstney2f@bbb.org')
     , ('Linkbridge', 94455064, 'zdnet.com/nibh/in/lectus/pellentesque.html', '+52 123 459 8797',
        'vclissold2g@disqus.com')
     , ('Ooba', 10301644, 'dion.ne.jp/sem/mauris/laoreet/ut/rhoncus.xml', '+212 692 749 4629',
        'bbalnave2h@theglobeandmail.com')
     , ('Skynoodle', 78141587, 'myspace.com/posuere.aspx', '+62 184 608 4905', 'bjealous2i@mozilla.org')
     , ('Livetube', 89162994, 'blogspot.com/lectus/suspendisse/potenti.jsp', '+86 721 415 3306',
        'adohmer2j@scientificamerican.com')
     , ('Yodel', 53011489, 'indiatimes.com/mattis/egestas.json', '+51 915 647 6006', 'glimprecht2k@ted.com')
     , ('Bubbletube', 30780045, 'unc.edu/erat/vestibulum/sed/magna/at.json', '+86 715 127 0281',
        'vpentycross2l@sourceforge.net')
     , ('Divanoodle', 98826134, 'pagesperso-orange.fr/at/lorem/integer/tincidunt/ante/vel/ipsum.png',
        '+86 371 340 3967', 'hmatzel2m@51.la')
     , ('Wikizz', 81091970, 'freewebs.com/est/phasellus/sit/amet.html', '+86 257 318 2838', 'csproul2n@unesco.org')
     , ('Avaveo', 60133832, 'ibm.com/adipiscing/molestie/hendrerit.aspx', '+51 724 506 1373', 'zdudeney2o@flickr.com')
     , ('Podcat', 93929648, 'youtube.com/aliquet/massa/id.aspx', '+351 112 406 5956', 'tpenwarden2p@newsvine.com')
     , ('Dablist', 94351582, 'zimbio.com/adipiscing/lorem/vitae/mattis/nibh.png', '+351 564 762 5400',
        'ejaqueme2q@themeforest.net')
     , ('Meembee', 98922095, 'bandcamp.com/a/ipsum/integer/a/nibh.json', '+351 617 240 0033', 'mrasper2r@archive.org')
     , ('Tavu', 58443141, 'trellian.com/augue.jsp', '+92 969 675 3777', 'crushbury2s@reuters.com')
     , ('Cogidoo', 80513693, 'wisc.edu/porttitor/lacus/at/turpis.xml', '+62 486 551 7395', 'dleebeter2t@virginia.edu')
     , ('Voomm', 98984771, 'joomla.org/praesent.xml', '+351 750 453 0675', 'scalladine2u@networkadvertising.org')
     , ('Yakidoo', 63313262, 'ihg.com/volutpat/sapien.aspx', '+62 856 704 8078', 'cthurling2v@engadget.com')
     , ('Zoonoodle', 38767862, 'photobucket.com/nulla/mollis.json', '+60 580 192 3069', 'hbrownrigg2w@51.la')
     , ('Thoughtstorm', 41349510, 'ucsd.edu/eget/rutrum/at/lorem/integer.js', '+51 640 520 4708',
        'ccultcheth2x@networksolutions.com')
     , ('Kaymbo', 79900287, 'npr.org/platea/dictumst.jsp', '+62 827 226 4589', 'rcollecott2y@mozilla.com')
     , ('Eire', 29771821, 'army.mil/mi/sit/amet/lobortis/sapien.aspx', '+507 657 722 6789', 'aettles2z@amazon.com')
     , ('Topicstorm', 48568116, 'paginegialle.it/turpis/sed/ante/vivamus/tortor/duis/mattis.jsp', '+63 585 762 9734',
        'dfoucard30@independent.co.uk')
     , ('Livefish', 95238473, 'studiopress.com/justo/maecenas.jpg', '+7 284 274 8477', 'dlinsey31@istockphoto.com')
     , ('Gabcube', 66702934, 'wp.com/vel/augue/vestibulum.xml', '+228 515 623 9917', 'cgrunnell32@aboutads.info')
     , ('Meejo', 89421434, 'xing.com/venenatis/lacinia/aenean.png', '+57 413 116 4295', 'dbentame33@ucoz.com')
     , ('Teklist', 39320214, 'csmonitor.com/eleifend/quam/a/odio/in/hac.jpg', '+86 230 411 0598',
        'demberton34@odnoklassniki.ru')
     , ('Photojam', 24686243, 'disqus.com/congue/etiam/justo/etiam/pretium.jpg', '+1 361 532 2233',
        'acowup35@washingtonpost.com')
     , ('Skyvu', 19176562, 'csmonitor.com/integer/non/velit/donec/diam/neque/vestibulum.jpg', '+62 647 813 4369',
        'opaiton36@msu.edu')
     , ('Meevee', 74782583, 'omniture.com/amet/consectetuer/adipiscing/elit.aspx', '+66 231 657 5236',
        'bcastagnaro37@moonfruit.com')
     , ('Avamba', 17418019, 'zimbio.com/elit/sodales/scelerisque.jsp', '+506 797 509 2285',
        'amorecombe38@sourceforge.net')
     , ('Devcast', 66838713, 'admin.ch/nam/dui/proin/leo.aspx', '+86 537 142 6865', 'kmcgrail39@springer.com')
     , ('Kimia', 86105878, 'census.gov/sit/amet/sem/fusce/consequat.jpg', '+507 136 287 4102', 'rheale3a@walmart.com')
     , ('Izio', 13967716, 'cnet.com/ut/dolor.xml', '+93 107 347 8491', 'lohlsen3b@youku.com')
     , ('Leexo', 77032260, 'topsy.com/mi/sit/amet/lobortis/sapien/sapien.json', '+7 352 114 2878',
        'ofarndale3c@hexun.com')
     , ('Skajo', 51377944, 'alibaba.com/tellus/in/sagittis/dui/vel.js', '+27 283 826 0601', 'bpottie3d@cmu.edu')
     , ('Demizz', 50933269, 'usda.gov/magna.html', '+996 336 686 3468', 'oleverentz3e@nydailynews.com')
     , ('Voonyx', 34686410, 'google.com/adipiscing/molestie/hendrerit/at/vulputate/vitae/nisl.aspx',
        '+966 761 968 2111', 'dokynsillaghe3f@wikispaces.com')
     , ('Oyoloo', 88428780, 'usgs.gov/justo.js', '+972 876 356 4482', 'jsavaage3g@edublogs.org')
     , ('Zazio', 21015670, 'sun.com/aliquam/quis.aspx', '+374 407 516 3810', 'mlieber3h@fc2.com')
     , ('Mydo', 50429116, 'reuters.com/a/suscipit.xml', '+66 580 123 0495', 'hrahill3i@tripod.com')
     , ('Avamba', 14505381, 'ox.ac.uk/eget/elit/sodales/scelerisque/mauris.xml', '+62 301 104 1373',
        'rturrill3j@netlog.com')
     , ('Minyx', 48893109, 'storify.com/primis/in/faucibus/orci.json', '+86 414 143 5544',
        'mmcmarquis3k@ezinearticles.com')
     , ('Talane', 49133079, 'a8.net/nonummy/maecenas/tincidunt/lacus.js', '+1 770 294 2482', 'mrugg3l@nytimes.com')
     , ('Avavee', 76058948, 'pen.io/curae.jpg', '+30 944 117 1764', 'odetoc3m@samsung.com')
     , ('Twinder', 13848560, 'freewebs.com/felis/sed/lacus/morbi.xml', '+86 956 903 9746', 'sbiddles3n@behance.net')
     , ('Jabbertype', 88538408, 'netlog.com/integer/a/nibh/in/quis/justo.jsp', '+234 526 195 1455', 'dtoping3o@360.cn')
     , ('Meedoo', 52760599, 'people.com.cn/imperdiet/et.jpg', '+63 838 223 1635', 'abaughan3p@webnode.com')
     , ('Zoozzy', 52091452, 'youku.com/duis/ac/nibh/fusce.png', '+62 406 814 9244', 'hsummerly3q@bbb.org')
     , ('Feedbug', 20404406, 'oaic.gov.au/scelerisque/mauris/sit/amet/eros/suspendisse/accumsan.jpg',
        '+86 869 484 9017', 'bbridgewood3r@soundcloud.com')
     , ('Brainverse', 63885345, 'twitter.com/etiam/pretium.aspx', '+420 658 569 1042', 'alord3s@usda.gov')
     , ('Npath', 96915513, 'guardian.co.uk/ultrices/vel/augue.jsp', '+420 683 285 2543', 'oanderer3t@nature.com')
     , ('Livepath', 34389267, 'nytimes.com/velit/vivamus/vel/nulla.jsp', '+972 894 553 9375',
        'kshinton3u@infoseek.co.jp')
     , ('Gigazoom', 17277535, 'sfgate.com/lectus/pellentesque/eget/nunc/donec/quis/orci.jsp', '+240 631 295 5846',
        'mfoucher3v@angelfire.com')
     , ('Kanoodle', 21391889, 'slideshare.net/in/magna/bibendum/imperdiet/nullam.html', '+86 151 150 9190',
        'nchataignier3w@cbc.ca')
     , ('Riffpedia', 52693710, 'answers.com/id/pretium/iaculis.html', '+992 346 342 7692', 'dalvaro3x@patch.com')
     , ('Brightbean', 93278573, 'state.tx.us/nulla/sed/accumsan/felis/ut/at/dolor.jpg', '+86 822 842 3620',
        'aabramovitz3y@123-reg.co.uk')
     , ('Minyx', 87953414, 'networksolutions.com/in.png', '+52 447 143 2770', 'rgammell3z@123-reg.co.uk')
     , ('Skyvu', 43969269, 'dion.ne.jp/ut/nunc/vestibulum/ante/ipsum/primis/in.png', '+591 808 216 1385',
        'hfyall40@aol.com')
     , ('Tazzy', 38627511, 'icq.com/leo.png', '+1 898 722 8100', 'rhulbert41@cbslocal.com')
     , ('Brightdog', 30338678, 'businessweek.com/risus/dapibus/augue/vel.jsp', '+385 776 991 5058',
        'nlawfull42@uiuc.edu')
     , ('LiveZ', 23121258, 'china.com.cn/aliquam/lacus.png', '+55 470 832 6574', 'cdibdall43@desdev.cn')
     , ('Rhynyx', 65423887, 'sciencedirect.com/quisque/id/justo/sit/amet/sapien.jsp', '+351 527 870 7499',
        'gtortoishell44@boston.com')
     , ('Einti', 69341969, 'dedecms.com/at/nunc/commodo/placerat.jsp', '+86 286 940 9033',
        'sizakson45@simplemachines.org')
     , ('Tagpad', 64327091, 'hao123.com/suscipit/nulla/elit/ac/nulla/sed/vel.png', '+51 768 675 5107',
        'mlegges46@deliciousdays.com')
     , ('Feedbug', 72291079, 'home.pl/suscipit.aspx', '+86 965 505 2326', 'vcoventry47@google.co.uk')
     , ('Skimia', 92869993, 'devhub.com/at/velit/eu/est.xml', '+234 646 952 3243', 'rboullin48@bloglovin.com')
     , ('Miboo', 34782758, 'creativecommons.org/enim/in/tempor/turpis/nec.html', '+86 448 503 7604',
        'cwilkie49@abc.net.au')
     , ('Demimbu', 82231153, 'walmart.com/diam/in/magna.jpg', '+7 627 121 2105', 'bsumpter4a@vistaprint.com')
     , ('Lajo', 82592669, 'free.fr/dictumst/etiam/faucibus/cursus.xml', '+63 583 137 9285', 'jcade4b@baidu.com')
     , ('Realpoint', 43077414, 'dmoz.org/semper/est/quam/pharetra/magna/ac/consequat.aspx', '+63 118 671 9480',
        'jmacaree4c@mapy.cz')
     , ('Quinu', 28249811, 'quantcast.com/neque/duis.png', '+54 879 639 5835', 'jlawlie4d@mozilla.org')
     , ('Twitterbridge', 91183448, 'printfriendly.com/quis/lectus/suspendisse.xml', '+355 262 380 4972',
        'fnewis4e@imdb.com')
     , ('Blognation', 75627822, 'timesonline.co.uk/justo/pellentesque/viverra/pede.xml', '+62 677 662 5353',
        'cbau4f@washingtonpost.com')
     , ('Teklist', 13453920, 'gravatar.com/accumsan.jpg', '+60 530 443 9179', 'lwadelin4g@meetup.com')
     , ('Yozio', 28497243, 'virginia.edu/et/ultrices.jsp', '+370 855 602 7507', 'rpouton4h@angelfire.com')
     , ('Mudo', 10609352, 'narod.ru/magna/bibendum/imperdiet.xml', '+64 373 857 2826',
        'tmitham4i@networkadvertising.org')
     , ('Voomm', 69793270, 'europa.eu/amet/lobortis/sapien/sapien.js', '+62 651 794 4222',
        'talywin4j@cargocollective.com')
     , ('Topiczoom', 69414595, 'google.com.br/interdum/eu/tincidunt/in.aspx', '+46 257 772 2865',
        'ysemechik4k@purevolume.com')
     , ('Edgewire', 56579024, 'devhub.com/amet/nunc/viverra/dapibus.png', '+45 869 492 2812',
        'gtrill4l@printfriendly.com')
     , ('Gevee', 21484967, 'state.tx.us/imperdiet/nullam/orci/pede/venenatis/non.jsp', '+351 368 690 1983',
        'mtabner4m@wiley.com')
     , ('Demizz', 52057931, 'gravatar.com/non/mi.js', '+52 679 322 4548', 'dkeasley4n@economist.com')
     , ('Zava', 40332118, 'netlog.com/ac/enim/in/tempor/turpis.js', '+961 206 520 3146', 'akeppie4o@guardian.co.uk')
     , ('Blogspan', 24123988, 'theguardian.com/morbi/non/lectus/aliquam.html', '+223 277 464 5485',
        'llembke4p@shutterfly.com')
     , ('Vipe', 73354390, 'exblog.jp/in/felis/donec/semper/sapien/a/libero.png', '+30 982 107 6419',
        'bmatches4q@dailymotion.com')
     , ('Livepath', 41405074, 'ed.gov/ultricies.js', '+1 621 389 8967', 'mbaston4r@360.cn')
     , ('Fatz', 26486132, 'dropbox.com/magna.html', '+62 558 927 9435', 'jpedlar4s@cdbaby.com')
     , ('Gabtune', 50027352, 'bluehost.com/congue/elementum/in/hac.png', '+63 193 779 7419', 'hcarrell4t@live.com')
     , ('Yambee', 12186058, 'nsw.gov.au/cubilia/curae.aspx', '+63 930 906 8508', 'bjohananov4u@aboutads.info')
     , ('Bubblebox', 57398498, 'berkeley.edu/morbi/non/quam/nec/dui/luctus/rutrum.aspx', '+52 620 587 0822',
        'darsey4v@vk.com')
     , ('Midel', 91407674, 'dedecms.com/magna.png', '+62 664 378 4346', 'agittis4w@va.gov')
     , ('Shuffledrive', 71748583, '360.cn/enim/in/tempor/turpis/nec/euismod/scelerisque.xml', '+63 143 105 1178',
        'sbarks4x@businessinsider.com')
     , ('Oodoo', 12574542, 'unc.edu/consequat/ut/nulla/sed/accumsan/felis/ut.xml', '+244 847 805 1875',
        'mmclean4y@bbc.co.uk')
     , ('Divanoodle', 70564949, 'ucla.edu/lacus/morbi.jsp', '+86 105 410 0554', 'rgremain4z@biblegateway.com')
     , ('Youbridge', 97151709, 'yellowpages.com/pretium/iaculis/justo/in/hac.aspx', '+81 463 772 1180',
        'rbice50@about.com')
     , ('Youfeed', 65828468, 'webs.com/suspendisse/ornare/consequat.xml', '+1 384 279 9802', 'tdoige51@aboutads.info')
     , ('Oyope', 83783512, 'surveymonkey.com/neque/libero.png', '+55 139 974 6628', 'dedgecombe52@addtoany.com')
     , ('Zoovu', 16583042, 'google.com.hk/ligula/suspendisse/ornare/consequat/lectus/in.js', '+86 112 368 7676',
        'shodges53@parallels.com')
     , ('Photospace', 84123757, '360.cn/id/ornare.jpg', '+62 192 296 1951', 'nkorda54@ucsd.edu')
     , ('Skyble', 31812611, 'tripadvisor.com/ante/ipsum.json', '+1 113 431 0930', 'ftulloch55@hexun.com')
     , ('Agivu', 94969113, 'diigo.com/sed/interdum/venenatis.jpg', '+7 508 716 4349', 'jflaxon56@amazon.co.jp')
     , ('Browsecat', 11478855, 'netvibes.com/suspendisse/potenti/cras.js', '+7 744 724 0848', 'apoulden57@youtu.be')
     , ('Yadel', 88827443, 'newsvine.com/etiam.jsp', '+55 636 599 8737', 'iwhitlaw58@cocolog-nifty.com')
     , ('Jabbercube', 92767579, 'narod.ru/sed/ante.jsp', '+351 552 642 1227', 'kbang59@i2i.jp')
     , ('Livetube', 48345720, 'sakura.ne.jp/non/mattis/pulvinar.html', '+995 597 151 3061', 'egarie5a@chronoengine.com')
     , ('Jetpulse', 18507391, 'paypal.com/risus/auctor.html', '+54 846 337 5098', 'ssyseland5b@gravatar.com')
     , ('Agimba', 62335906, 'theguardian.com/diam/nam/tristique/tortor/eu.html', '+1 895 353 5301', 'jdyte5c@yelp.com')
     , ('Kwimbee', 93700986, 'scribd.com/dapibus/at/diam/nam/tristique/tortor/eu.json', '+60 229 354 2010',
        'hwrotham5d@dmoz.org')
     , ('Feedmix', 68741275, 'fda.gov/adipiscing.js', '+86 629 143 2907', 'dmoro5e@quantcast.com')
     , ('Kimia', 82586225, '163.com/sapien/cum.png', '+86 496 941 3655', 'cgullivan5f@npr.org')
     , ('Thoughtstorm', 15813465, 'dagondesign.com/turpis/integer.js', '+46 388 869 1015', 'lscholfield5g@nhs.uk')
     , ('Roomm', 31462354, 'theguardian.com/at/ipsum/ac/tellus/semper.xml', '+62 539 480 3849', 'ggregol5h@skype.com')
     , ('Trilia', 20072419, 'google.de/augue.js', '+33 757 144 7608', 'rbartel5i@wikipedia.org')
     , ('Eazzy', 25633426, 'plala.or.jp/leo/rhoncus/sed.jpg', '+63 548 172 3410', 'ctomaschke5j@de.vu')
     , ('Shufflebeat', 35375990, 'google.de/libero/rutrum/ac/lobortis/vel/dapibus.html', '+1 836 965 9651',
        'bfanti5k@gmpg.org')
     , ('Thoughtstorm', 71810631, 'soundcloud.com/arcu/adipiscing/molestie/hendrerit.js', '+234 148 690 8217',
        'qroughsedge5l@360.cn')
     , ('Zoonder', 42588427, 'sogou.com/orci/pede/venenatis.jpg', '+1 408 845 0915', 'barrundale5m@shop-pro.jp')
     , ('Tazz', 14255242, 'msu.edu/posuere/cubilia/curae/mauris/viverra.jpg', '+51 641 134 8877',
        'cvines5n@comcast.net')
     , ('Jaxnation', 21152394, 'github.io/nisl/aenean.js', '+62 329 670 7996', 'gfinding5o@artisteer.com')
     , ('Avamm', 71143777, 'google.cn/magna/bibendum/imperdiet/nullam/orci/pede.jsp', '+62 632 586 2364',
        'truddin5p@live.com')
     , ('Bluejam', 22104773, 'hugedomains.com/platea/dictumst/etiam/faucibus/cursus/urna/ut.jsp', '+62 715 981 1209',
        'nquenby5q@cam.ac.uk')
     , ('Nlounge', 36267566, 'bbc.co.uk/quam/fringilla/rhoncus.xml', '+86 207 253 2618', 'evalasek5r@parallels.com')
     , ('Eazzy', 34231089, 'fotki.com/aenean/lectus/pellentesque/eget/nunc/donec.aspx', '+228 245 788 6289',
        'ggoodall5s@pbs.org')
     , ('Eire', 75580382, 'stumbleupon.com/sit.json', '+48 706 691 2102', 'smccurlye5t@google.nl')
     , ('Tagtune', 67260462, 'msn.com/nascetur.json', '+86 301 303 5650', 'ddelcastello5u@irs.gov')
     , ('Kamba', 51890793, 'narod.ru/orci/nullam/molestie/nibh/in.jpg', '+60 746 872 5057', 'igiberd5v@samsung.com')
     , ('Voolia', 35544060, 'smh.com.au/morbi/non/quam/nec/dui/luctus.xml', '+86 252 768 6401', 'eadamolli5w@msn.com')
     , ('Npath', 69027999, 'mlb.com/aliquet/ultrices/erat/tortor/sollicitudin/mi/sit.png', '+1 806 188 6437',
        'dtunnicliff5x@upenn.edu')
     , ('Topicshots', 12536965, 'addthis.com/maecenas/pulvinar.jpg', '+234 921 720 6603', 'yharkes5y@youtube.com')
     , ('Edgeclub', 78878799, 'purevolume.com/suspendisse/ornare/consequat.json', '+86 175 711 7403',
        'ntomasino5z@issuu.com')
     , ('Jaxnation', 71818963, 'globo.com/lectus.aspx', '+54 536 456 3808', 'jgriffe60@chicagotribune.com')
     , ('Edgetag', 54099867, 'furl.net/platea/dictumst.js', '+976 982 179 2641', 'nswancock61@adobe.com')
     , ('Livetube', 82855216, 'bandcamp.com/posuere/cubilia.xml', '+52 815 930 9893', 'tpatridge62@51.la')
     , ('Yotz', 56281055, 'com.com/non/interdum/in/ante/vestibulum/ante.json', '+86 195 897 0055',
        'rduncombe63@reference.com')
     , ('Kwimbee', 21417909, 'blogs.com/elit/sodales/scelerisque/mauris/sit/amet.json', '+1 212 399 0872',
        'chadgraft64@clickbank.net')
     , ('Npath', 85077384, 'google.com/nibh/in/lectus/pellentesque/at/nulla/suspendisse.jpg', '+86 689 493 0901',
        'rluckes65@salon.com')
     , ('Yacero', 27250581, 'huffingtonpost.com/elementum/ligula/vehicula/consequat/morbi/a.jsp', '+351 437 401 3321',
        'tgainforth66@bing.com')
     , ('Roombo', 41024214, 'nydailynews.com/morbi/quis.xml', '+86 607 929 3249', 'acalles67@bloomberg.com')
     , ('Voolia', 50287017, 'meetup.com/amet/turpis/elementum/ligula/vehicula.jsp', '+62 800 171 7946',
        'clindro68@google.com.au')
     , ('Myworks', 13179359, 'amazon.co.uk/at/velit.jpg', '+66 243 112 9957', 'aorford69@bizjournals.com')
     , ('Meeveo', 39560480, 'lycos.com/at/turpis/donec.png', '+86 290 110 7833', 'rconnor6a@craigslist.org')
     , ('Buzzbean', 15560748, 'gnu.org/in/faucibus/orci.xml', '+7 854 916 9182', 'mastlatt6b@yandex.ru')
     , ('Rooxo', 24077115, 'webnode.com/urna/ut/tellus/nulla.js', '+48 237 387 2323', 'wlefebre6c@boston.com')
     , ('Fivespan', 46004742, 'tiny.cc/at/ipsum/ac/tellus.png', '+63 783 477 9676', 'gmowbray6d@google.fr')
     , ('Trilia', 12473385, 'themeforest.net/in.png', '+850 483 942 8878', 'mwimpenny6e@wikia.com')
     , ('Livefish', 92264792, 'xing.com/tempus/sit/amet/sem/fusce/consequat.aspx', '+86 520 426 7231',
        'hfiggess6f@apache.org')
     , ('Jabberstorm', 69346426, 'mac.com/volutpat/dui/maecenas/tristique.js', '+52 648 707 7707',
        'gstainfield6g@bandcamp.com')
     , ('Twiyo', 61822116, 'opera.com/est/donec.aspx', '+57 923 218 2062', 'rdavydkov6h@exblog.jp')
     , ('Edgeblab', 91159556, 'ed.gov/semper/sapien/a/libero/nam.json', '+86 255 874 7860', 'bcrichmer6i@pcworld.com')
     , ('Miboo', 95537498, 'sun.com/lectus.png', '+62 408 943 7294', 'sdomoni6j@indiegogo.com')
     , ('Voolia', 21092871, 'webmd.com/erat/nulla/tempus/vivamus/in.json', '+86 279 886 7364',
        'komannion6k@virginia.edu')
     , ('Realmix', 89506549, 'list-manage.com/pellentesque/eget/nunc.jsp', '+46 851 479 1326',
        'cgillean6l@constantcontact.com')
     , ('Teklist', 13389252, 'skype.com/et/tempus/semper/est.js', '+353 265 970 1242', 'bvina6m@answers.com')
     , ('Demivee', 85707065, 'over-blog.com/ipsum/primis.json', '+254 526 359 7829', 'lcarlet6n@meetup.com')
     , ('Jamia', 66858980, 'webnode.com/nisl/venenatis/lacinia.html', '+86 101 113 9983', 'agerritzen6o@usa.gov')
     , ('Feedspan', 85589987, 'vkontakte.ru/ante.aspx', '+55 616 304 3374', 'tsherrott6p@phoca.cz')
     , ('Babbleblab', 65106615, 'boston.com/non/velit/donec/diam/neque/vestibulum/eget.xml', '+86 106 529 4386',
        'acapelow6q@pcworld.com')
     , ('Jayo', 98993681, 'yandex.ru/sed.js', '+351 617 233 2272', 'cshinefield6r@senate.gov')
     , ('Photobug', 54145953, 'state.gov/vestibulum/vestibulum.html', '+1 542 435 7106', 'dhasell6s@wp.com')
     , ('Voonte', 60308085, 'jigsy.com/montes/nascetur/ridiculus/mus.aspx', '+86 728 528 1554',
        'sbeales6t@dailymail.co.uk')
     , ('Wikivu', 59753464, 'cornell.edu/congue/vivamus/metus.png', '+220 236 250 3724', 'rcastledine6u@webs.com')
     , ('Browsedrive', 24208576, 'hubpages.com/id/nulla/ultrices/aliquet.js', '+46 995 106 3304',
        'babethell6v@youku.com')
     , ('Leexo', 69075304, 'cnn.com/purus/sit/amet.png', '+1 765 986 5008', 'dcrush6w@smugmug.com')
     , ('Jaxnation', 14883003, 'rediff.com/sociis/natoque/penatibus/et/magnis/dis.json', '+63 805 371 3038',
        'ddemanuele6x@youtube.com');

--Random generirani sponzorski paketi
INSERT INTO "sponzorski_paket" (naziv_sponzorski_paket, stavke, datum_stvaranja)
VALUES ('pellentesque eget,', 'aliquam eu, accumsan sed, facilisis vitae,', '2018-02-02T14:18:18-08:00'),
       ('blandit congue.', 'Aliquam ultrices iaculis odio. Nam interdum enim', '2020-10-27T01:35:50-07:00'),
       ('enim mi', 'semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus',
        '2019-06-12T13:43:30-07:00'),
       ('Nunc ac', 'odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam',
        '2020-02-17T08:35:53-08:00'),
       ('interdum enim', 'metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula.',
        '2018-09-13T14:20:35-07:00'),
       ('eget, dictum', 'arcu. Morbi sit amet massa. Quisque porttitor eros', '2018-08-25T23:54:21-07:00'),
       ('euismod et,', 'orci. Phasellus', '2018-12-30T06:02:14-08:00'),
       ('sagittis augue,',
        'tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla',
        '2018-04-18T23:53:38-07:00'),
       ('accumsan neque', 'purus, accumsan interdum libero', '2020-12-11T20:47:08-08:00'),
       ('a, magna.',
        'sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet,',
        '2018-10-23T16:27:03-07:00'),
       ('In lorem.', 'ligula. Nullam feugiat placerat', '2020-06-19T00:11:47-07:00'),
       ('ac urna.', 'nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras', '2020-08-03T07:38:30-07:00'),
       ('vulputate ullamcorper',
        'magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer',
        '2020-03-17T21:15:22-07:00'),
       ('iaculis enim,', 'dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam',
        '2019-08-04T16:31:35-07:00'),
       ('leo, in',
        'Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas',
        '2020-02-29T04:36:41-08:00'),
       ('non enim.', 'ornare, libero at auctor ullamcorper, nisl arcu iaculis', '2019-03-24T03:03:45-07:00'),
       ('scelerisque, lorem', 'in molestie', '2019-06-06T11:26:40-07:00'),
       ('sed, hendrerit', 'luctus sit amet, faucibus ut, nulla. Cras eu tellus eu', '2020-09-13T00:06:46-07:00'),
       ('at, nisi.',
        'nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat',
        '2018-12-04T00:15:23-08:00'),
       ('non sapien',
        'ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa.',
        '2020-09-07T06:41:10-07:00'),
       ('neque sed', 'ultrices posuere cubilia Curae; Donec tincidunt.', '2018-11-08T18:34:42-08:00'),
       ('sit amet',
        'ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare.',
        '2018-01-30T06:10:19-08:00'),
       ('magna. Lorem', 'id sapien. Cras dolor dolor, tempus non, lacinia at,', '2019-10-14T04:56:41-07:00'),
       ('imperdiet ornare.', 'amet, consectetuer adipiscing elit.', '2020-03-31T05:13:52-07:00'),
       ('magna. Nam',
        'neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo.',
        '2018-06-08T21:28:25-07:00'),
       ('molestie sodales.',
        'morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque.',
        '2019-08-22T18:10:04-07:00'),
       ('risus. Duis',
        'at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate',
        '2020-02-20T16:38:42-08:00'),
       ('faucibus orci', 'ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus',
        '2019-05-21T10:50:31-07:00'),
       ('justo eu', 'lorem, auctor quis, tristique ac,', '2020-10-11T13:32:52-07:00'),
       ('mollis non,',
        'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet',
        '2018-04-20T12:34:42-07:00'),
       ('at fringilla',
        'Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor',
        '2021-01-01T00:26:17-08:00'),
       ('urna et',
        'nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare',
        '2020-04-04T19:29:23-07:00'),
       ('urna et', 'netus et malesuada fames ac turpis egestas.', '2020-07-02T01:26:49-07:00'),
       ('mus. Proin', 'pede nec ante blandit', '2018-02-12T10:30:45-08:00'),
       ('penatibus et', 'nisi. Cum sociis natoque', '2018-06-08T12:03:23-07:00'),
       ('amet orci.', 'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc',
        '2020-02-06T14:06:13-08:00'),
       ('amet risus.', 'mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed',
        '2020-10-13T20:20:54-07:00'),
       ('eu enim.', 'scelerisque dui.', '2020-03-12T10:32:40-07:00'),
       ('Vivamus non', 'sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas',
        '2018-10-22T02:25:01-07:00'),
       ('mauris, rhoncus', 'Nam nulla magna, malesuada vel, convallis', '2020-11-13T00:29:37-08:00'),
       ('adipiscing. Mauris', 'in felis. Nulla tempor augue', '2018-06-30T09:19:32-07:00'),
       ('sodales. Mauris',
        'Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna.',
        '2018-09-12T01:54:49-07:00'),
       ('dui, semper',
        'leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing',
        '2018-07-15T09:56:39-07:00'),
       ('aliquam, enim',
        'eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum',
        '2019-08-18T17:42:31-07:00'),
       ('enim. Nunc', 'Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis,',
        '2018-12-07T10:53:02-08:00'),
       ('magna. Suspendisse', 'ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus',
        '2018-11-20T19:11:01-08:00'),
       ('lacus. Nulla',
        'quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue',
        '2019-10-22T21:12:48-07:00'),
       ('Curabitur vel', 'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam', '2018-08-06T03:23:06-07:00'),
       ('at, nisi.', 'justo. Proin non massa non ante bibendum', '2018-02-24T23:15:20-08:00'),
       ('suscipit, est', 'ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor',
        '2018-06-06T11:31:58-07:00');

--Random generirana okupljanja
INSERT INTO "okupljanje" (naziv_okupljanje, opis_okupljanje, pocetak_okupljanje, zavrsetak_okupljanje, je_formalno,
                          id_tim)
VALUES ('tempus scelerisque, lorem', 'Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat',
        '2018-04-16T19:08:57-07:00', '2020-08-27T16:31:09-07:00', 'true', '9'),
       ('sed, facilisis vitae,', 'mus. Proin vel arcu', '2018-05-01T19:35:46-07:00', '2020-12-22T21:42:12-08:00',
        'true', '2'),
       ('ornare, lectus ante',
        'dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper',
        '2018-11-04T03:31:47-08:00', '2020-04-04T13:35:55-07:00', 'false', '6'),
       ('vel, vulputate eu,', 'et tristique', '2019-11-15T17:01:50-08:00', '2021-05-04T20:56:24-07:00', 'false', '4'),
       ('quis lectus. Nullam', 'egestas. Fusce aliquet', '2018-04-01T23:40:32-07:00', '2020-08-20T03:53:09-07:00',
        'true', '10'),
       ('elit. Aliquam auctor,', 'scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc',
        '2018-07-09T13:14:27-07:00', '2020-11-11T21:20:24-08:00', 'false', '10'),
       ('elementum, lorem ut', 'Sed eget lacus. Mauris non dui', '2018-01-14T22:33:21-08:00',
        '2019-12-30T10:38:40-08:00', 'true', NULL),
       ('mi. Aliquam gravida', 'Nulla aliquet. Proin velit. Sed malesuada augue ut', '2018-12-03T06:00:26-08:00',
        '2019-11-01T19:41:39-07:00', 'true', '10'),
       ('nunc nulla vulputate', 'sit amet', '2018-07-10T21:24:29-07:00', '2020-12-14T15:25:57-08:00', 'false', '7'),
       ('Etiam bibendum fermentum',
        'nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor.',
        '2019-05-02T21:55:41-07:00', '2020-12-07T06:19:29-08:00', 'true', NULL),
       ('facilisis. Suspendisse commodo', 'ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla',
        '2018-11-03T11:38:42-07:00', '2020-09-11T00:27:51-07:00', 'false', '2'),
       ('erat volutpat. Nulla',
        'euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi.',
        '2018-10-25T19:51:05-07:00', '2020-06-26T04:28:21-07:00', 'true', '2'),
       ('euismod et, commodo', 'interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci',
        '2019-10-11T03:18:32-07:00', '2020-01-08T21:22:39-08:00', 'false', '6'),
       ('velit egestas lacinia.',
        'eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed',
        '2018-04-18T17:50:06-07:00', '2021-04-22T19:51:39-07:00', 'false', '10'),
       ('amet orci. Ut', 'eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada',
        '2019-02-08T03:18:21-08:00', '2020-10-08T05:58:12-07:00', 'true', '5'),
       ('gravida mauris ut', 'turpis. Nulla aliquet. Proin velit. Sed malesuada', '2018-09-01T17:49:39-07:00',
        '2019-11-07T09:43:28-08:00', 'true', '10'),
       ('placerat. Cras dictum', 'faucibus ut, nulla. Cras eu tellus eu augue', '2019-07-17T19:17:38-07:00',
        '2020-10-24T17:16:53-07:00', 'false', '6'),
       ('non, dapibus rutrum,', 'Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl',
        '2018-08-28T14:27:52-07:00', '2021-03-16T21:25:22-07:00', 'true', '9'),
       ('cursus. Nunc mauris',
        'Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper',
        '2018-09-14T11:26:53-07:00', '2020-04-13T11:13:31-07:00', 'false', '4'),
       ('Lorem ipsum dolor', 'Aliquam adipiscing lobortis', '2018-03-08T13:21:21-08:00', '2021-02-08T07:05:39-08:00',
        'true', '2'),
       ('nonummy ut, molestie',
        'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac',
        '2018-02-06T05:36:08-08:00', '2020-03-24T04:07:30-07:00', 'false', '1'),
       ('Donec non justo.', 'enim commodo hendrerit. Donec porttitor tellus non magna. Nam',
        '2019-07-20T22:40:15-07:00', '2020-01-25T21:46:20-08:00', 'true', '8'),
       ('netus et malesuada', 'et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,',
        '2018-06-14T11:52:30-07:00', '2020-01-08T04:17:02-08:00', 'false', '8'),
       ('mollis nec, cursus', 'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque',
        '2019-05-20T22:51:09-07:00', '2019-12-28T20:48:23-08:00', 'true', '1'),
       ('eu, placerat eget,', 'inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus.',
        '2019-04-29T20:31:26-07:00', '2020-06-23T04:09:11-07:00', 'true', '3'),
       ('sodales purus, in', 'Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.',
        '2018-06-22T18:07:26-07:00', '2020-08-17T06:01:09-07:00', 'true', '2'),
       ('ac mattis ornare,', 'Proin eget', '2019-12-06T08:44:55-08:00', '2021-02-18T18:54:44-08:00', 'true', NULL),
       ('Suspendisse tristique neque',
        'pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris,', '2019-10-14T02:01:58-07:00',
        '2020-03-10T23:55:33-07:00', 'true', '7'),
       ('lacus. Mauris non', 'auctor odio', '2018-03-12T21:36:13-07:00', '2020-06-07T11:05:49-07:00', 'false', '3'),
       ('Donec felis orci,', 'tempus non, lacinia at,', '2018-12-05T18:10:07-08:00', '2020-09-12T20:05:33-07:00',
        'true', '8'),
       ('ac, fermentum vel,',
        'luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida.',
        '2019-05-17T08:04:44-07:00', '2019-11-17T10:08:48-08:00', 'true', NULL),
       ('non dui nec', 'est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim',
        '2019-01-30T22:12:43-08:00', '2021-03-09T10:17:51-08:00', 'false', '7'),
       ('Integer in magna.', 'feugiat placerat velit. Quisque', '2018-09-14T23:38:37-07:00',
        '2020-11-21T18:31:55-08:00', 'false', '7'),
       ('sem elit, pharetra',
        'at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa.',
        '2018-09-22T06:55:13-07:00', '2020-07-31T02:59:59-07:00', 'true', '10'),
       ('feugiat nec, diam.', 'massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non,',
        '2018-01-06T05:45:07-08:00', '2020-05-16T20:12:36-07:00', 'false', '2'),
       ('eget massa. Suspendisse',
        'semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus',
        '2019-07-06T13:53:51-07:00', '2020-12-06T12:46:42-08:00', 'false', '2'),
       ('Aliquam adipiscing lobortis', 'nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.',
        '2018-07-01T09:20:55-07:00', '2020-05-08T23:35:02-07:00', 'true', '8'),
       ('justo faucibus lectus,', 'vel, vulputate', '2018-12-03T17:38:23-08:00', '2021-02-10T21:01:05-08:00', 'true',
        '5'),
       ('consequat dolor vitae', 'ligula. Donec', '2019-08-01T07:54:35-07:00', '2020-09-30T16:38:26-07:00', 'true',
        '6'),
       ('lectus ante dictum',
        'et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu',
        '2019-08-23T09:24:21-07:00', '2021-04-23T11:30:55-07:00', 'true', '7'),
       ('iaculis nec, eleifend', 'placerat velit.', '2019-06-03T15:04:43-07:00', '2019-11-28T11:02:31-08:00', 'true',
        '7'),
       ('imperdiet dictum magna.', 'consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet',
        '2019-06-13T11:09:44-07:00', '2020-12-31T16:24:36-08:00', 'true', '9'),
       ('fames ac turpis', 'dui, in sodales elit erat vitae risus. Duis', '2018-12-10T19:10:23-08:00',
        '2021-03-11T11:36:11-08:00', 'false', '8'),
       ('pede nec ante',
        'vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus',
        '2018-01-03T01:41:23-08:00', '2021-03-13T04:10:53-08:00', 'false', '1'),
       ('suscipit nonummy. Fusce', 'euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna.',
        '2018-05-29T09:51:22-07:00', '2020-10-04T19:58:51-07:00', 'true', '3'),
       ('egestas lacinia. Sed',
        'nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis,',
        '2019-09-03T11:27:26-07:00', '2020-01-19T13:00:11-08:00', 'false', '9'),
       ('non nisi. Aenean', 'natoque penatibus et', '2018-12-04T21:32:56-08:00', '2020-01-21T10:46:09-08:00', 'false',
        '4'),
       ('purus. Maecenas libero',
        'Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,',
        '2018-11-12T07:56:40-08:00', '2020-07-16T18:12:00-07:00', 'true', '8'),
       ('leo. Morbi neque', 'eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit', '2019-11-18T22:47:31-08:00',
        '2020-03-29T11:27:24-07:00', 'false', '7'),
       ('ut erat. Sed', 'In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus.',
        '2019-03-14T14:08:27-07:00', '2019-11-02T09:05:37-07:00', 'false', '8');
INSERT INTO "okupljanje" (naziv_okupljanje, opis_okupljanje, pocetak_okupljanje, zavrsetak_okupljanje, je_formalno,
                          id_tim)
VALUES ('urna. Nunc quis',
        'vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla.',
        '2019-12-08T01:00:19-08:00', '2020-01-01T04:39:49-08:00', 'false', '6'),
       ('diam lorem, auctor', 'tristique senectus et netus et malesuada fames ac', '2018-01-14T01:07:55-08:00',
        '2021-02-01T13:49:01-08:00', 'false', '8'),
       ('lacinia orci, consectetuer', 'tellus. Aenean egestas hendrerit neque. In', '2019-07-29T13:31:34-07:00',
        '2020-02-24T09:36:07-08:00', 'false', '1'),
       ('eu enim. Etiam', 'auctor odio a purus. Duis elementum, dui', '2019-06-12T18:52:08-07:00',
        '2020-03-24T11:27:03-07:00', 'false', '3'),
       ('Quisque fringilla euismod',
        'Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras',
        '2019-01-29T14:49:23-08:00', '2019-12-27T09:08:49-08:00', 'true', '6'),
       ('tempor erat neque',
        'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed',
        '2019-07-20T23:34:12-07:00', '2020-07-29T20:13:57-07:00', 'true', '4'),
       ('elit, pellentesque a,', 'suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis',
        '2019-11-11T14:23:31-08:00', '2021-03-13T03:08:47-08:00', 'true', '4'),
       ('odio vel est',
        'amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.',
        '2018-11-26T22:49:43-08:00', '2020-10-09T12:04:29-07:00', 'true', '2'),
       ('rutrum. Fusce dolor', 'euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis',
        '2018-11-25T01:21:48-08:00', '2020-11-10T15:54:02-08:00', 'false', NULL),
       ('urna convallis erat,',
        'aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,',
        '2018-02-11T17:05:14-08:00', '2020-08-18T08:31:39-07:00', 'true', NULL),
       ('consectetuer, cursus et,', 'Suspendisse aliquet', '2019-01-28T12:51:21-08:00', '2019-11-26T11:20:01-08:00',
        'true', '9'),
       ('semper cursus. Integer',
        'blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc',
        '2019-11-15T11:07:15-08:00', '2021-05-02T12:14:59-07:00', 'false', '1'),
       ('eleifend nec, malesuada',
        'non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus',
        '2019-05-08T02:57:49-07:00', '2019-11-14T00:01:34-08:00', 'false', '7'),
       ('accumsan interdum libero',
        'non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum',
        '2019-12-22T11:06:29-08:00', '2020-01-03T03:46:33-08:00', 'false', '5'),
       ('Nunc lectus pede,', 'Nunc ullamcorper,', '2018-11-05T18:14:21-08:00', '2020-05-27T07:08:37-07:00', 'false',
        '7'),
       ('fringilla euismod enim.', 'vitae mauris sit amet lorem semper auctor.', '2019-08-02T21:11:28-07:00',
        '2019-11-06T07:21:54-08:00', 'false', '10'),
       ('nibh. Phasellus nulla.',
        'sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus',
        '2018-09-29T21:28:12-07:00', '2020-06-26T16:12:53-07:00', 'false', '2'),
       ('vehicula. Pellentesque tincidunt',
        'Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam',
        '2019-08-09T09:36:48-07:00', '2020-10-13T09:03:04-07:00', 'true', '3'),
       ('lectus pede et',
        'sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus',
        '2019-11-18T20:36:12-08:00', '2021-01-08T04:53:36-08:00', 'true', '5'),
       ('molestie tellus. Aenean', 'vitae semper egestas,', '2019-04-12T15:50:32-07:00', '2020-10-17T06:15:49-07:00',
        'true', NULL),
       ('metus. Aliquam erat', 'libero nec ligula consectetuer rhoncus. Nullam', '2018-04-04T14:09:44-07:00',
        '2020-12-23T01:38:44-08:00', 'true', '5'),
       ('dictum augue malesuada',
        'quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis',
        '2019-04-03T09:24:07-07:00', '2020-04-16T11:10:01-07:00', 'true', '4'),
       ('elementum purus, accumsan', 'non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non',
        '2018-02-12T17:16:57-08:00', '2019-11-10T09:44:45-08:00', 'false', '6'),
       ('venenatis lacus. Etiam', 'nisl sem,', '2018-04-19T06:11:34-07:00', '2020-02-09T15:43:19-08:00', 'true', '6'),
       ('ullamcorper. Duis at', 'dolor. Donec', '2019-07-02T13:31:39-07:00', '2020-03-08T01:29:40-08:00', 'true', '8'),
       ('Aliquam auctor, velit', 'nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem',
        '2019-10-01T14:45:08-07:00', '2020-09-17T07:23:17-07:00', 'true', '9'),
       ('faucibus lectus, a', 'magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut',
        '2018-08-26T14:43:58-07:00', '2020-05-21T15:07:10-07:00', 'false', '6'),
       ('nunc. In at', 'dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus',
        '2019-04-17T14:33:49-07:00', '2020-12-06T18:55:11-08:00', 'true', '8'),
       ('Donec felis orci,', 'massa. Quisque porttitor eros nec tellus. Nunc lectus', '2019-09-09T02:10:48-07:00',
        '2020-08-17T18:09:23-07:00', 'false', '2'),
       ('eget, dictum placerat,', 'Nunc mauris elit, dictum eu, eleifend nec,', '2019-04-19T00:23:11-07:00',
        '2019-12-30T01:27:36-08:00', 'true', '8'),
       ('condimentum eget, volutpat', 'in lobortis', '2019-06-05T10:03:59-07:00', '2020-10-18T06:05:19-07:00', 'true',
        '9'),
       ('sit amet diam', 'vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam,',
        '2019-12-29T17:37:52-08:00', '2020-03-15T03:29:39-07:00', 'false', '4'),
       ('sagittis lobortis mauris.', 'cursus a, enim. Suspendisse aliquet, sem', '2018-01-13T19:57:11-08:00',
        '2021-02-23T07:05:45-08:00', 'false', '9'),
       ('libero est, congue', 'adipiscing, enim mi tempor', '2019-09-02T00:38:13-07:00', '2020-08-22T19:38:51-07:00',
        'true', '10'),
       ('vestibulum. Mauris magna.', 'Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit',
        '2019-05-09T13:33:17-07:00', '2020-05-23T01:21:58-07:00', 'false', NULL),
       ('lectus, a sollicitudin',
        'magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris',
        '2019-02-21T14:20:52-08:00', '2019-12-20T08:35:48-08:00', 'false', '6'),
       ('dictum sapien. Aenean', 'et, rutrum eu, ultrices sit amet,', '2019-09-20T06:05:36-07:00',
        '2020-10-29T04:58:43-07:00', 'false', '4'),
       ('hendrerit neque. In', 'non, lobortis quis,', '2018-05-14T09:42:04-07:00', '2020-05-16T16:24:06-07:00', 'false',
        '5'),
       ('ut, pharetra sed,',
        'amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean',
        '2018-06-08T06:55:26-07:00', '2020-05-27T04:42:53-07:00', 'false', '10'),
       ('vitae, sodales at,',
        'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis',
        '2018-09-03T02:02:22-07:00', '2020-11-03T18:36:38-08:00', 'true', '7'),
       ('convallis dolor. Quisque', 'auctor, velit eget laoreet posuere, enim nisl elementum',
        '2018-04-02T15:24:19-07:00', '2020-04-23T02:08:12-07:00', 'true', '7'),
       ('eu lacus. Quisque',
        'vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,',
        '2018-03-17T10:52:20-07:00', '2020-06-26T12:22:38-07:00', 'false', '7'),
       ('et malesuada fames', 'magnis dis parturient montes, nascetur ridiculus', '2018-11-11T16:04:21-08:00',
        '2021-01-05T14:41:46-08:00', 'true', '9'),
       ('quis, pede. Praesent', 'dolor. Nulla', '2018-11-19T11:07:47-08:00', '2019-11-28T14:20:12-08:00', 'true', '6'),
       ('erat, eget tincidunt', 'sed pede nec ante blandit viverra. Donec tempus,', '2019-10-17T16:43:49-07:00',
        '2020-08-28T04:43:28-07:00', 'false', '3'),
       ('enim mi tempor',
        'non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu',
        '2018-09-13T22:38:15-07:00', '2020-04-11T07:50:50-07:00', 'true', '2'),
       ('luctus et ultrices',
        'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget',
        '2018-03-19T12:07:12-07:00', '2021-04-06T13:09:57-07:00', 'true', NULL),
       ('quam. Curabitur vel', 'ipsum ac mi eleifend', '2018-03-20T13:52:09-07:00', '2020-09-26T13:51:03-07:00',
        'false', '6'),
       ('rhoncus. Nullam velit', 'neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus',
        '2019-05-16T20:54:06-07:00', '2020-08-05T00:12:03-07:00', 'false', '10'),
       ('ligula. Nullam feugiat',
        'Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus',
        '2018-01-26T09:45:59-08:00', '2021-03-27T11:27:03-07:00', 'false', '7');

--Random generirana međunarodna događanja
INSERT INTO "medunarodni_dogadaj" (naziv_medunarodni_dogadaj, opis_medunarodni_dogadaj, pocetak_medunarodni_dogadaj,
                                   zavrsetak_medunarodni_dogadaj, vrsta_medunarodni_dogadaj, kapacitet, cijena)
VALUES ('sed turpis nec', 'mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum',
        '2018-06-02T10:03:22-07:00', '2019-08-28T16:59:08-07:00', 'OPERACIJSKI_DOGADAJ', 66, 249),
       ('tempus, lorem fringilla', 'nec orci.', '2019-03-13T12:13:53-07:00', '2019-10-07T12:24:15-07:00',
        'OPERACIJSKI_DOGADAJ', 75, 139),
       ('aliquet nec, imperdiet', 'mi. Aliquam gravida mauris ut mi. Duis risus', '2018-05-13T06:56:50-07:00',
        '2020-11-29T09:44:20-08:00', 'RAZMJENA', 12, 49),
       ('cursus in, hendrerit',
        'id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis,',
        '2016-11-18T18:30:52-08:00', '2021-02-14T07:06:59-08:00', 'MOTIVACIJSKI_VIKEND', 67, 133),
       ('mauris elit, dictum', 'sed orci lobortis augue scelerisque', '2018-09-28T15:19:31-07:00',
        '2019-08-21T16:40:17-07:00', 'RADIONICA', 67, 188),
       ('orci sem eget',
        'arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.',
        '2019-01-13T20:17:23-08:00', '2021-03-12T19:32:40-08:00', 'OPERACIJSKI_DOGADAJ', 64, 59),
       ('nonummy ut, molestie',
        'mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor',
        '2016-12-21T17:31:56-08:00', '2020-12-14T12:15:43-08:00', 'MOTIVACIJSKI_VIKEND', 19, 102),
       ('Mauris vestibulum, neque',
        'pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra',
        '2018-12-01T16:35:37-08:00', '2019-08-30T08:43:50-07:00', 'OPERACIJSKI_DOGADAJ', 26, 106),
       ('Curabitur massa. Vestibulum', 'dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit,',
        '2019-04-18T02:25:07-07:00', '2021-05-08T10:13:17-07:00', 'MOTIVACIJSKI_VIKEND', 19, 73),
       ('litora torquent per', 'ultrices, mauris ipsum', '2015-08-19T05:09:46-07:00', '2019-07-15T02:28:38-07:00',
        'NAPREDNA_RADIONICA', 69, 166),
       ('pharetra sed, hendrerit', 'eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing',
        '2017-10-13T16:22:50-07:00', '2019-07-06T07:35:10-07:00', 'OPERACIJSKI_DOGADAJ', 68, 161),
       ('Vivamus non lorem',
        'ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel',
        '2016-06-27T07:58:32-07:00', '2021-02-14T06:24:41-08:00', 'NAPREDNA_RADIONICA', 37, 51),
       ('risus quis diam',
        'sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis',
        '2016-06-06T11:52:26-07:00', '2020-12-06T12:12:17-08:00', 'NAPREDNA_RADIONICA', 13, 120),
       ('feugiat nec, diam.', 'at pretium aliquet, metus urna convallis erat, eget tincidunt',
        '2015-12-07T09:32:06-08:00', '2019-11-19T04:34:19-08:00', 'RADIONICA', 72, 155),
       ('Pellentesque habitant morbi',
        'dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in',
        '2015-03-09T11:55:50-07:00', '2021-01-12T09:00:25-08:00', 'RAZMJENA', 19, 133),
       ('ullamcorper. Duis at',
        'ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim',
        '2018-06-09T15:23:33-07:00', '2020-05-20T08:34:06-07:00', 'MOTIVACIJSKI_VIKEND', 10, 166),
       ('in faucibus orci', 'feugiat placerat velit. Quisque varius. Nam', '2015-07-21T05:10:53-07:00',
        '2019-08-24T23:50:13-07:00', 'RADIONICA', 28, 77),
       ('Cras dolor dolor,',
        'non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.',
        '2016-08-30T02:19:56-07:00', '2021-05-01T22:35:10-07:00', 'OPERACIJSKI_DOGADAJ', 49, 210),
       ('Praesent luctus. Curabitur', 'massa. Suspendisse eleifend. Cras sed', '2016-09-16T13:33:28-07:00',
        '2019-12-08T07:51:26-08:00', 'RADIONICA', 73, 199),
       ('non quam. Pellentesque',
        'Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,',
        '2016-04-14T05:51:41-07:00', '2020-01-02T23:35:39-08:00', 'OPERACIJSKI_DOGADAJ', 97, 240),
       ('nec, leo. Morbi', 'senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus.',
        '2017-04-27T21:15:57-07:00', '2021-02-26T21:17:45-08:00', 'OPERACIJSKI_DOGADAJ', 28, 58),
       ('pretium et, rutrum', 'in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non',
        '2016-08-12T18:25:37-07:00', '2019-06-05T07:04:39-07:00', 'RADIONICA', 93, 141),
       ('adipiscing ligula. Aenean',
        'magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non',
        '2018-09-18T04:28:09-07:00', '2020-04-24T13:55:36-07:00', 'RAZMJENA', 46, 221),
       ('dui. Cras pellentesque.', 'montes, nascetur ridiculus mus. Donec dignissim magna a',
        '2018-01-27T18:30:12-08:00', '2020-12-31T09:46:40-08:00', 'RAZMJENA', 37, 173),
       ('ipsum. Curabitur consequat,', 'posuere, enim nisl elementum', '2016-11-11T13:18:29-08:00',
        '2021-04-19T10:40:49-07:00', 'RADIONICA', 82, 215),
       ('porttitor vulputate, posuere', 'magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla',
        '2017-03-20T18:35:11-07:00', '2019-09-29T09:28:32-07:00', 'NAPREDNA_RADIONICA', 92, 154),
       ('ultricies dignissim lacus.',
        'metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non',
        '2017-07-05T20:11:47-07:00', '2020-03-31T10:19:31-07:00', 'OPERACIJSKI_DOGADAJ', 31, 169),
       ('Nunc sollicitudin commodo',
        'interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy',
        '2015-07-18T23:04:29-07:00', '2020-01-29T07:55:33-08:00', 'OPERACIJSKI_DOGADAJ', 24, 78),
       ('volutpat. Nulla dignissim.', 'gravida sagittis. Duis gravida. Praesent eu', '2019-01-25T13:09:45-08:00',
        '2021-04-06T14:07:01-07:00', 'MOTIVACIJSKI_VIKEND', 88, 197),
       ('augue id ante', 'egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate',
        '2017-03-31T14:03:03-07:00', '2020-04-11T06:55:06-07:00', 'RAZMJENA', 84, 79),
       ('mi, ac mattis', 'mi tempor lorem, eget mollis lectus pede et risus. Quisque', '2017-05-10T15:26:03-07:00',
        '2021-05-12T08:38:27-07:00', 'OPERACIJSKI_DOGADAJ', 67, 203),
       ('tristique neque venenatis', 'feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper',
        '2017-04-03T18:59:36-07:00', '2020-10-19T03:35:44-07:00', 'RAZMJENA', 25, 4),
       ('lectus, a sollicitudin', 'ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et',
        '2015-11-20T04:20:33-08:00', '2021-02-26T18:22:06-08:00', 'NAPREDNA_RADIONICA', 52, 247),
       ('congue turpis. In', 'eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat.',
        '2016-02-01T18:37:07-08:00', '2019-12-22T08:15:29-08:00', 'RAZMJENA', 51, 236),
       ('aliquet molestie tellus.', 'odio a purus. Duis elementum, dui quis', '2018-04-24T17:54:14-07:00',
        '2020-02-16T07:45:26-08:00', 'OPERACIJSKI_DOGADAJ', 43, 60),
       ('eu dolor egestas',
        'quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a',
        '2018-12-29T03:00:43-08:00', '2020-06-05T08:31:32-07:00', 'NAPREDNA_RADIONICA', 83, 206),
       ('non, lacinia at,', 'est tempor bibendum. Donec felis', '2015-11-10T09:43:04-08:00',
        '2019-12-11T19:32:14-08:00', 'MOTIVACIJSKI_VIKEND', 87, 112),
       ('mi. Aliquam gravida', 'nec enim. Nunc ut erat. Sed nunc est,', '2017-01-12T20:17:02-08:00',
        '2019-11-22T06:59:18-08:00', 'RADIONICA', 17, 64),
       ('magna, malesuada vel,', 'ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare',
        '2018-03-23T03:35:47-07:00', '2019-05-16T16:15:47-07:00', 'OPERACIJSKI_DOGADAJ', 37, 92),
       ('luctus aliquet odio.',
        'eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing',
        '2017-11-29T18:33:04-08:00', '2020-04-20T12:44:31-07:00', 'MOTIVACIJSKI_VIKEND', 76, 232),
       ('dictum augue malesuada', 'Sed id risus quis diam luctus lobortis. Class aptent taciti',
        '2018-06-15T05:16:55-07:00', '2019-12-12T10:53:58-08:00', 'NAPREDNA_RADIONICA', 98, 64),
       ('dictum augue malesuada', 'augue scelerisque mollis. Phasellus libero mauris, aliquam',
        '2016-06-30T11:34:10-07:00', '2020-02-05T13:26:24-08:00', 'OPERACIJSKI_DOGADAJ', 79, 73),
       ('egestas rhoncus. Proin',
        'nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede',
        '2016-10-07T00:23:20-07:00', '2019-05-26T18:46:28-07:00', 'OPERACIJSKI_DOGADAJ', 92, 8),
       ('ridiculus mus. Proin', 'magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris',
        '2018-01-16T22:27:40-08:00', '2020-12-27T21:34:42-08:00', 'OPERACIJSKI_DOGADAJ', 94, 50),
       ('id, blandit at,', 'convallis ligula. Donec luctus aliquet odio. Etiam ligula', '2015-02-21T13:28:49-08:00',
        '2020-12-19T09:06:03-08:00', 'NAPREDNA_RADIONICA', 50, 125),
       ('hendrerit consectetuer, cursus', 'felis. Donec tempor, est', '2017-09-05T13:53:34-07:00',
        '2019-08-05T04:49:15-07:00', 'MOTIVACIJSKI_VIKEND', 42, 140),
       ('risus odio, auctor', 'quis turpis vitae purus gravida', '2018-01-09T02:03:01-08:00',
        '2020-07-01T03:00:58-07:00', 'RADIONICA', 54, 2),
       ('ac mattis velit',
        'at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras',
        '2015-01-04T05:50:54-08:00', '2020-08-10T06:13:50-07:00', 'RADIONICA', 16, 152),
       ('placerat, orci lacus',
        'Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget',
        '2017-11-16T22:41:26-08:00', '2021-04-07T04:36:44-07:00', 'NAPREDNA_RADIONICA', 47, 53),
       ('fringilla. Donec feugiat', 'vel arcu. Curabitur ut odio vel est', '2016-06-28T05:36:05-07:00',
        '2021-03-19T08:47:49-07:00', 'OPERACIJSKI_DOGADAJ', 72, 132);
INSERT INTO "medunarodni_dogadaj" (naziv_medunarodni_dogadaj, opis_medunarodni_dogadaj, pocetak_medunarodni_dogadaj,
                                   zavrsetak_medunarodni_dogadaj, vrsta_medunarodni_dogadaj, kapacitet, cijena)
VALUES ('gravida nunc sed',
        'venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem',
        '2016-09-06T22:33:42-07:00', '2020-02-19T10:24:08-08:00', 'OPERACIJSKI_DOGADAJ', 70, 11),
       ('tempor arcu. Vestibulum', 'Curabitur egestas nunc sed libero. Proin sed turpis nec',
        '2018-12-27T17:54:16-08:00', '2019-05-06T07:29:07-07:00', 'OPERACIJSKI_DOGADAJ', 19, 76),
       ('metus vitae velit', 'leo. Morbi neque tellus, imperdiet non,', '2018-01-03T17:49:02-08:00',
        '2020-01-05T03:09:54-08:00', 'NAPREDNA_RADIONICA', 94, 51),
       ('Nullam feugiat placerat',
        'consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae',
        '2019-03-05T23:41:10-08:00', '2019-09-01T15:29:29-07:00', 'RADIONICA', 70, 27),
       ('sem semper erat,', 'Fusce dolor quam, elementum', '2017-08-13T21:09:20-07:00', '2020-11-30T14:46:18-08:00',
        'NAPREDNA_RADIONICA', 29, 192),
       ('Nullam ut nisi', 'dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus',
        '2018-03-18T13:23:28-07:00', '2020-06-09T10:47:09-07:00', 'RADIONICA', 29, 250),
       ('mollis. Duis sit',
        'aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin',
        '2018-11-08T01:43:54-08:00', '2019-11-12T15:59:42-08:00', 'NAPREDNA_RADIONICA', 74, 204),
       ('diam nunc, ullamcorper', 'Quisque ac libero nec', '2017-12-02T23:52:00-08:00', '2020-07-29T16:34:03-07:00',
        'OPERACIJSKI_DOGADAJ', 53, 222),
       ('Mauris vestibulum, neque', 'dignissim pharetra.', '2017-07-16T09:52:48-07:00', '2019-12-21T13:13:53-08:00',
        'RAZMJENA', 55, 236),
       ('nisi sem semper',
        'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,',
        '2015-04-18T04:29:46-07:00', '2021-01-07T17:26:16-08:00', 'OPERACIJSKI_DOGADAJ', 88, 224),
       ('nec, diam. Duis', 'lectus pede et', '2018-06-26T01:00:21-07:00', '2019-10-21T14:15:32-07:00',
        'MOTIVACIJSKI_VIKEND', 95, 104),
       ('aliquet, sem ut',
        'consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non,',
        '2015-02-19T07:52:42-08:00', '2019-08-08T00:16:31-07:00', 'RADIONICA', 88, 163),
       ('interdum feugiat. Sed', 'venenatis a, magna. Lorem ipsum dolor sit amet,', '2017-08-10T17:21:35-07:00',
        '2020-03-06T09:34:40-08:00', 'OPERACIJSKI_DOGADAJ', 51, 88),
       ('metus. Aliquam erat', 'mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla',
        '2016-07-17T14:17:57-07:00', '2020-04-05T06:58:31-07:00', 'OPERACIJSKI_DOGADAJ', 97, 202),
       ('sed, sapien. Nunc',
        'Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras',
        '2019-03-23T08:50:16-07:00', '2021-01-20T10:04:22-08:00', 'MOTIVACIJSKI_VIKEND', 90, 162),
       ('odio sagittis semper.',
        'justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet,',
        '2019-04-24T10:15:22-07:00', '2020-02-29T11:04:25-08:00', 'MOTIVACIJSKI_VIKEND', 90, 111),
       ('neque. Morbi quis',
        'nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin',
        '2017-07-31T10:12:29-07:00', '2019-06-12T03:50:28-07:00', 'NAPREDNA_RADIONICA', 39, 22),
       ('amet, consectetuer adipiscing', 'Sed neque. Sed', '2019-01-10T03:54:00-08:00', '2020-08-09T06:46:49-07:00',
        'OPERACIJSKI_DOGADAJ', 69, 10),
       ('Maecenas malesuada fringilla',
        'enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo,',
        '2016-07-24T13:06:52-07:00', '2019-11-20T09:09:56-08:00', 'MOTIVACIJSKI_VIKEND', 55, 100),
       ('Sed malesuada augue',
        'id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam',
        '2019-01-14T01:36:54-08:00', '2020-11-03T16:45:39-08:00', 'RADIONICA', 35, 102),
       ('ultrices posuere cubilia', 'vitae mauris sit amet lorem semper', '2015-02-22T04:39:02-08:00',
        '2020-01-16T05:39:29-08:00', 'MOTIVACIJSKI_VIKEND', 42, 49),
       ('in consectetuer ipsum', 'eget laoreet posuere, enim nisl elementum purus, accumsan',
        '2016-01-21T16:17:43-08:00', '2020-02-06T00:51:09-08:00', 'NAPREDNA_RADIONICA', 45, 188),
       ('et, magna. Praesent', 'elit. Curabitur', '2015-12-02T04:44:40-08:00', '2021-04-17T17:19:27-07:00', 'RADIONICA',
        86, 77),
       ('et, rutrum non,',
        'sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida',
        '2017-05-12T10:46:53-07:00', '2019-08-15T22:18:43-07:00', 'MOTIVACIJSKI_VIKEND', 61, 74),
       ('laoreet ipsum. Curabitur', 'mauris id sapien. Cras dolor dolor, tempus non, lacinia at,',
        '2018-06-01T23:21:35-07:00', '2020-11-21T01:55:47-08:00', 'RADIONICA', 63, 242),
       ('consequat purus. Maecenas',
        'non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
        '2018-04-19T18:34:01-07:00', '2020-01-14T16:08:22-08:00', 'MOTIVACIJSKI_VIKEND', 38, 213),
       ('imperdiet, erat nonummy', 'Duis a mi fringilla mi', '2016-04-15T03:29:03-07:00', '2021-01-18T19:47:01-08:00',
        'RADIONICA', 61, 228),
       ('sollicitudin adipiscing ligula.', 'enim commodo hendrerit. Donec porttitor tellus non magna.',
        '2015-04-18T20:59:54-07:00', '2020-11-02T16:59:02-08:00', 'NAPREDNA_RADIONICA', 98, 212),
       ('Nulla facilisi. Sed', 'molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare',
        '2018-03-24T06:46:28-07:00', '2019-07-07T06:11:28-07:00', 'RAZMJENA', 27, 190),
       ('et malesuada fames', 'est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem',
        '2015-06-27T18:13:50-07:00', '2020-11-04T18:26:34-08:00', 'OPERACIJSKI_DOGADAJ', 71, 80),
       ('aptent taciti sociosqu', 'vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed',
        '2015-12-27T12:02:14-08:00', '2020-04-07T00:09:00-07:00', 'OPERACIJSKI_DOGADAJ', 35, 88),
       ('Donec tempus, lorem',
        'ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget',
        '2016-09-30T05:08:41-07:00', '2020-11-15T17:53:52-08:00', 'RADIONICA', 70, 124),
       ('lacinia orci, consectetuer',
        'tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante',
        '2015-07-22T21:07:19-07:00', '2021-03-30T23:04:26-07:00', 'MOTIVACIJSKI_VIKEND', 46, 33),
       ('sagittis. Duis gravida.', 'tellus eu', '2018-04-04T17:33:28-07:00', '2019-10-07T05:32:07-07:00',
        'MOTIVACIJSKI_VIKEND', 58, 93),
       ('nec, diam. Duis', 'dapibus ligula. Aliquam', '2018-04-10T10:00:56-07:00', '2019-06-30T19:06:49-07:00',
        'OPERACIJSKI_DOGADAJ', 42, 205),
       ('mauris elit, dictum',
        'senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus.',
        '2015-02-23T02:32:46-08:00', '2021-01-27T09:14:32-08:00', 'RAZMJENA', 56, 147),
       ('facilisis, magna tellus', 'a, magna. Lorem ipsum dolor sit', '2017-12-05T09:31:56-08:00',
        '2020-06-05T05:43:18-07:00', 'RADIONICA', 43, 217),
       ('tincidunt adipiscing. Mauris',
        'adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui nec',
        '2018-10-29T08:46:34-07:00', '2019-05-18T11:25:34-07:00', 'RAZMJENA', 60, 141),
       ('ut dolor dapibus', 'montes, nascetur ridiculus', '2015-06-22T18:58:24-07:00', '2020-04-23T06:23:36-07:00',
        'RADIONICA', 62, 212),
       ('in, tempus eu,', 'Mauris magna. Duis dignissim tempor', '2016-03-17T08:34:52-07:00',
        '2020-07-24T07:33:49-07:00', 'NAPREDNA_RADIONICA', 56, 109),
       ('ornare placerat, orci', 'Morbi sit amet massa. Quisque porttitor eros nec', '2018-07-17T10:35:37-07:00',
        '2021-03-22T09:16:27-07:00', 'NAPREDNA_RADIONICA', 74, 118),
       ('Cum sociis natoque', 'justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam',
        '2019-01-16T18:21:27-08:00', '2019-10-14T01:14:52-07:00', 'NAPREDNA_RADIONICA', 29, 196),
       ('pede. Cras vulputate', 'magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.',
        '2018-04-20T19:43:26-07:00', '2019-05-18T08:08:58-07:00', 'RADIONICA', 86, 140),
       ('aliquet vel, vulputate', 'urna. Ut tincidunt vehicula risus. Nulla eget metus', '2018-06-03T18:19:16-07:00',
        '2021-02-08T04:35:42-08:00', 'NAPREDNA_RADIONICA', 99, 92),
       ('ut quam vel',
        'ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a,',
        '2016-08-27T10:39:25-07:00', '2019-12-16T00:26:47-08:00', 'RAZMJENA', 36, 226),
       ('sodales at, velit.', 'mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed',
        '2019-04-06T01:10:54-07:00', '2020-05-30T09:58:35-07:00', 'RADIONICA', 19, 41),
       ('eu metus. In', 'aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus.',
        '2018-08-16T01:49:44-07:00', '2021-02-15T18:18:30-08:00', 'MOTIVACIJSKI_VIKEND', 55, 177),
       ('magna. Duis dignissim', 'amet, consectetuer adipiscing elit. Curabitur sed tortor.',
        '2016-07-16T00:33:21-07:00', '2019-09-09T00:27:19-07:00', 'NAPREDNA_RADIONICA', 40, 201),
       ('Integer id magna', 'vel sapien imperdiet ornare. In faucibus.', '2016-04-28T07:29:27-07:00',
        '2019-10-23T08:38:29-07:00', 'NAPREDNA_RADIONICA', 43, 176),
       ('eu turpis. Nulla',
        'magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh',
        '2018-03-23T23:53:23-07:00', '2019-08-28T08:43:45-07:00', 'MOTIVACIJSKI_VIKEND', 13, 43);
UPDATE medunarodni_dogadaj
SET cijena = 0
WHERE vrsta_medunarodni_dogadaj IN ('RADIONICA', 'NAPREDNA_RADIONICA', 'OPERACIJSKI_DOGADAJ');

--Sve drzave Europe
INSERT INTO "drzava" (naziv_drzava)
VALUES ('Albania'),
       ('Andorra'),
       ('Armenia'),
       ('Austria'),
       ('Azerbaijan'),
       ('Belarus'),
       ('Belgium'),
       ('Bosnia and Herzegovina'),
       ('Bulgaria'),
       ('Croatia'),
       ('Cyprus'),
       ('Czechia'),
       ('Denmark'),
       ('Estonia'),
       ('Finland'),
       ('France'),
       ('Georgia'),
       ('Germany'),
       ('Greece'),
       ('Hungary'),
       ('Iceland'),
       ('Ireland'),
       ('Italy'),
       ('Kazakhstan'),
       ('Kosovo'),
       ('Latvia'),
       ('Liechtenstein'),
       ('Lithuania'),
       ('Luxembourg'),
       ('Malta'),
       ('Moldova'),
       ('Monaco'),
       ('Montenegro'),
       ('Netherlands'),
       ('North Macedonia'),
       ('Norway'),
       ('Poland'),
       ('Portugal'),
       ('Romania'),
       ('Russia'),
       ('San Marino'),
       ('Serbia'),
       ('Slovakia'),
       ('Slovenia'),
       ('Spain'),
       ('Sweden'),
       ('Switzerland'),
       ('Turkey'),
       ('Ukraine'),
       ('United Kingdom');

--Random generirani lokalni ogranci
INSERT INTO "lokalni_ogranak" (naziv_lokalni_ogranak, opis_lokalni_ogranak, id_drzava)
VALUES ('Knittelfeld', 'metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor,', 44),
       ('Adoni', 'lorem semper auctor. Mauris vel turpis. Aliquam', 30),
       ('Pietragalla', 'auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie',
        5),
       ('Afşin', 'aliquet magna a neque. Nullam ut nisi a odio semper cursus.', 29),
       ('Palma de Mallorca',
        'cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin',
        18),
       ('Morolo', 'sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum.', 26),
       ('Alix', 'non lorem vitae odio sagittis', 44),
       ('Ramagundam',
        'nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam',
        18),
       ('Price', 'Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem', 25),
       ('Sukkur',
        'ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem',
        5),
       ('Lithgow', 'non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed', 14),
       ('Steenhuffel', 'diam nunc, ullamcorper eu, euismod', 47),
       ('María Pinto',
        'adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare',
        35),
       ('Melville', 'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget', 25),
       ('Newcastle-upon-Tyne',
        'ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non',
        32),
       ('Khanpur', 'Nullam feugiat placerat velit.', 23),
       ('Chancay',
        'ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum',
        9),
       ('La Matapadia', 'elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit',
        43),
       ('Kilwinning',
        'nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc',
        22),
       ('Oyace', 'ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis', 6),
       ('Łomża',
        'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis',
        45),
       ('Courbevoie',
        'sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim.', 12),
       ('Cerchio', 'ut ipsum ac mi eleifend egestas. Sed pharetra, felis', 5),
       ('Tando Muhammad Khan',
        'enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo,',
        22),
       ('Prenzlau', 'amet nulla. Donec non justo. Proin', 30),
       ('Aurangabad', 'Mauris quis turpis vitae purus gravida sagittis. Duis', 36),
       ('Breton',
        'tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim,',
        12),
       ('Montone', 'eu, placerat eget, venenatis a, magna. Lorem', 29),
       ('Icheon', 'lacus. Ut nec urna et arcu imperdiet', 36),
       ('Robechies', 'in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet', 26),
       ('Sint-Denijs-Westrem', 'et pede. Nunc', 48),
       ('Oevel', 'non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin', 24),
       ('Neerglabbeek',
        'erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede.',
        22),
       ('Wambeek', 'pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit', 36),
       ('Montpellier', 'nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet,', 38),
       ('Portree', 'a neque. Nullam ut nisi a', 1),
       ('Pettoranello del Molise', 'mi eleifend egestas. Sed pharetra,', 13),
       ('Fresia', 'Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum', 47),
       ('Redcliffe', 'aliquam, enim nec tempus scelerisque,', 11),
       ('Blevio', 'cursus et, magna. Praesent interdum ligula', 6),
       ('Beaumont', 'Nunc', 17),
       ('Buguma', 'convallis, ante lectus', 5),
       ('Cote-Saint-Luc',
        'eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam',
        13),
       ('Calbuco', 'ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac,',
        49),
       ('Kırıkhan', 'tellus. Aenean egestas hendrerit neque. In ornare sagittis felis.', 32),
       ('Pemberton', 'diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing', 47),
       ('Bedford', 'mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla', 11),
       ('Aurora', 'ut eros non enim commodo hendrerit. Donec porttitor', 11),
       ('Kerkrade', 'mollis nec, cursus a, enim. Suspendisse', 31),
       ('Houston', 'lorem tristique', 9),
       ('Castelmezzano', 'ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante', 7),
       ('Todi', 'blandit enim consequat purus.', 21),
       ('Perugia', 'sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam', 12),
       ('Liverpool',
        'placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla',
        28),
       ('Houtain-le-Val', 'Donec sollicitudin adipiscing ligula. Aenean', 37),
       ('Raiganj', 'ipsum nunc id enim. Curabitur massa. Vestibulum', 11),
       ('Bressoux',
        'lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris,',
        9),
       ('Starachowice', 'ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget', 30),
       ('San Diego',
        'arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus', 17),
       ('Vishakhapatnam', 'lobortis quis,', 49),
       ('Annone di Brianza', 'pede, ultrices a,', 29),
       ('East Jakarta',
        'nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor',
        22),
       ('Coatbridge', 'luctus sit amet, faucibus ut, nulla.', 26),
       ('Great Falls', 'velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer', 1),
       ('Meißen', 'amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', 47),
       ('Calmar', 'pede et risus. Quisque libero', 28),
       ('Valuyki', 'odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae', 14),
       ('Bekegem',
        'orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel',
        48),
       ('Feira de Santana', 'Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem', 23),
       ('Baltasound', 'accumsan convallis, ante lectus convallis est,', 43),
       ('Tunja',
        'tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu',
        13),
       ('San Martino in Pensilis',
        'velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis',
        6),
       ('Champdani',
        'Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque',
        3),
       ('Bard', 'augue eu tellus. Phasellus elit pede, malesuada vel,', 7),
       ('Peumo', 'massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut', 4),
       ('Metairie', 'lobortis ultrices. Vivamus rhoncus. Donec', 3),
       ('Poppel',
        'nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo',
        38),
       ('Stargard Szczeciński', 'dictum', 45),
       ('Hexham', 'convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit', 8),
       ('Los Álamos', 'Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat', 23),
       ('Stade', 'convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada', 49),
       ('Lamont', 'hendrerit. Donec porttitor', 28),
       ('Shipshaw', 'quis accumsan convallis, ante lectus convallis est, vitae', 20),
       ('Fresia Nuova', 'nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique', 1),
       ('West Jakarta',
        'Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget', 47),
       ('Fontanafredda', 'non, egestas a, dui. Cras pellentesque. Sed', 45),
       ('Nuraminis',
        'magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim', 29),
       ('Villafalletto', 'eget lacus. Mauris non dui nec urna suscipit nonummy.', 18),
       ('Guadalupe',
        'Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,',
        10),
       ('Herfelingen', 'mi felis, adipiscing fringilla, porttitor', 24),
       ('Lethbridge',
        'libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a', 4),
       ('Malegaon',
        'non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing',
        17),
       ('Yellowhead County', 'pretium neque. Morbi quis urna. Nunc quis', 37),
       ('Zignago',
        'pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames',
        4),
       ('Athens',
        'enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at,',
        6),
       ('Dubna', 'leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae', 4),
       ('Glabais',
        'montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu',
        1),
       ('Santo Domingo', 'nonummy ut, molestie in, tempus eu, ligula. Aenean euismod', 15),
       ('Hope', 'natoque penatibus et magnis dis parturient', 43),
       ('Istanbul', 'arcu', 25);

--random generirani računi
INSERT INTO "racun" (vrsta_racun, iznos_racun, vrijeme_racun, napomena)
VALUES ('RASHOD', '074540.50', '2017-06-13T13:56:51-07:00', 'vel lectus. Cum sociis'),
       ('PRIHOD', '990002.48', '2018-06-04T04:21:23-07:00',
        'dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus'),
       ('PRIHOD', '453184.99', '2019-02-22T05:39:28-08:00', 'lectus. Nullam suscipit, est ac'),
       ('PRIHOD', '097629.75', '2017-03-27T00:45:36-07:00', 'magnis dis parturient montes,'),
       ('RASHOD', '284843.64', '2018-10-30T10:45:01-07:00', 'ipsum primis in faucibus orci luctus et ultrices'),
       ('PRIHOD', '035738.98', '2020-01-20T09:04:03-08:00', 'Quisque'),
       ('RASHOD', '551580.96', '2017-09-04T17:36:50-07:00',
        'tempor erat neque non quam. Pellentesque habitant morbi tristique senectus'),
       ('PRIHOD', '033459.14', '2019-09-14T20:21:32-07:00', 'Nulla facilisi. Sed neque.'),
       ('PRIHOD', '441340.27', '2019-08-21T04:41:58-07:00', 'egestas hendrerit neque. In ornare sagittis'),
       ('RASHOD', '554288.68', '2017-04-28T20:53:57-07:00', 'magnis'),
       ('RASHOD', '398646.21', '2019-09-23T18:45:41-07:00', 'ridiculus mus. Donec dignissim magna a tortor.'),
       ('RASHOD', '310013.43', '2019-07-26T17:16:33-07:00', 'eu'),
       ('RASHOD', '646975.70', '2018-05-15T11:02:58-07:00', 'Integer id magna et'),
       ('PRIHOD', '037769.88', '2018-08-29T17:57:09-07:00', 'feugiat metus sit amet ante. Vivamus'),
       ('RASHOD', '049207.04', '2020-02-26T07:34:42-08:00', 'magna tellus faucibus leo, in lobortis tellus'),
       ('PRIHOD', '857774.36', '2019-05-28T14:43:55-07:00', 'nisl sem, consequat'),
       ('PRIHOD', '033984.99', '2019-09-18T08:52:43-07:00', 'euismod enim. Etiam gravida molestie arcu. Sed eu'),
       ('RASHOD', '708648.25', '2019-01-09T11:15:05-08:00', 'Sed diam lorem, auctor quis, tristique'),
       ('RASHOD', '697299.33', '2018-10-16T06:31:17-07:00', 'vulputate, nisi sem semper'),
       ('RASHOD', '736582.85', '2020-01-14T06:11:50-08:00',
        'pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien,'),
       ('PRIHOD', '559553.66', '2020-01-07T10:35:48-08:00', 'nisi. Aenean eget metus. In nec orci. Donec'),
       ('PRIHOD', '658236.91', '2018-10-10T03:29:56-07:00',
        'vulputate, nisi sem semper erat, in consectetuer ipsum nunc'),
       ('RASHOD', '158131.17', '2017-02-02T15:03:38-08:00',
        'lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse'),
       ('RASHOD', '376312.99', '2019-12-18T06:10:00-08:00', 'orci tincidunt adipiscing. Mauris'),
       ('PRIHOD', '253184.43', '2018-01-23T04:05:05-08:00', 'enim commodo hendrerit. Donec porttitor tellus non'),
       ('PRIHOD', '630060.60', '2017-12-23T05:52:04-08:00', 'egestas. Duis ac arcu.'),
       ('PRIHOD', '428710.68', '2020-02-22T16:31:20-08:00', 'ac arcu. Nunc mauris. Morbi non'),
       ('RASHOD', '403312.16', '2017-05-16T02:53:10-07:00',
        'in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu'),
       ('PRIHOD', '165653.82', '2020-03-28T15:56:17-07:00', 'cursus. Integer mollis. Integer tincidunt'),
       ('RASHOD', '581130.49', '2019-01-23T20:41:55-08:00',
        'egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed'),
       ('RASHOD', '001282.89', '2018-10-01T18:43:35-07:00',
        'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur'),
       ('RASHOD', '887739.95', '2017-05-14T08:18:13-07:00', 'Cras vulputate'),
       ('RASHOD', '324500.23', '2019-09-25T06:29:04-07:00', 'nec orci. Donec nibh. Quisque nonummy ipsum non arcu.'),
       ('PRIHOD', '838310.08', '2017-05-08T13:08:23-07:00',
        'Quisque fringilla euismod enim. Etiam gravida molestie arcu.'),
       ('RASHOD', '637400.79', '2019-06-03T21:34:46-07:00', 'lobortis augue scelerisque mollis. Phasellus'),
       ('PRIHOD', '638295.11', '2019-02-06T19:56:12-08:00', 'sociis natoque penatibus'),
       ('RASHOD', '452104.53', '2017-10-30T02:03:03-07:00', 'nec tempus mauris erat eget ipsum. Suspendisse sagittis.'),
       ('RASHOD', '886098.33', '2018-05-29T02:01:42-07:00', 'augue. Sed molestie. Sed id risus quis diam'),
       ('PRIHOD', '556456.93', '2019-04-26T12:30:05-07:00', 'elementum at, egestas a,'),
       ('RASHOD', '198344.42', '2019-11-23T23:53:04-08:00', 'Nulla aliquet. Proin velit. Sed'),
       ('RASHOD', '904923.49', '2020-01-06T03:30:34-08:00', 'fermentum arcu. Vestibulum ante ipsum primis in faucibus'),
       ('RASHOD', '882633.16', '2017-05-07T18:20:36-07:00', 'pede. Nunc sed orci lobortis augue'),
       ('PRIHOD', '235304.43', '2019-10-31T01:42:57-07:00', 'in, dolor. Fusce feugiat. Lorem ipsum dolor'),
       ('RASHOD', '869094.62', '2017-09-23T04:54:26-07:00', 'turpis. Aliquam adipiscing lobortis risus. In mi'),
       ('PRIHOD', '904551.56', '2018-05-07T11:05:13-07:00', 'mi. Duis risus odio, auctor vitae,'),
       ('PRIHOD', '068780.09', '2019-07-20T22:55:28-07:00', 'Proin vel'),
       ('PRIHOD', '880443.37', '2019-09-12T01:25:40-07:00', 'massa. Quisque porttitor'),
       ('PRIHOD', '487865.24', '2018-07-03T05:36:56-07:00', 'eget lacus. Mauris non'),
       ('RASHOD', '555553.03', '2017-11-12T10:30:54-08:00', 'pede. Nunc sed orci lobortis augue'),
       ('RASHOD', '873627.32', '2017-06-17T20:35:57-07:00',
        'ornare, elit elit fermentum risus, at fringilla purus mauris a'),
       ('PRIHOD', '634339.42', '2017-12-02T04:54:08-08:00', 'mauris sagittis'),
       ('PRIHOD', '971598.97', '2018-03-05T00:06:45-08:00',
        'quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.'),
       ('RASHOD', '461221.08', '2017-12-13T21:57:17-08:00', 'a sollicitudin'),
       ('RASHOD', '536607.90', '2017-09-30T14:09:27-07:00', 'felis'),
       ('PRIHOD', '464629.72', '2017-09-02T16:35:10-07:00', 'Ut nec urna et arcu imperdiet ullamcorper. Duis'),
       ('RASHOD', '397895.08', '2017-04-04T05:28:47-07:00', 'amet risus. Donec egestas. Aliquam nec enim.'),
       ('RASHOD', '426200.68', '2019-04-08T17:22:56-07:00', 'Phasellus at augue id'),
       ('PRIHOD', '633878.13', '2017-10-03T23:39:07-07:00', 'nec urna suscipit nonummy. Fusce fermentum'),
       ('RASHOD', '530531.38', '2017-05-02T14:36:04-07:00', 'lorem vitae odio sagittis semper. Nam tempor diam'),
       ('PRIHOD', '758341.56', '2018-05-07T06:57:46-07:00', 'Aenean eget metus. In nec orci. Donec'),
       ('PRIHOD', '238626.32', '2020-03-02T23:31:00-08:00', 'tincidunt, neque vitae semper'),
       ('RASHOD', '611253.01', '2017-11-25T23:19:23-08:00', 'cubilia Curae; Donec tincidunt. Donec vitae erat vel'),
       ('RASHOD', '776534.04', '2017-06-07T14:10:42-07:00', 'sed libero. Proin sed turpis'),
       ('RASHOD', '235660.55', '2019-11-01T23:34:36-07:00', 'enim, gravida sit amet, dapibus id, blandit at, nisi.'),
       ('RASHOD', '083697.60', '2017-05-14T18:35:08-07:00', 'ac, feugiat non,'),
       ('RASHOD', '647126.16', '2019-03-02T06:51:51-08:00', 'Suspendisse commodo tincidunt nibh. Phasellus nulla.'),
       ('RASHOD', '071277.88', '2019-06-15T12:59:21-07:00', 'Morbi non sapien'),
       ('PRIHOD', '727457.01', '2018-02-02T19:31:06-08:00', 'pede blandit congue. In scelerisque scelerisque dui.'),
       ('RASHOD', '037728.31', '2017-07-21T19:24:22-07:00', 'tortor, dictum eu, placerat eget,'),
       ('PRIHOD', '212422.05', '2019-07-14T01:54:37-07:00', 'lacus. Quisque imperdiet, erat nonummy'),
       ('RASHOD', '049397.63', '2018-05-22T01:23:06-07:00', 'a, auctor non,'),
       ('PRIHOD', '583433.91', '2017-12-18T19:54:22-08:00', 'adipiscing lobortis risus.'),
       ('PRIHOD', '765908.86', '2017-02-20T20:14:23-08:00', 'Ut semper pretium neque. Morbi quis'),
       ('PRIHOD', '795712.87', '2020-03-10T11:30:17-07:00', 'ullamcorper. Duis at lacus.'),
       ('PRIHOD', '088305.84', '2020-04-27T11:05:46-07:00',
        'eleifend, nunc risus varius orci, in consequat enim diam vel'),
       ('PRIHOD', '770802.79', '2020-02-17T13:30:15-08:00', 'eu dui. Cum sociis natoque penatibus et'),
       ('PRIHOD', '746542.34', '2019-10-22T21:54:47-07:00', 'tincidunt tempus risus. Donec egestas.'),
       ('PRIHOD', '084044.63', '2018-09-28T19:33:53-07:00', 'feugiat tellus lorem'),
       ('RASHOD', '747413.84', '2018-04-25T04:37:03-07:00', 'Nunc commodo auctor velit. Aliquam'),
       ('PRIHOD', '406006.94', '2018-02-01T12:54:34-08:00', 'adipiscing'),
       ('RASHOD', '400831.51', '2019-10-24T19:34:36-07:00',
        'Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis'),
       ('RASHOD', '856062.41', '2017-10-12T19:22:13-07:00', 'turpis nec mauris blandit mattis.'),
       ('RASHOD', '301686.57', '2017-04-23T08:57:57-07:00', 'Integer tincidunt aliquam arcu.'),
       ('RASHOD', '361055.76', '2017-12-20T13:55:00-08:00', 'interdum enim non nisi. Aenean eget metus. In'),
       ('RASHOD', '281373.07', '2020-01-01T02:50:22-08:00', 'nonummy ut, molestie in, tempus eu, ligula.'),
       ('RASHOD', '718772.68', '2017-01-20T01:00:39-08:00', 'sociis natoque'),
       ('RASHOD', '863235.39', '2017-08-15T09:10:47-07:00', 'magna nec quam. Curabitur vel'),
       ('RASHOD', '225568.82', '2018-09-05T19:15:36-07:00', 'cursus a, enim. Suspendisse aliquet, sem ut cursus'),
       ('PRIHOD', '522329.19', '2017-12-14T17:33:23-08:00',
        'accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam.'),
       ('RASHOD', '506230.38', '2018-11-19T10:34:22-08:00', 'laoreet posuere, enim nisl elementum'),
       ('RASHOD', '993509.35', '2018-08-26T01:51:42-07:00', 'mollis nec, cursus a, enim. Suspendisse aliquet, sem ut'),
       ('PRIHOD', '495066.50', '2018-08-12T10:34:37-07:00', 'vitae mauris sit amet'),
       ('PRIHOD', '744511.75', '2019-05-21T14:00:47-07:00', 'Vivamus sit'),
       ('RASHOD', '515013.41', '2020-01-01T12:05:24-08:00',
        'Proin sed turpis nec mauris blandit mattis. Cras eget nisi'),
       ('PRIHOD', '879373.35', '2017-01-30T20:17:20-08:00', 'justo nec ante.'),
       ('PRIHOD', '809197.13', '2019-03-10T11:25:00-07:00', 'nibh. Aliquam ornare, libero at'),
       ('RASHOD', '920626.80', '2018-09-14T05:45:31-07:00', 'ut eros non enim commodo'),
       ('RASHOD', '265084.29', '2018-10-31T09:23:26-07:00', 'ultricies adipiscing, enim mi tempor lorem, eget'),
       ('PRIHOD', '982891.34', '2017-04-09T07:12:38-07:00', 'ornare, elit elit fermentum risus, at fringilla purus'),
       ('PRIHOD', '823487.74', '2019-08-08T00:19:08-07:00', 'non quam. Pellentesque habitant morbi tristique');

--povezivanje 40 računa na projekte i 40 računa na okupljanja
UPDATE "racun"
SET id_projekt = 43
WHERE id_racun = 1;
UPDATE "racun"
SET id_projekt = 3
WHERE id_racun = 2;
UPDATE "racun"
SET id_projekt = 21
WHERE id_racun = 3;
UPDATE "racun"
SET id_projekt = 1
WHERE id_racun = 4;
UPDATE "racun"
SET id_projekt = 44
WHERE id_racun = 5;
UPDATE "racun"
SET id_projekt = 15
WHERE id_racun = 6;
UPDATE "racun"
SET id_projekt = 10
WHERE id_racun = 7;
UPDATE "racun"
SET id_projekt = 36
WHERE id_racun = 8;
UPDATE "racun"
SET id_projekt = 24
WHERE id_racun = 9;
UPDATE "racun"
SET id_projekt = 43
WHERE id_racun = 10;
UPDATE "racun"
SET id_projekt = 29
WHERE id_racun = 11;
UPDATE "racun"
SET id_projekt = 21
WHERE id_racun = 12;
UPDATE "racun"
SET id_projekt = 14
WHERE id_racun = 13;
UPDATE "racun"
SET id_projekt = 25
WHERE id_racun = 14;
UPDATE "racun"
SET id_projekt = 49
WHERE id_racun = 15;
UPDATE "racun"
SET id_projekt = 12
WHERE id_racun = 16;
UPDATE "racun"
SET id_projekt = 34
WHERE id_racun = 17;
UPDATE "racun"
SET id_projekt = 17
WHERE id_racun = 18;
UPDATE "racun"
SET id_projekt = 13
WHERE id_racun = 19;
UPDATE "racun"
SET id_projekt = 20
WHERE id_racun = 20;
UPDATE "racun"
SET id_projekt = 50
WHERE id_racun = 21;
UPDATE "racun"
SET id_projekt = 8
WHERE id_racun = 22;
UPDATE "racun"
SET id_projekt = 14
WHERE id_racun = 23;
UPDATE "racun"
SET id_projekt = 40
WHERE id_racun = 24;
UPDATE "racun"
SET id_projekt = 47
WHERE id_racun = 25;
UPDATE "racun"
SET id_projekt = 41
WHERE id_racun = 26;
UPDATE "racun"
SET id_projekt = 8
WHERE id_racun = 27;
UPDATE "racun"
SET id_projekt = 36
WHERE id_racun = 28;
UPDATE "racun"
SET id_projekt = 6
WHERE id_racun = 29;
UPDATE "racun"
SET id_projekt = 4
WHERE id_racun = 30;
UPDATE "racun"
SET id_projekt = 32
WHERE id_racun = 31;
UPDATE "racun"
SET id_projekt = 21
WHERE id_racun = 32;
UPDATE "racun"
SET id_projekt = 3
WHERE id_racun = 33;
UPDATE "racun"
SET id_projekt = 28
WHERE id_racun = 34;
UPDATE "racun"
SET id_projekt = 39
WHERE id_racun = 35;
UPDATE "racun"
SET id_projekt = 37
WHERE id_racun = 36;
UPDATE "racun"
SET id_projekt = 11
WHERE id_racun = 37;
UPDATE "racun"
SET id_projekt = 49
WHERE id_racun = 38;
UPDATE "racun"
SET id_projekt = 2
WHERE id_racun = 39;
UPDATE "racun"
SET id_projekt = 12
WHERE id_racun = 40;
UPDATE "racun"
SET id_okupljanje = 8
WHERE id_racun = 41;
UPDATE "racun"
SET id_okupljanje = 14
WHERE id_racun = 42;
UPDATE "racun"
SET id_okupljanje = 43
WHERE id_racun = 43;
UPDATE "racun"
SET id_okupljanje = 2
WHERE id_racun = 44;
UPDATE "racun"
SET id_okupljanje = 9
WHERE id_racun = 45;
UPDATE "racun"
SET id_okupljanje = 36
WHERE id_racun = 46;
UPDATE "racun"
SET id_okupljanje = 21
WHERE id_racun = 47;
UPDATE "racun"
SET id_okupljanje = 5
WHERE id_racun = 48;
UPDATE "racun"
SET id_okupljanje = 27
WHERE id_racun = 49;
UPDATE "racun"
SET id_okupljanje = 43
WHERE id_racun = 50;
UPDATE "racun"
SET id_okupljanje = 48
WHERE id_racun = 51;
UPDATE "racun"
SET id_okupljanje = 34
WHERE id_racun = 52;
UPDATE "racun"
SET id_okupljanje = 45
WHERE id_racun = 53;
UPDATE "racun"
SET id_okupljanje = 7
WHERE id_racun = 54;
UPDATE "racun"
SET id_okupljanje = 10
WHERE id_racun = 55;
UPDATE "racun"
SET id_okupljanje = 26
WHERE id_racun = 56;
UPDATE "racun"
SET id_okupljanje = 17
WHERE id_racun = 57;
UPDATE "racun"
SET id_okupljanje = 32
WHERE id_racun = 58;
UPDATE "racun"
SET id_okupljanje = 8
WHERE id_racun = 59;
UPDATE "racun"
SET id_okupljanje = 44
WHERE id_racun = 60;
UPDATE "racun"
SET id_okupljanje = 11
WHERE id_racun = 61;
UPDATE "racun"
SET id_okupljanje = 41
WHERE id_racun = 62;
UPDATE "racun"
SET id_okupljanje = 26
WHERE id_racun = 63;
UPDATE "racun"
SET id_okupljanje = 41
WHERE id_racun = 64;
UPDATE "racun"
SET id_okupljanje = 20
WHERE id_racun = 65;
UPDATE "racun"
SET id_okupljanje = 40
WHERE id_racun = 66;
UPDATE "racun"
SET id_okupljanje = 3
WHERE id_racun = 67;
UPDATE "racun"
SET id_okupljanje = 32
WHERE id_racun = 68;
UPDATE "racun"
SET id_okupljanje = 22
WHERE id_racun = 69;
UPDATE "racun"
SET id_okupljanje = 27
WHERE id_racun = 70;
UPDATE "racun"
SET id_okupljanje = 9
WHERE id_racun = 71;
UPDATE "racun"
SET id_okupljanje = 47
WHERE id_racun = 72;
UPDATE "racun"
SET id_okupljanje = 11
WHERE id_racun = 73;
UPDATE "racun"
SET id_okupljanje = 50
WHERE id_racun = 74;
UPDATE "racun"
SET id_okupljanje = 18
WHERE id_racun = 75;
UPDATE "racun"
SET id_okupljanje = 28
WHERE id_racun = 76;
UPDATE "racun"
SET id_okupljanje = 39
WHERE id_racun = 77;
UPDATE "racun"
SET id_okupljanje = 18
WHERE id_racun = 78;
UPDATE "racun"
SET id_okupljanje = 38
WHERE id_racun = 79;
UPDATE "racun"
SET id_okupljanje = 6
WHERE id_racun = 80;

--random generiranje prisustva studenata na okupljanjima
insert into prisustvuje (id_student, id_okupljanje)
values (75, 80)
     , (70, 58)
     , (71, 15)
     , (106, 75)
     , (147, 26)
     , (49, 34)
     , (1, 70)
     , (35, 17)
     , (61, 62)
     , (122, 20)
     , (71, 65)
     , (50, 12)
     , (9, 77)
     , (143, 23)
     , (101, 85)
     , (147, 66)
     , (109, 18)
     , (35, 61)
     , (106, 27)
     , (37, 67)
     , (149, 67)
     , (42, 71)
     , (46, 13)
     , (147, 18)
     , (145, 88)
     , (70, 81)
     , (97, 63)
     , (10, 42)
     , (39, 42)
     , (36, 44)
     , (4, 33)
     , (19, 34)
     , (21, 21)
     , (66, 46)
     , (1, 52)
     , (89, 15)
     , (58, 39)
     , (32, 29)
     , (129, 57)
     , (46, 88)
     , (29, 52)
     , (130, 47)
     , (24, 23)
     , (114, 38)
     , (47, 21)
     , (81, 17)
     , (1, 59)
     , (4, 58)
     , (142, 93)
     , (136, 59)
     , (81, 88)
     , (102, 64)
     , (12, 19)
     , (28, 21)
     , (54, 35)
     , (10, 14)
     , (94, 33)
     , (28, 4)
     , (81, 73)
     , (32, 64)
     , (5, 51)
     , (59, 22)
     , (77, 47)
     , (94, 89)
     , (78, 97)
     , (41, 69)
     , (140, 43)
     , (25, 34)
     , (56, 61)
     , (141, 97)
     , (21, 61)
     , (29, 88)
     , (90, 29)
     , (13, 9)
     , (10, 61)
     , (74, 45)
     , (143, 98)
     , (95, 7)
     , (111, 69)
     , (80, 86)
     , (23, 64)
     , (139, 91)
     , (91, 27)
     , (136, 55)
     , (1, 10)
     , (49, 39)
     , (113, 31)
     , (128, 35)
     , (144, 83)
     , (58, 35)
     , (78, 13)
     , (100, 56)
     , (142, 94)
     , (113, 9)
     , (54, 59)
     , (49, 80)
     , (113, 57)
     , (108, 29)
     , (70, 7)
     , (25, 49)
     , (118, 60)
     , (35, 36)
     , (39, 30)
     , (23, 77)
     , (96, 97)
     , (5, 59)
     , (134, 3)
     , (17, 75)
     , (57, 76)
     , (125, 50)
     , (145, 79)
     , (81, 10)
     , (2, 5)
     , (102, 58)
     , (59, 88)
     , (150, 70)
     , (81, 64)
     , (87, 20)
     , (22, 48)
     , (112, 93)
     , (63, 37)
     , (3, 36)
     , (133, 67)
     , (114, 70)
     , (65, 27)
     , (2, 72)
     , (100, 52)
     , (8, 73)
     , (12, 15)
     , (14, 91)
     , (6, 31)
     , (22, 25)
     , (114, 28)
     , (115, 56)
     , (148, 79)
     , (21, 31)
     , (127, 57)
     , (9, 95)
     , (25, 77)
     , (147, 19)
     , (28, 46)
     , (63, 96)
     , (8, 57)
     , (141, 26)
     , (33, 75)
     , (113, 100)
     , (13, 42)
     , (44, 24)
     , (5, 71)
     , (36, 88)
     , (60, 97)
     , (1, 45)
     , (16, 8)
     , (2, 99)
     , (42, 80)
     , (144, 46)
     , (73, 39)
     , (35, 24)
     , (85, 39)
     , (92, 35)
     , (18, 62)
     , (100, 79)
     , (123, 15)
     , (75, 69)
     , (3, 5)
     , (53, 58)
     , (10, 73)
     , (109, 6)
     , (67, 84)
     , (16, 5)
     , (27, 87)
     , (119, 99)
     , (84, 21)
     , (85, 69)
     , (57, 3)
     , (101, 70)
     , (33, 18)
     , (5, 96)
     , (2, 96)
     , (50, 27)
     , (75, 46)
     , (51, 60)
     , (85, 9)
     , (5, 45)
     , (115, 50)
     , (78, 8)
     , (74, 31)
     , (120, 35)
     , (116, 89)
     , (52, 13)
     , (22, 35)
     , (48, 20)
     , (98, 82)
     , (103, 95)
     , (74, 71)
     , (10, 48)
     , (19, 31)
     , (53, 74)
     , (14, 52)
     , (65, 40)
     , (24, 33)
     , (135, 82)
     , (33, 54)
     , (148, 92)
     , (98, 55)
     , (146, 69)
     , (70, 92)
     , (18, 28)
     , (61, 86)
     , (38, 77)
     , (34, 13)
     , (110, 94)
     , (50, 94)
     , (44, 83)
     , (48, 49)
     , (26, 20)
     , (75, 42)
     , (120, 36)
     , (99, 60)
     , (31, 37)
     , (56, 80)
     , (55, 81)
     , (19, 90)
     , (26, 62)
     , (105, 10)
     , (69, 76)
     , (114, 95)
     , (21, 58)
     , (98, 78)
     , (128, 90)
     , (84, 61)
     , (102, 78)
     , (72, 7)
     , (74, 70)
     , (96, 5)
     , (131, 90)
     , (44, 1)
     , (89, 19)
     , (110, 82)
     , (53, 12)
     , (114, 2)
     , (47, 89)
     , (55, 20)
     , (101, 50)
     , (30, 7)
     , (17, 53)
     , (86, 49)
     , (87, 6)
     , (134, 72)
     , (20, 38);

--random generiranje prijava studenata na projekte
insert into prijava_na (id_student, id_projekt, je_prihvacen)
values (35, 29, false)
     , (44, 41, true)
     , (25, 7, false)
     , (104, 2, false)
     , (48, 31, false)
     , (54, 25, false)
     , (118, 35, false)
     , (82, 44, true)
     , (86, 27, true)
     , (93, 18, false)
     , (139, 26, true)
     , (145, 30, false)
     , (105, 32, true)
     , (38, 31, false)
     , (147, 42, false)
     , (27, 16, false)
     , (131, 3, false)
     , (20, 2, true)
     , (83, 1, false)
     , (134, 11, false)
     , (53, 27, true)
     , (41, 9, true)
     , (123, 46, true)
     , (22, 5, false)
     , (68, 37, true)
     , (57, 49, true)
     , (21, 15, true)
     , (132, 20, false)
     , (101, 33, true)
     , (147, 1, false)
     , (148, 30, true)
     , (96, 38, false)
     , (62, 10, true)
     , (72, 48, false)
     , (73, 7, false)
     , (3, 42, false)
     , (11, 34, true)
     , (93, 8, true)
     , (18, 4, false)
     , (62, 7, false)
     , (2, 15, false)
     , (3, 5, true)
     , (81, 18, false)
     , (94, 16, false)
     , (47, 12, false)
     , (89, 45, true)
     , (12, 6, true)
     , (133, 18, true)
     , (11, 38, true)
     , (123, 41, false)
     , (68, 14, false)
     , (78, 15, true)
     , (11, 31, false)
     , (88, 20, false)
     , (55, 42, true)
     , (60, 33, false)
     , (50, 29, false)
     , (72, 15, true)
     , (17, 9, false)
     , (35, 15, true)
     , (6, 14, true)
     , (32, 33, true)
     , (142, 45, true)
     , (99, 16, true)
     , (61, 14, false)
     , (132, 44, true)
     , (143, 17, false)
     , (120, 43, false)
     , (56, 21, false)
     , (52, 34, true)
     , (46, 46, false)
     , (54, 50, true)
     , (99, 47, false)
     , (103, 35, true)
     , (54, 29, false)
     , (109, 6, true)
     , (6, 17, true)
     , (16, 23, true)
     , (128, 3, true)
     , (90, 38, true)
     , (24, 38, true)
     , (91, 24, true)
     , (34, 40, false)
     , (128, 47, false)
     , (78, 1, true)
     , (134, 10, false)
     , (72, 21, true)
     , (78, 42, true)
     , (109, 50, false)
     , (124, 42, true)
     , (56, 34, false)
     , (9, 29, false)
     , (148, 9, false)
     , (109, 16, true)
     , (66, 40, false)
     , (86, 30, false)
     , (138, 19, true)
     , (29, 48, true)
     , (142, 9, true)
     , (134, 42, true)
     , (17, 34, true)
     , (51, 35, true)
     , (57, 18, false)
     , (37, 24, true)
     , (136, 46, false)
     , (16, 19, false)
     , (121, 39, true)
     , (132, 49, true)
     , (38, 41, true)
     , (29, 43, false)
     , (51, 6, false)
     , (145, 20, true)
     , (48, 12, false)
     , (147, 25, false)
     , (103, 49, true)
     , (126, 36, true)
     , (91, 5, true)
     , (150, 42, false)
     , (10, 45, true)
     , (144, 24, false)
     , (89, 5, true)
     , (105, 14, false)
     , (39, 25, false)
     , (47, 29, true)
     , (60, 45, false)
     , (10, 27, false)
     , (61, 6, true)
     , (104, 3, true)
     , (42, 1, true)
     , (91, 30, true)
     , (27, 45, true)
     , (85, 16, true)
     , (49, 31, false)
     , (130, 27, true)
     , (125, 28, false)
     , (128, 6, true)
     , (78, 22, false)
     , (30, 10, false)
     , (57, 31, false)
     , (54, 10, false)
     , (149, 26, false)
     , (7, 48, false)
     , (82, 10, false)
     , (18, 18, true)
     , (35, 17, true)
     , (49, 45, true)
     , (74, 18, false)
     , (70, 32, false)
     , (100, 23, false)
     , (115, 41, false)
     , (34, 32, false)
     , (22, 37, false)
     , (18, 14, true)
     , (25, 23, false)
     , (96, 8, false)
     , (79, 43, true)
     , (140, 12, true)
     , (64, 38, true)
     , (12, 19, false)
     , (145, 6, true)
     , (105, 39, false)
     , (60, 4, false)
     , (113, 42, true)
     , (78, 14, true)
     , (96, 36, false)
     , (36, 48, false)
     , (44, 23, false)
     , (82, 47, false)
     , (108, 10, false)
     , (142, 24, true)
     , (132, 34, true)
     , (126, 11, false)
     , (69, 5, false)
     , (46, 32, true)
     , (146, 42, false)
     , (85, 18, true)
     , (57, 11, true)
     , (68, 28, true)
     , (8, 47, true)
     , (129, 47, false)
     , (133, 27, true)
     , (56, 13, true)
     , (112, 45, true)
     , (64, 40, false)
     , (76, 50, true)
     , (95, 47, true)
     , (58, 2, true)
     , (6, 29, false)
     , (93, 26, false)
     , (33, 42, true)
     , (12, 39, true)
     , (113, 38, true)
     , (65, 48, false)
     , (126, 10, false)
     , (78, 2, true)
     , (36, 44, true)
     , (48, 3, false)
     , (4, 42, false)
     , (62, 18, true)
     , (137, 7, true)
     , (149, 37, true)
     , (53, 48, true)
     , (17, 41, true)
     , (49, 27, true)
     , (42, 10, true)
     , (137, 27, true)
     , (23, 36, false)
     , (75, 41, true)
     , (81, 19, true)
     , (73, 30, true)
     , (116, 31, false)
     , (31, 20, false)
     , (27, 23, false)
     , (13, 27, false)
     , (81, 43, false)
     , (47, 3, true)
     , (134, 41, false)
     , (16, 43, false)
     , (90, 29, true)
     , (96, 22, true)
     , (6, 49, true)
     , (127, 33, true)
     , (76, 25, true)
     , (87, 10, true)
     , (40, 6, false)
     , (80, 34, false)
     , (113, 30, true)
     , (140, 40, true)
     , (86, 2, false)
     , (18, 21, true)
     , (85, 23, true)
     , (17, 5, true)
     , (59, 17, false)
     , (25, 4, true)
     , (143, 50, true)
     , (65, 32, true)
     , (13, 4, false)
     , (123, 19, true)
     , (111, 12, false)
     , (138, 38, true)
     , (54, 33, true)
     , (28, 14, true)
     , (96, 41, false)
     , (69, 47, false)
     , (119, 12, true)
     , (66, 8, false);

--Random generiranje organizatora projekata
insert into je_organizator (id_student, id_projekt)
values (85, 1)
     , (2, 2)
     , (43, 3)
     , (100, 4)
     , (59, 5)
     , (150, 6)
     , (125, 7)
     , (28, 8)
     , (39, 9)
     , (98, 10)
     , (4, 11)
     , (41, 12)
     , (100, 13)
     , (5, 14)
     , (24, 15)
     , (112, 16)
     , (112, 17)
     , (38, 18)
     , (136, 19)
     , (44, 20)
     , (123, 21)
     , (29, 22)
     , (41, 23)
     , (18, 24)
     , (23, 25)
     , (74, 26)
     , (103, 27)
     , (40, 28)
     , (106, 29)
     , (63, 30)
     , (45, 31)
     , (139, 32)
     , (58, 33)
     , (62, 34)
     , (78, 35)
     , (83, 36)
     , (101, 37)
     , (99, 38)
     , (106, 39)
     , (27, 40)
     , (5, 41)
     , (109, 42)
     , (83, 43)
     , (43, 44)
     , (74, 45)
     , (108, 46)
     , (115, 47)
     , (39, 48)
     , (53, 49)
     , (17, 50)
     , (34, 1)
     , (86, 2)
     , (83, 3)
     , (81, 4)
     , (132, 5)
     , (122, 6)
     , (93, 7)
     , (122, 8)
     , (61, 9)
     , (131, 10)
     , (68, 11)
     , (82, 12)
     , (46, 13)
     , (58, 14)
     , (55, 15)
     , (148, 16)
     , (121, 17)
     , (60, 18)
     , (148, 19)
     , (18, 20)
     , (51, 21)
     , (137, 22)
     , (19, 23)
     , (120, 24)
     , (82, 25)
     , (76, 26)
     , (3, 27)
     , (55, 28)
     , (15, 29)
     , (60, 30)
     , (103, 31)
     , (90, 32)
     , (115, 33)
     , (137, 34)
     , (79, 35)
     , (91, 36)
     , (23, 37)
     , (12, 38)
     , (92, 39)
     , (129, 40)
     , (16, 41)
     , (19, 42)
     , (84, 43)
     , (141, 44)
     , (39, 45)
     , (14, 46)
     , (143, 47)
     , (32, 48)
     , (6, 49)
     , (102, 50)
     , (133, 1)
     , (105, 2)
     , (84, 3)
     , (66, 4)
     , (150, 5)
     , (22, 6)
     , (84, 7)
     , (39, 8)
     , (74, 9)
     , (17, 10)
     , (130, 11)
     , (75, 12)
     , (122, 13)
     , (29, 14)
     , (101, 15)
     , (34, 16)
     , (81, 17)
     , (16, 18)
     , (90, 19)
     , (36, 20)
     , (116, 21)
     , (63, 22)
     , (107, 23)
     , (25, 24)
     , (43, 25)
     , (127, 26)
     , (127, 27)
     , (53, 28)
     , (145, 29)
     , (66, 30)
     , (116, 31)
     , (20, 32)
     , (79, 33)
     , (17, 34)
     , (50, 35)
     , (15, 36)
     , (110, 37)
     , (121, 38)
     , (5, 39)
     , (139, 40)
     , (78, 41)
     , (28, 43)
     , (22, 44)
     , (148, 45)
     , (1, 46)
     , (87, 47)
     , (42, 48)
     , (69, 49)
     , (23, 50);