PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
DROP TABLE IF EXISTS 'domainlist_by_group';
DROP TABLE IF EXISTS 'group';
DROP TABLE IF EXISTS 'domainlist';
DROP TABLE IF EXISTS 'adlist';
CREATE TABLE IF NOT EXISTS "group"
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    name TEXT UNIQUE NOT NULL,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    description TEXT
);
INSERT INTO "group" VALUES(0,1,'Default',1734739048,1734739048,NULL);
INSERT INTO "group" VALUES(1,1,'Amazon Alexa',1694475424,1734739048,'Block YouTube, etc.');
CREATE TABLE domainlist
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type INTEGER NOT NULL DEFAULT 0,
    domain TEXT NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    comment TEXT,
    UNIQUE(domain, type)
);
INSERT INTO domainlist VALUES(2,2,'(\.|^)papertrailapp\.com$',1,1612112538,1734739048,'');
INSERT INTO domainlist VALUES(3,2,'(\.|^)papertrailapps\.com$',1,1612112556,1734739048,'');
INSERT INTO domainlist VALUES(4,2,'(\.|^)amazon\.com$',1,1612191164,1734739048,'');
INSERT INTO domainlist VALUES(5,2,'(\.|^)backblazeb2\.com$',1,1612274703,1734739048,'');
INSERT INTO domainlist VALUES(6,2,'(\.|^)qnap\.com$',1,1612277029,1734739048,'');
INSERT INTO domainlist VALUES(7,2,'(\.|^)apple\.com$',1,1612382535,1734739048,'');
INSERT INTO domainlist VALUES(20,2,'(\.|^)fbcdn\.net$',1,1616032501,1734739048,'Facebook Videos');
INSERT INTO domainlist VALUES(21,0,'click.redditmail.com',1,1617891954,1734739048,'');
INSERT INTO domainlist VALUES(22,0,'t.email.scouting.org',1,1619114791,1734739048,'Added from Query Log');
INSERT INTO domainlist VALUES(23,2,'(\.|^)googlevideo\.com$',1,1619482131,1734739048,'');
INSERT INTO domainlist VALUES(32,0,'skydrivesync.policies.live.net',1,1629297973,1734739048,'Added from Query Log');
INSERT INTO domainlist VALUES(33,1,'mask.icloud.com',1,1632229435,1734739047,'Apple Private Relay');
INSERT INTO domainlist VALUES(34,1,'mask-h2.icloud.com',1,1632229466,1734739047,'Apple Private Relay');
INSERT INTO domainlist VALUES(35,1,'mask.apple-dns.net',1,1632229484,1734739047,'Apple Private Relay');
INSERT INTO domainlist VALUES(41,0,'pubads.g.doubleclick.net',1,1645206313,1734739048,'paramount+');
INSERT INTO domainlist VALUES(42,0,'www.bankofamerica.com',1,1646757808,1734739048,'');
INSERT INTO domainlist VALUES(43,0,'cbsinteractive.hb.omtrdc.net',1,1648674956,1734739048,'');
INSERT INTO domainlist VALUES(44,2,'(\.|^)cbsi\.com$',1,1648675089,1734739048,'');
INSERT INTO domainlist VALUES(89,0,'smetrics.cnn.com',1,1686159062,1734739048,'');
INSERT INTO domainlist VALUES(93,2,'(\.|^)grammarly\.com$',1,1694008793,1734739048,'');
INSERT INTO domainlist VALUES(94,2,'(\.|^)cnn\.com$',1,1697303535,1734739048,NULL);
INSERT INTO domainlist VALUES(95,0,'collector.cdp.cnn.com',1,1697303537,1734739048,NULL);
INSERT INTO domainlist VALUES(130,0,'www.googleapis.com',1,1701814451,1734739048,'Added from Query Log');
INSERT INTO domainlist VALUES(131,2,'(\.|^)aria\.microsoft\.com$',1,1701964011,1734739048,NULL);
INSERT INTO domainlist VALUES(132,2,'(\.|^)magicsw\.com$',1,1701964012,1734739048,NULL);
INSERT INTO domainlist VALUES(133,2,'(\.|^)microsoft\.com$',1,1701964012,1734739048,NULL);
INSERT INTO domainlist VALUES(134,2,'(\.|^)split\.io$',1,1701964013,1734739048,NULL);
INSERT INTO domainlist VALUES(135,2,'(\.|^)windows\.com$',1,1701964013,1734739048,NULL);
CREATE TABLE adlist
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    address TEXT UNIQUE NOT NULL,
    enabled BOOLEAN NOT NULL DEFAULT 1,
    date_added INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    date_modified INTEGER NOT NULL DEFAULT (cast(strftime('%s', 'now') as int)),
    comment TEXT,
    date_updated INTEGER,
    number INTEGER NOT NULL DEFAULT 0,
    invalid_domains INTEGER NOT NULL DEFAULT 0,
    status INTEGER NOT NULL DEFAULT 0
);
INSERT INTO adlist VALUES(1,'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts',1,1612104632,1734739046,'Migrated from /etc/pihole/adlists.list',1734818236,120177,1,2);
INSERT INTO adlist VALUES(4,'https://justdomains.github.io/blocklists/lists/easylist-justdomains.txt',1,1612209536,1734739046,'Added by Updater',1734818236,22066,0,2);
INSERT INTO adlist VALUES(5,'https://justdomains.github.io/blocklists/lists/easyprivacy-justdomains.txt',1,1612209536,1734739046,'Added by Updater',1734818237,20270,0,2);
INSERT INTO adlist VALUES(6,'https://justdomains.github.io/blocklists/lists/adguarddns-justdomains.txt',1,1612209536,1734739046,'Added by Updater',1734818237,48994,0,2);
INSERT INTO adlist VALUES(7,'https://raw.githubusercontent.com/kboghdady/youTube_ads_4_pi-hole/master/youtubelist.txt',1,1612209536,1734739046,'Added by Updater',1734818238,16839,1,2);
INSERT INTO adlist VALUES(8,'https://raw.githubusercontent.com/dfederlein/dnsbl-dfed/master/spotifyads.txt',1,1612209536,1734739046,'Added by Updater',1734818238,37,0,2);
INSERT INTO adlist VALUES(9,'https://raw.githubusercontent.com/hectorm/hmirror/master/data/spam404.com/list.txt',1,1612209536,1734739046,'Added by Updater',1734818239,8141,0,2);
INSERT INTO adlist VALUES(10,'https://raw.githubusercontent.com/hectorm/hmirror/master/data/adaway.org/list.txt',1,1612209536,1734739046,'Added by Updater',1734818240,6540,0,2);
INSERT INTO adlist VALUES(11,'https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt',1,1612209536,1734739046,'Added by Updater',1734818240,2701,0,2);
INSERT INTO adlist VALUES(12,'https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt',1,1612209536,1734739046,'Added by Updater',1734818240,34,0,2);
INSERT INTO adlist VALUES(13,'https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts',1,1612209536,1734739046,'Added by Updater',1734818241,21047,0,2);
INSERT INTO adlist VALUES(15,'https://justdomains.github.io/blocklists/lists/nocoin-justdomains.txt',1,1612209536,1734739046,'Added by Updater',1734818242,720,0,2);
INSERT INTO adlist VALUES(16,'https://urlhaus.abuse.ch/downloads/hostfile/',1,1612209536,1734739046,'Added by Updater',1734818243,394,0,1);
INSERT INTO adlist VALUES(17,'https://osint.digitalside.it/Threat-Intel/lists/latestdomains.txt',1,1612209536,1734739046,'Added by Updater',1734818244,133,0,2);
INSERT INTO adlist VALUES(19,'https://raw.githubusercontent.com/RPiList/specials/master/Blocklisten/Phishing-Angriffe',1,1612209536,1734739046,'Added by Updater',1734818251,0,0,2);
INSERT INTO adlist VALUES(20,'https://raw.githubusercontent.com/RPiList/specials/master/Blocklisten/spam.mails',1,1612209536,1734739046,'Added by Updater',1734818256,0,0,2);
INSERT INTO adlist VALUES(23,'https://raw.githubusercontent.com/Highlander-bdj/youtube_blocklist/main/youtube_blocklist.txt',1,1615990423,1734739046,'Block YouTube (my List)',1734818257,7,0,2);
INSERT INTO adlist VALUES(24,'https://blocklist.sefinek.net/generated/0.0.0.0/sites/youtube.txt',0,1691522468,1734739046,'Block Youtube',NULL,0,0,0);
INSERT INTO adlist VALUES(25,'https://blocklist.sefinek.net/generated/0.0.0.0/social/tiktok.txt',1,1691528921,1734739046,'block ticktok',1734818258,3789,0,2);
INSERT INTO adlist VALUES(26,'https://big.oisd.nl',1,1705963347,1734739046,NULL,1734818260,0,0,2);
INSERT INTO adlist VALUES(27,'https://nsfw.oisd.nl',1,1707769031,1734739046,NULL,1734818262,0,0,2);
CREATE TABLE domainlist_by_group
(
    domainlist_id INTEGER NOT NULL REFERENCES domainlist (id),
    group_id INTEGER NOT NULL REFERENCES "group" (id),
    PRIMARY KEY (domainlist_id, group_id)
);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(1,2,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(2,3,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(3,4,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(4,5,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(5,6,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(6,7,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(7,20,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(8,21,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(9,22,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(10,23,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(11,32,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(12,33,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(13,34,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(14,35,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(15,41,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(16,42,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(17,43,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(18,44,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(19,89,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(20,93,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(21,94,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(22,95,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(23,130,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(24,131,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(25,132,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(26,133,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(27,134,0);
INSERT INTO domainlist_by_group(rowid,domainlist_id,group_id) VALUES(28,135,0);
COMMIT;
