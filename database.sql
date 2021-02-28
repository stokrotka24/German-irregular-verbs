#creating database
CREATE OR REPLACE DATABASE german_learning;
USE german_learning;
CREATE OR REPLACE TABLE irregular_verbs (
    first_form VARCHAR(100) NOT NULL,
    second_form VARCHAR(100) NOT NULL,
    third_form VARCHAR(100) NOT NULL,
    translation VARCHAR(100) NOT NULL,
    PRIMARY KEY (first_form, translation)
);
DROP USER IF EXISTS 'german_connector'@'localhost';
CREATE USER 'german_connector'@'localhost' IDENTIFIED BY 'connector';
GRANT ALL PRIVILEGES ON german_learning.* TO 'german_connector'@'localhost';

#insert basic irregular verbs
INSERT INTO irregular_verbs VALUES('beginnen', 'begann', 'begonnen', 'zaczynać');
INSERT INTO irregular_verbs VALUES('bieten', 'bot', 'geboten', 'oferować');
INSERT INTO irregular_verbs VALUES('bitten', 'bat', 'gebeten', 'prosić');
INSERT INTO irregular_verbs VALUES('bleiben', 'blieb', '(sein) geblieben', 'zostawać (gdzieś)');
INSERT INTO irregular_verbs VALUES('brechen', 'brach', 'gebrochen', 'łamać');
INSERT INTO irregular_verbs VALUES('brennen', 'brannte', 'gebrannt', 'palić się, płonąć');
INSERT INTO irregular_verbs VALUES('bringen', 'brachte', 'gebracht', 'przynosić');
INSERT INTO irregular_verbs VALUES('essen', 'aß', 'gegessen', 'jeść');
INSERT INTO irregular_verbs VALUES('fahren', 'fuhr', '(sein) gefahren', 'jeździć');
INSERT INTO irregular_verbs VALUES('fallen', 'fiel', '(sein) gefallen', 'upadać');

INSERT INTO irregular_verbs VALUES('fangen', 'fing', 'gefangen', 'łapać');
INSERT INTO irregular_verbs VALUES('finden', 'fand', 'gefunden', 'znajdować');
INSERT INTO irregular_verbs VALUES('geben', 'gab', 'gegeben', 'dawać');
INSERT INTO irregular_verbs VALUES('gehen', 'ging', '(sein) gegangen', 'iść');
INSERT INTO irregular_verbs VALUES('genießen', 'genoss', 'genossen', 'rozkoszować się');
INSERT INTO irregular_verbs VALUES('geschehen', 'geschah', '(sein) geschehen', 'wydarzyć się');
INSERT INTO irregular_verbs VALUES('halten', 'hielt', 'gehalten', 'trzymać');
INSERT INTO irregular_verbs VALUES('helfen', 'half', 'geholfen', 'pomagać');
INSERT INTO irregular_verbs VALUES('kennen', 'kannte', 'gekannt', 'znać');
INSERT INTO irregular_verbs VALUES('kommen', 'kam', '(sein) gekommen', 'przychodzić');

INSERT INTO irregular_verbs VALUES('laden', 'lud', 'geladen', 'ładować');
INSERT INTO irregular_verbs VALUES('lassen', 'ließ', 'gelassen', 'zostawiać, pozwalać');
INSERT INTO irregular_verbs VALUES('laufen', 'lief', '(sein) gelaufen', 'biegać');
INSERT INTO irregular_verbs VALUES('lesen', 'las', 'gelesen', 'czytać');
INSERT INTO irregular_verbs VALUES('leiden', 'litt', 'gelitten', 'cierpieć');
INSERT INTO irregular_verbs VALUES('leihen', 'lieh', 'geliehen', 'pożyczać');
INSERT INTO irregular_verbs VALUES('liegen', 'lag', 'gelegen', 'leżeć');
INSERT INTO irregular_verbs VALUES('lügen', 'log', 'gelogen', 'kłamać');
INSERT INTO irregular_verbs VALUES('meiden', 'mied', 'gemieden', 'unikać');
INSERT INTO irregular_verbs VALUES('messen', 'maß', 'gemessen', 'mierzyć');

INSERT INTO irregular_verbs VALUES('nehmen', 'nahm', 'genommen', 'brać');
INSERT INTO irregular_verbs VALUES('nennen', 'nannte', 'genannt', 'nazywać');
INSERT INTO irregular_verbs VALUES('rufen', 'rief', 'gerufen', 'wołać');
INSERT INTO irregular_verbs VALUES('schlafen', 'schlief', 'geschlafen', 'spać');
INSERT INTO irregular_verbs VALUES('schneiden', 'schnitt', 'geschnitten', 'kroić, ciąć');
INSERT INTO irregular_verbs VALUES('schreiben', 'schrieb', 'geschrieben', 'pisać');
INSERT INTO irregular_verbs VALUES('schwimmen', 'schwamm', '(sein) geschwommen', 'pływać');
INSERT INTO irregular_verbs VALUES('sehen', 'sah', 'gesehen', 'widzieć');
INSERT INTO irregular_verbs VALUES('sein', 'war', '(sein) gewesen', 'być');
INSERT INTO irregular_verbs VALUES('singen', 'sang', 'gesungen', 'śpiewać');

INSERT INTO irregular_verbs VALUES('sitzen', 'saß', 'gesessen', 'siedzieć');
INSERT INTO irregular_verbs VALUES('sprechen', 'sprach', 'gesprochen', 'mówić, rozmawiać');
INSERT INTO irregular_verbs VALUES('stechen', 'stach', 'gestochen', 'kłuć');
INSERT INTO irregular_verbs VALUES('stehen', 'stand', 'gestanden', 'stać');
INSERT INTO irregular_verbs VALUES('stehlen', 'stahl', 'gestohlen', 'kraść');
INSERT INTO irregular_verbs VALUES('steigen', 'stieg', '(sein) gestiegen', 'wsiadać');
INSERT INTO irregular_verbs VALUES('sterben', 'starb', '(sein) gestorben', 'umierać');
INSERT INTO irregular_verbs VALUES('tragen', 'trug', 'getragen', 'nosić');
INSERT INTO irregular_verbs VALUES('treffen', 'traf', 'getroffen', 'spotykać');
INSERT INTO irregular_verbs VALUES('treiben', 'trieb', 'getrieben', 'uprawiać (np.sport)');

INSERT INTO irregular_verbs VALUES('treten', 'trat', 'getreten', 'kopać, naciskać');
INSERT INTO irregular_verbs VALUES('trinken', 'trank', 'getrunken', 'pić');
INSERT INTO irregular_verbs VALUES('vergessen', 'vergaß', 'vergessen', 'zapominać');
INSERT INTO irregular_verbs VALUES('verlieren', 'verlor', 'verloren', 'przegrać, stracić');
INSERT INTO irregular_verbs VALUES('wachsen', 'wuchs', '(sein) gewachsen', 'rosnąć');
INSERT INTO irregular_verbs VALUES('waschen', 'wusch', 'gewaschen', 'myć, prać');
INSERT INTO irregular_verbs VALUES('werben', 'warb', 'geworben', 'reklamować, werbować');
INSERT INTO irregular_verbs VALUES('werden', 'wurde', '(sein) geworden', 'stać się, zostać (kimś)');
INSERT INTO irregular_verbs VALUES('ziehen', 'zog', 'gezogen', 'ciągnąć');