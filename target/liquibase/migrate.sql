--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: src/main/resources/liquibase/changelog-master.xml
--  Ran at: 30.01.2023 15:52
--  Against: root@172.19.0.1@jdbc:mysql://localhost:3306/user_leave_tracking?autoReconnect=true&useSSL=false
--  Liquibase version: 4.18.0
--  *********************************************************************

--  Lock Database
UPDATE user_leave_tracking.DATABASECHANGELOGLOCK
SET `LOCKED`    = 1,
    LOCKEDBY    = '192.168.1.100 (192.168.1.100)',
    LOCKGRANTED = NOW()
WHERE ID = 1
  AND `LOCKED` = 0;

--  Changeset liquibase/changelog-2023.xml::13012023 12:00::mustafasipahi
INSERT INTO user(first_name, last_name, phone, last_modified_date, created_date)
VALUES ('Mustafa', 'Sipahi', '5465533993', NOW(), NOW());

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('13012023 12:00', 'mustafasipahi', 'liquibase/changelog-2023.xml', NOW(), 5,
        '8:a61049ce2020aafd6613faceeae03c67', 'sql', '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::13012023 13:00::mustafasipahi
INSERT INTO annual_leave(user_id, count, status, start_date, end_date, created_date)
VALUES (1, 5, 'WAITING_APPROVE', NOW(), NOW(), NOW());

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('13012023 13:00', 'mustafasipahi', 'liquibase/changelog-2023.xml', NOW(), 6,
        '8:e968fe3d4a0febf334cc09992c9b1426', 'sql', '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-1::user (generated)
CREATE TABLE user_leave_tracking.express_keno_draw
(
    id                     BIGINT NOT NULL,
    activeGame             BIT NULL,
    createdDate            datetime NULL,
    drawDate               datetime NULL,
    externalDrawNo         BIGINT NULL,
    lastModifiedDate       datetime NULL,
    sellEndDate            datetime NULL,
    sellStartDate          datetime NULL,
    winningNumbers         VARCHAR(255) NULL,
    winningBonusMultiplier INT NULL,
    CONSTRAINT express_keno_drawPK PRIMARY KEY (id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-1', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 7,
        '8:be34e9d9ad67f08b2d2d1be56a02100d', 'createTable tableName=express_keno_draw', '', 'EXECUTED', NULL, NULL,
        '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-2::user (generated)
CREATE TABLE user_leave_tracking.express_keno_ticket
(
    id                 VARCHAR(255)   NOT NULL,
    amount             DECIMAL(19, 2) NOT NULL,
    bonusMultiplier    BIT            NOT NULL,
    channel            INT            NOT NULL,
    createdDate        datetime NULL,
    earnings           DECIMAL(19, 2) NULL,
    lastModifiedDate   datetime NULL,
    memberNo           BIGINT         NOT NULL,
    multiplier         INT            NOT NULL,
    selections         VARCHAR(255)   NOT NULL,
    sequential         BIT            NOT NULL,
    sgTicketId         BIGINT         NOT NULL,
    status             INT NULL,
    tax                DECIMAL(19, 2) NULL,
    transactionGroupId VARCHAR(255)   NOT NULL,
    wagerDate          datetime       NOT NULL,
    CONSTRAINT express_keno_ticketPK PRIMARY KEY (id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-2', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 8,
        '8:0b57883d3b57e9f9dc87402e2d7f8b44', 'createTable tableName=express_keno_ticket', '', 'EXECUTED', NULL, NULL,
        '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-3::user (generated)
CREATE TABLE user_leave_tracking.express_keno_ticket_draw
(
    draw_no          BIGINT       NOT NULL,
    ticket_id        VARCHAR(255) NOT NULL,
    createdDate      datetime NULL,
    drawDate         datetime     NOT NULL,
    earnings         DECIMAL(19, 2) NULL,
    lastModifiedDate datetime NULL,
    status           INT NULL,
    CONSTRAINT express_keno_ticket_drawPK PRIMARY KEY (draw_no, ticket_id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-3', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 9,
        '8:c6d97c0bde3bbeeb303e16a7c790787f', 'createTable tableName=express_keno_ticket_draw', '', 'EXECUTED', NULL,
        NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-4::user (generated)
CREATE TABLE user_leave_tracking.four_plus_four_draw
(
    id               BIGINT NOT NULL,
    activeGame       BIT NULL,
    createdDate      datetime NULL,
    drawDate         datetime NULL,
    externalDrawNo   BIGINT NULL,
    lastModifiedDate datetime NULL,
    sellEndDate      datetime NULL,
    sellStartDate    datetime NULL,
    winningNumbers   VARCHAR(255) NULL,
    CONSTRAINT four_plus_four_drawPK PRIMARY KEY (id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-4', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 10,
        '8:dcc79293d2bcf6e0761c003fcb0f8769', 'createTable tableName=four_plus_four_draw', '', 'EXECUTED', NULL, NULL,
        '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-5::user (generated)
CREATE TABLE user_leave_tracking.four_plus_four_favorite
(
    id               VARCHAR(255) NOT NULL,
    createdDate      datetime NULL,
    lastModifiedDate datetime NULL,
    member_no        BIGINT       NOT NULL,
    name             VARCHAR(255) NOT NULL,
    numbers          VARCHAR(255) NOT NULL,
    CONSTRAINT four_plus_four_favoritePK PRIMARY KEY (id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-5', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 11,
        '8:38e5efebbae805ff695b873fa8578488', 'createTable tableName=four_plus_four_favorite', '', 'EXECUTED', NULL,
        NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-6::user (generated)
CREATE TABLE user_leave_tracking.four_plus_four_ticket
(
    id                 VARCHAR(255)   NOT NULL,
    amount             DECIMAL(19, 2) NOT NULL,
    channel            INT            NOT NULL,
    createdDate        datetime NULL,
    earnings           DECIMAL(19, 2) NULL,
    lastModifiedDate   datetime NULL,
    memberNo           BIGINT         NOT NULL,
    multiplier         INT            NOT NULL,
    sequential         BIT            NOT NULL,
    sgTicketId         BIGINT         NOT NULL,
    status             INT NULL,
    tax                DECIMAL(19, 2) NULL,
    transactionGroupId VARCHAR(255)   NOT NULL,
    wagerDate          datetime       NOT NULL,
    cancelDate         datetime NULL,
    CONSTRAINT four_plus_four_ticketPK PRIMARY KEY (id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-6', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 12,
        '8:47ed1ed01c7f3b44279d3f400f1ba9a6', 'createTable tableName=four_plus_four_ticket', '', 'EXECUTED', NULL, NULL,
        '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-7::user (generated)
CREATE TABLE user_leave_tracking.four_plus_four_ticket_draw
(
    draw_no          BIGINT       NOT NULL,
    ticket_id        VARCHAR(255) NOT NULL,
    createdDate      datetime NULL,
    drawDate         datetime     NOT NULL,
    earnings         DECIMAL(19, 2) NULL,
    lastModifiedDate datetime NULL,
    status           INT NULL,
    CONSTRAINT four_plus_four_ticket_drawPK PRIMARY KEY (draw_no, ticket_id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-7', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 13,
        '8:2aaf0ad898cb643e88c23267e9f56da2', 'createTable tableName=four_plus_four_ticket_draw', '', 'EXECUTED', NULL,
        NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-8::user (generated)
CREATE TABLE user_leave_tracking.four_plus_four_ticket_selection
(
    id               BIGINT AUTO_INCREMENT NOT NULL,
    ticket_id        VARCHAR(255) NOT NULL,
    createdDate      datetime NULL,
    lastModifiedDate datetime NULL,
    secondSelections VARCHAR(255) NOT NULL,
    selections       VARCHAR(255) NOT NULL,
    CONSTRAINT four_plus_four_ticket_selectionPK PRIMARY KEY (id, ticket_id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-8', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 14,
        '8:2dcf13170326a94ee51c81f282de4f40', 'createTable tableName=four_plus_four_ticket_selection', '', 'EXECUTED',
        NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-9::user (generated)
CREATE TABLE user_leave_tracking.mega_five_thirty_six_draw
(
    id               BIGINT NOT NULL,
    activeGame       BIT NULL,
    createdDate      datetime NULL,
    drawDate         datetime NULL,
    externalDrawNo   BIGINT NULL,
    lastModifiedDate datetime NULL,
    sellEndDate      datetime NULL,
    sellStartDate    datetime NULL,
    winningNumbers   VARCHAR(255) NULL,
    CONSTRAINT mega_five_thirty_six_drawPK PRIMARY KEY (id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-9', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 15,
        '8:b6d6ca173a8e9127f61b66c20677519a', 'createTable tableName=mega_five_thirty_six_draw', '', 'EXECUTED', NULL,
        NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-10::user (generated)
CREATE TABLE user_leave_tracking.mega_five_thirty_six_ticket
(
    id                 VARCHAR(255)   NOT NULL,
    amount             DECIMAL(19, 2) NOT NULL,
    channel            INT            NOT NULL,
    createdDate        datetime NULL,
    earnings           DECIMAL(19, 2) NULL,
    lastModifiedDate   datetime NULL,
    memberNo           BIGINT         NOT NULL,
    multiplier         INT            NOT NULL,
    sequential         BIT            NOT NULL,
    sgTicketId         BIGINT         NOT NULL,
    status             INT NULL,
    tax                DECIMAL(19, 2) NULL,
    transactionGroupId VARCHAR(255)   NOT NULL,
    wagerDate          datetime       NOT NULL,
    cancelDate         datetime NULL,
    CONSTRAINT mega_five_thirty_six_ticketPK PRIMARY KEY (id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-10', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 16,
        '8:2670b3e7e7df557c8f20da35f0522444', 'createTable tableName=mega_five_thirty_six_ticket', '', 'EXECUTED', NULL,
        NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-11::user (generated)
CREATE TABLE user_leave_tracking.mega_five_thirty_six_ticket_draw
(
    draw_no          BIGINT       NOT NULL,
    ticket_id        VARCHAR(255) NOT NULL,
    createdDate      datetime NULL,
    drawDate         datetime     NOT NULL,
    earnings         DECIMAL(19, 2) NULL,
    lastModifiedDate datetime NULL,
    status           INT NULL,
    CONSTRAINT mega_five_thirty_six_ticket_drawPK PRIMARY KEY (draw_no, ticket_id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-11', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 17,
        '8:00113e536262268310b9c4228cdcc637', 'createTable tableName=mega_five_thirty_six_ticket_draw', '', 'EXECUTED',
        NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-12::user (generated)
CREATE TABLE user_leave_tracking.mega_five_thirty_six_ticket_selection
(
    id               BIGINT AUTO_INCREMENT NOT NULL,
    ticket_id        VARCHAR(255) NOT NULL,
    createdDate      datetime NULL,
    lastModifiedDate datetime NULL,
    megaFive         BIT          NOT NULL,
    selections       VARCHAR(255) NOT NULL,
    CONSTRAINT mega_five_thirty_six_ticket_selectionPK PRIMARY KEY (id, ticket_id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-12', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 18,
        '8:935159bf34c0e6728aa1c3409ff2b5f6', 'createTable tableName=mega_five_thirty_six_ticket_selection', '',
        'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-13::user (generated)
CREATE TABLE user_leave_tracking.mega_five_ticket_draw
(
    createdDate      datetime NULL,
    drawDate         datetime     NOT NULL,
    earnings         DECIMAL(19, 2) NULL,
    lastModifiedDate datetime NULL,
    status           INT NULL,
    ticket_id        VARCHAR(255) NOT NULL,
    CONSTRAINT mega_five_ticket_drawPK PRIMARY KEY (ticket_id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-13', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 19,
        '8:63f3d2699a32b7c808a19b739eda5228', 'createTable tableName=mega_five_ticket_draw', '', 'EXECUTED', NULL, NULL,
        '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-14::user (generated)
CREATE TABLE user_leave_tracking.super_keno_draw
(
    id               BIGINT NOT NULL,
    activeGame       BIT NULL,
    createdDate      datetime NULL,
    drawDate         datetime NULL,
    externalDrawNo   BIGINT NULL,
    lastModifiedDate datetime NULL,
    sellEndDate      datetime NULL,
    sellStartDate    datetime NULL,
    winningNumbers   VARCHAR(255) NULL,
    CONSTRAINT super_keno_drawPK PRIMARY KEY (id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-14', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 20,
        '8:09c0da7cc0ed0bd2c4e19da26af7e975', 'createTable tableName=super_keno_draw', '', 'EXECUTED', NULL, NULL,
        '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-15::user (generated)
CREATE TABLE user_leave_tracking.super_keno_favorite
(
    id               VARCHAR(255) NOT NULL,
    createdDate      datetime NULL,
    lastModifiedDate datetime NULL,
    member_no        BIGINT       NOT NULL,
    name             VARCHAR(255) NOT NULL,
    numbers          VARCHAR(255) NOT NULL,
    CONSTRAINT super_keno_favoritePK PRIMARY KEY (id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-15', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 21,
        '8:020b710c5f0796b88c0693630b32e7f6', 'createTable tableName=super_keno_favorite', '', 'EXECUTED', NULL, NULL,
        '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-16::user (generated)
CREATE TABLE user_leave_tracking.super_keno_ticket
(
    id                 VARCHAR(255)   NOT NULL,
    amount             DECIMAL(19, 2) NOT NULL,
    channel            INT            NOT NULL,
    createdDate        datetime NULL,
    earnings           DECIMAL(19, 2) NULL,
    lastModifiedDate   datetime NULL,
    memberNo           BIGINT         NOT NULL,
    multiplier         INT            NOT NULL,
    sequential         BIT            NOT NULL,
    sgTicketId         BIGINT         NOT NULL,
    status             INT NULL,
    tax                DECIMAL(19, 2) NULL,
    transactionGroupId VARCHAR(255)   NOT NULL,
    wagerDate          datetime       NOT NULL,
    cancelDate         datetime NULL,
    selections         VARCHAR(255)   NOT NULL,
    CONSTRAINT super_keno_ticketPK PRIMARY KEY (id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-16', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 22,
        '8:65d5ba073192f6a38f52b64df0196349', 'createTable tableName=super_keno_ticket', '', 'EXECUTED', NULL, NULL,
        '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-17::user (generated)
CREATE TABLE user_leave_tracking.super_keno_ticket_draw
(
    draw_no          BIGINT       NOT NULL,
    ticket_id        VARCHAR(255) NOT NULL,
    createdDate      datetime NULL,
    drawDate         datetime     NOT NULL,
    earnings         DECIMAL(19, 2) NULL,
    lastModifiedDate datetime NULL,
    status           INT NULL,
    CONSTRAINT super_keno_ticket_drawPK PRIMARY KEY (draw_no, ticket_id)
);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-17', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 23,
        '8:c1f0124bee7e686f7b5b05b5e471aedf', 'createTable tableName=super_keno_ticket_draw', '', 'EXECUTED', NULL,
        NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-18::user (generated)
ALTER TABLE user_leave_tracking.express_keno_ticket
    ADD CONSTRAINT `UC_EXPRESS_KENO_TİCKETSGTİCKETID_COL` UNIQUE (sgTicketId);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-18', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 24,
        '8:a35248b53df67896a197321bb06889c5',
        'addUniqueConstraint constraintName=UC_EXPRESS_KENO_TİCKETSGTİCKETID_COL, tableName=express_keno_ticket', '',
        'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-19::user (generated)
ALTER TABLE user_leave_tracking.four_plus_four_ticket
    ADD CONSTRAINT `UC_FOUR_PLUS_FOUR_TİCKETSGTİCKETID_COL` UNIQUE (sgTicketId);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-19', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 25,
        '8:344ef1677f91e59cf9c9fd6746577813',
        'addUniqueConstraint constraintName=UC_FOUR_PLUS_FOUR_TİCKETSGTİCKETID_COL, tableName=four_plus_four_ticket',
        '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-20::user (generated)
ALTER TABLE user_leave_tracking.mega_five_thirty_six_ticket
    ADD CONSTRAINT `UC_MEGA_FİVE_THİRTY_SİX_TİCKETSGTİCKETID_COL` UNIQUE (sgTicketId);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-20', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 26,
        '8:abd7e2472114e3be97c893692971e882',
        'addUniqueConstraint constraintName=UC_MEGA_FİVE_THİRTY_SİX_TİCKETSGTİCKETID_COL, tableName=mega_five_thirty_six_ticket',
        '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-21::user (generated)
ALTER TABLE user_leave_tracking.super_keno_ticket
    ADD CONSTRAINT `UC_SUPER_KENO_TİCKETSGTİCKETID_COL` UNIQUE (sgTicketId);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-21', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 27,
        '8:c2edd3d1ef8b851abb02e53c398f1506',
        'addUniqueConstraint constraintName=UC_SUPER_KENO_TİCKETSGTİCKETID_COL, tableName=super_keno_ticket', '',
        'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-22::user (generated)
ALTER TABLE user_leave_tracking.four_plus_four_favorite
    ADD CONSTRAINT idx_memberNo_name UNIQUE (member_no, name);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-22', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 28,
        '8:9f42a58bdc7d0f046b62a7a503d119b4',
        'addUniqueConstraint constraintName=idx_memberNo_name, tableName=four_plus_four_favorite', '', 'EXECUTED', NULL,
        NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-23::user (generated)
ALTER TABLE user_leave_tracking.super_keno_favorite
    ADD CONSTRAINT idx_memberNo_name UNIQUE (member_no, name);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-23', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 29,
        '8:66baaaaf4692dff80f0d1626d68893d6',
        'addUniqueConstraint constraintName=idx_memberNo_name, tableName=super_keno_favorite', '', 'EXECUTED', NULL,
        NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-24::user (generated)
ALTER TABLE user_leave_tracking.four_plus_four_favorite
    ADD CONSTRAINT idx_memberNo_numbers UNIQUE (member_no, numbers);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-24', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 30,
        '8:80ffa8642343f916e5c19326aa9c4206',
        'addUniqueConstraint constraintName=idx_memberNo_numbers, tableName=four_plus_four_favorite', '', 'EXECUTED',
        NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-25::user (generated)
ALTER TABLE user_leave_tracking.super_keno_favorite
    ADD CONSTRAINT idx_memberNo_numbers UNIQUE (member_no, numbers);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-25', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 31,
        '8:2e687f700cbde519107f5d23b6451829',
        'addUniqueConstraint constraintName=idx_memberNo_numbers, tableName=super_keno_favorite', '', 'EXECUTED', NULL,
        NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-26::user (generated)
CREATE INDEX IDX_MEM_NO ON user_leave_tracking.express_keno_ticket (memberNo);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-26', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 32,
        '8:0ae1c335bf90f7d452e69b7c770ec086', 'createIndex indexName=IDX_MEM_NO, tableName=express_keno_ticket', '',
        'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-27::user (generated)
CREATE INDEX IDX_MEM_NO ON user_leave_tracking.four_plus_four_ticket (memberNo);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-27', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 33,
        '8:e831725ce9d324dd5d82292db0eccb9e', 'createIndex indexName=IDX_MEM_NO, tableName=four_plus_four_ticket', '',
        'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-28::user (generated)
CREATE INDEX IDX_MEM_NO ON user_leave_tracking.mega_five_thirty_six_ticket (memberNo);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-28', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 34,
        '8:c57b5b5fbc5624117bc33e2f1b339d7d', 'createIndex indexName=IDX_MEM_NO, tableName=mega_five_thirty_six_ticket',
        '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-29::user (generated)
CREATE INDEX IDX_MEM_NO ON user_leave_tracking.super_keno_ticket (memberNo);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-29', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 35,
        '8:da0aa855fc251117c97b5c1f7bc40f4e', 'createIndex indexName=IDX_MEM_NO, tableName=super_keno_ticket', '',
        'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-30::user (generated)
ALTER TABLE user_leave_tracking.mega_five_thirty_six_ticket_selection
    ADD CONSTRAINT FK99df9ynk01smsifn2w7t59vxr FOREIGN KEY (ticket_id) REFERENCES user_leave_tracking.mega_five_thirty_six_ticket (id);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-30', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 36,
        '8:94d94c673733d45c8084f08c6a5d864d',
        'addForeignKeyConstraint baseTableName=mega_five_thirty_six_ticket_selection, constraintName=FK99df9ynk01smsifn2w7t59vxr, referencedTableName=mega_five_thirty_six_ticket',
        '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-31::user (generated)
ALTER TABLE user_leave_tracking.four_plus_four_ticket_draw
    ADD CONSTRAINT FKb07urdu42ub7wiusf3uhg6psj FOREIGN KEY (ticket_id) REFERENCES user_leave_tracking.four_plus_four_ticket (id);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-31', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 37,
        '8:e9fcbbecb07a25b9970c5708e48ed242',
        'addForeignKeyConstraint baseTableName=four_plus_four_ticket_draw, constraintName=FKb07urdu42ub7wiusf3uhg6psj, referencedTableName=four_plus_four_ticket',
        '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-32::user (generated)
ALTER TABLE user_leave_tracking.four_plus_four_ticket_selection
    ADD CONSTRAINT FKes61oabcr08dp7oc1wfkqesay FOREIGN KEY (ticket_id) REFERENCES user_leave_tracking.four_plus_four_ticket (id);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-32', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 38,
        '8:4cee616352239494892dd1acf848727b',
        'addForeignKeyConstraint baseTableName=four_plus_four_ticket_selection, constraintName=FKes61oabcr08dp7oc1wfkqesay, referencedTableName=four_plus_four_ticket',
        '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-33::user (generated)
ALTER TABLE user_leave_tracking.super_keno_ticket_draw
    ADD CONSTRAINT FKet0isomc464556w4yd49l0b32 FOREIGN KEY (ticket_id) REFERENCES user_leave_tracking.super_keno_ticket (id);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-33', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 39,
        '8:17301371254a59fc47c9675ccf3f7e09',
        'addForeignKeyConstraint baseTableName=super_keno_ticket_draw, constraintName=FKet0isomc464556w4yd49l0b32, referencedTableName=super_keno_ticket',
        '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-34::user (generated)
ALTER TABLE user_leave_tracking.mega_five_thirty_six_ticket_draw
    ADD CONSTRAINT FKhdo9cjg0qe6v1abfsqg54f56f FOREIGN KEY (ticket_id) REFERENCES user_leave_tracking.mega_five_thirty_six_ticket (id);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-34', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 40,
        '8:2da031bcfe16e1399aefdc20d8b5907c',
        'addForeignKeyConstraint baseTableName=mega_five_thirty_six_ticket_draw, constraintName=FKhdo9cjg0qe6v1abfsqg54f56f, referencedTableName=mega_five_thirty_six_ticket',
        '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-35::user (generated)
ALTER TABLE user_leave_tracking.mega_five_ticket_draw
    ADD CONSTRAINT FKludf2vnynqlw3spqpv5nv7ypb FOREIGN KEY (ticket_id) REFERENCES user_leave_tracking.mega_five_thirty_six_ticket (id);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-35', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 41,
        '8:cf968da4b1e72d4416b250f088f9c697',
        'addForeignKeyConstraint baseTableName=mega_five_ticket_draw, constraintName=FKludf2vnynqlw3spqpv5nv7ypb, referencedTableName=mega_five_thirty_six_ticket',
        '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-36::user (generated)
ALTER TABLE user_leave_tracking.express_keno_ticket_draw
    ADD CONSTRAINT FKslj53ahyk9hvr787hsftta4qc FOREIGN KEY (ticket_id) REFERENCES user_leave_tracking.express_keno_ticket (id);

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-36', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 42,
        '8:bf128bc37210abd4cf5deb434c4db951',
        'addForeignKeyConstraint baseTableName=express_keno_ticket_draw, constraintName=FKslj53ahyk9hvr787hsftta4qc, referencedTableName=express_keno_ticket',
        '', 'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-37::user (generated)
ALTER TABLE user_leave_tracking.annual_leave DROP FOREIGN KEY FKt5o6e261sh3an6ycnyib7qg0j;

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-37', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 43,
        '8:5d210a65e8067ff6080cfa77aa7d5539',
        'dropForeignKeyConstraint baseTableName=annual_leave, constraintName=FKt5o6e261sh3an6ycnyib7qg0j', '',
        'EXECUTED', NULL, NULL, '4.18.0', '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-38::user (generated)
DROP TABLE user_leave_tracking.annual_leave;

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-38', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 44,
        '8:d00c8239cffced85ed4ef5ca2c1c8a6c', 'dropTable tableName=annual_leave', '', 'EXECUTED', NULL, NULL, '4.18.0',
        '5083130228');

--  Changeset liquibase/changelog-2023.xml::1675081959474-39::user (generated)
DROP TABLE user_leave_tracking.user;

INSERT INTO user_leave_tracking.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM,
                                                   `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE,
                                                   DEPLOYMENT_ID)
VALUES ('1675081959474-39', 'user (generated)', 'liquibase/changelog-2023.xml', NOW(), 45,
        '8:b2f2e0038e73df6dbdb9dccc19b8698f', 'dropTable tableName=user', '', 'EXECUTED', NULL, NULL, '4.18.0',
        '5083130228');

--  Release Database Lock
UPDATE user_leave_tracking.DATABASECHANGELOGLOCK
SET `LOCKED`    = 0,
    LOCKEDBY    = NULL,
    LOCKGRANTED = NULL
WHERE ID = 1;

